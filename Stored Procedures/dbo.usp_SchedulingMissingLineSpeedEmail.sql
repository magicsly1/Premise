SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		Bryan Eddy
-- ALTER date: 6/12/17
-- Description:	Send email of missing line speeds to Process Engineers
-- Version:		8
-- Update:		Updated to pull from [NAACAB-SCH01] 
-- =============================================
CREATE PROC [dbo].[usp_SchedulingMissingLineSpeedEmail]
AS
SET NOCOUNT ON;

DECLARE @ErrorNumber INT = ERROR_NUMBER();
DECLARE @ErrorLine INT = ERROR_LINE();

BEGIN TRY

    /*******************************************************************
First query is to determine what setups are either not present in the setup database or
what setups are shutoff in the setup db that is in active items.
All setups in query following are in activec items.
*********************************************************************
**********************************************************************/


    /*******************************************************************
Query is to determine what items have no run speed in the setup db.
*********************************************************************
**********************************************************************/



    IF OBJECT_ID(N'tempdb..#SetupLocation', N'U') IS NOT NULL
        DROP TABLE #SetupLocation;
    SELECT DISTINCT
        Item,
        Item_Description,
        Setup,
        PrimaryAlt,
        LineSpeed,
        MachineNumber,
        G.DepartmentCode
    INTO #SetupLocation
    FROM Setup.vSetupLineSpeed K
        INNER JOIN AFLPRD_BOMOpSeq_CAB G
            ON G.TrueOperationCode = K.Setup
    WHERE G.SendtoAps = 'Y';


    CREATE NONCLUSTERED INDEX TEMP_Index
    ON #SetupLocation
    (
        Item,
        Setup
    )
    INCLUDE
    (
        LineSpeed,
        ITEM_DESCRIPTION,
        MachineNumber,
        DepartmentCode
    );
    --)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]




    /*******************************************************************
Determine what items and sub-items are located in open orders.
*********************************************************************
**********************************************************************/


    --Check if any open item requests need commercial approval
    IF OBJECT_ID(N'tempdb..#Results', N'U') IS NOT NULL
        DROP TABLE #Results;

    WITH cteOrders (ItemNumber, ItemDesc, ScheduleDate, SalesOrder, SalesOrderLineNumber)
    AS (SELECT DISTINCT
            [Item Number],
            [Item Description],
            [Schedule Date],
            X.[Sales Order],
            X.[Line No]
        FROM
        (
            SELECT G.[Item Number],
                   G.[Item Description],
                   MIN([Schedule Date]) OVER (PARTITION BY [Item Number]) Max_Schedule_Date,
                   [Schedule Date],
                   G.[Sales Order],
                   G.[Line No]
            FROM Premise.dbo.AFLPRD_ORDDTLREPT_UPLOAD_CAB G
        --WHERE [Job Status] NOT IN  ('CLOSED', 'COMPLETE','Cancelled')
        ) X
    --WHERE Max_Schedule_Date = [Schedule Date]
    ),
         cteMissingSetupOrders
    AS (SELECT DISTINCT
            FinishedGood,
            K.Item,
            K.Item_Description,
            ScheduleDate,
            AssemblyItemNumber,
            Setup,
            Make_Buy,
            K.PrimaryAlt,
            DepartmentCode,
            cteOrders.SalesOrder,
            SalesOrderLineNumber,
            MIN(ScheduleDate) OVER (PARTITION BY Setup) Max_SechuduleDate,
            K.MachineNumber --, ROW_NUMBER() OVER (PARTITION BY Setup ORDER BY setup,G.FinishedGood) RowNumber
        FROM cteOrders
            CROSS APPLY fn_ExplodeBOM(cteOrders.ItemNumber) G
            INNER JOIN #SetupLocation K
                ON G.AssemblyItemNumber = K.Item
            INNER JOIN AFLPRD_INVSysItemCost_CAB B
                ON B.ItemNumber = K.ITEM
        WHERE B.Make_Buy = 'MAKE'
              AND K.MachineNumber IS NULL
              AND LEFT(ITEM, 3)NOT IN ( 'WTC', 'DNT' )
              AND LEFT(setup, 1)NOT IN ( 'k', 'Q', 'O', 'I' )
              AND setup NOT IN ( 'R696', 'R093', 'PQC', 'pk01', 'SK01' )
              AND setup NOT LIKE 'm00[4-9]'),
         cteConsolidatedMissingSetupOrders
    AS (SELECT *,
               COUNT(SalesOrder) OVER (PARTITION BY cteMissingSetupOrders.Setup) SoLinesMissingSetups --Determine the amount of sales order affected by missing setups
        FROM cteMissingSetupOrders
         --WHERE	
         )
    SELECT DISTINCT
        FinishedGood,
        Item,
        Item_Description ItemDesc,
        ScheduleDate,
        AssemblyItemNumber,
        Setup,
        PrimaryAlt,
        DepartmentCode,
        MachineNumber,
        SoLinesMissingSetups
    INTO #Results
    FROM cteConsolidatedMissingSetupOrders
    WHERE Max_SechuduleDate = ScheduleDate --  item = Max_Item = 1 /* To get just max item another CTE will have to be used*/
    ORDER BY ScheduleDate;

    --SELECT *
    --FROM #Results

   -- SELECT *
    --FROM [NAACAB-SCH01].PlanetTogether_Data_Prod.Setup.[vMissingSetupsUnion];

    --Add new missing setups
    INSERT INTO [NAACAB-SCH01].PlanetTogether_Data_Prod.Setup.MissingSetups
    (
        Setup
    )
    SELECT DISTINCT
        G.Setup
    FROM #Results G
        LEFT JOIN [NAACAB-SCH01].PlanetTogether_Data_Prod.Setup.MissingSetups K
            ON K.Setup = G.Setup
    WHERE K.Setup IS NULL;

    --Update existing records with the most recent date of the apperance
    UPDATE K
    SET K.DateMostRecentAppearance = GETDATE()
    FROM [NAACAB-SCH01].PlanetTogether_Data_Prod.Setup.MissingSetups K
        INNER JOIN #Results J
            ON K.Setup = J.Setup;

    --Results to populate the email table
    IF OBJECT_ID(N'tempdb..#FinalResults', N'U') IS NOT NULL
        DROP TABLE #FinalResults;
    SELECT J.*,
           DATEDIFF(dd, K.DateCreated, K.DateMostRecentAppearance) DaysMissing
    INTO #FinalResults
    FROM [NAACAB-SCH01].PlanetTogether_Data_Prod.Setup.MissingSetups K
        INNER JOIN #Results J
            ON K.Setup = J.Setup
    ORDER BY J.ScheduleDate,
             DaysMissing DESC;

    --SELECT *
    --FROM #Results

    DECLARE @numRows INT;
    DECLARE @Receipientlist VARCHAR(1000);
    DECLARE @BlindRecipientlist VARCHAR(1000);

    SELECT @numRows = COUNT(*)
    FROM #Results;


    SET @Receipientlist = (STUFF(
                           (
                               SELECT ';' + UserEmail
                               FROM tblConfiguratorUser G
                                   INNER JOIN Users.UserResponsibility K
                                       ON G.UserID = K.UserID
                               WHERE K.ResponsibilityID = 1
                               FOR XML PATH('')
                           ),
                           1,
                           1,
                           ''
                                )
                          );

    SET @Receipientlist = @Receipientlist + ';' + (STUFF(
                                                   (
                                                       SELECT ';' + UserEmail
                                                       FROM tblConfiguratorUser G
                                                           INNER JOIN Users.UserResponsibility K
                                                               ON G.UserID = K.UserID
                                                       WHERE K.ResponsibilityID = 4
                                                       FOR XML PATH('')
                                                   ),
                                                   1,
                                                   1,
                                                   ''
                                                        )
                                                  );

    SET @BlindRecipientlist = 'Bryan.Eddy@aflglobal.com';

    PRINT @Receipientlist;


    DECLARE @body1 VARCHAR(MAX);
    DECLARE @subject VARCHAR(MAX);
    DECLARE @query VARCHAR(MAX) = N'SELECT * FROM tempdb..#Results;';
    SET @subject = 'Missing Setup Line Speeds for Open Orders ' + CAST(GETDATE() AS NVARCHAR);
    SET @body1
        = 'There are  ' + CAST(@numRows AS NVARCHAR)
          + ' items that are missing setup line speeds with open orders.  Please review.' + CHAR(13) + CHAR(13);

    DECLARE @tableHTML NVARCHAR(MAX);
    IF @numRows > 0
    BEGIN

        SET @tableHTML
            = N'<H1>Missing Setup Line Speed Report</H1>'
              + N'<H2 span style=''font-size:16.0pt;font-family:"Calibri","sans-serif";color:#EB3814''>Items with the setups below will be unable to schedule.</H2>'
              +
        --N'<H2 style = ''color: EB3814''>' +
        N'<p>'           + @body1 + '</p>'
              + N'<p class=MsoNormal><span style=''font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D''>'
              + N'<table border="1">' + N'<tr>' + '<th>Days Missing</th><th># Affected SO Lines</th>'
              + '<th>FinishedGood</th><th>Item</th>' + N'<th>ItemDesc</th><th>ScheduleDate</th>'
              + N'<th>Setup</th><th>Atlernate</th><th>DepartmentCode</th>' + '</tr>'
              + CAST(
                (
                    SELECT td = DaysMissing,
                           '',
                           td = SoLinesMissingSetups,
                           '',
                           td = FinishedGood,
                           '',
                           td = Item,
                           '',
                           td = ItemDesc,
                           '',
                           td = ScheduleDate,
                           '',
                           td = Setup,
                           '',
                           td = PrimaryAlt,
                           '',
                           td = DepartmentCode
                    FROM #FinalResults
                    FOR XML PATH('tr'), TYPE
                ) AS NVARCHAR(MAX)) + N'</table>';


        EXEC msdb.dbo.sp_send_dbmail --@recipients = @Receipientlist,
                                     @recipients = 'bryan.eddy@aflglobal.com;',
                                     --@blind_copy_recipients =  @BlindRecipientlist, --@ReceipientList
                                     @subject = @subject,
                                     @body = @tableHTML,
                                     @body_format = 'HTML';
    END;

END TRY
BEGIN CATCH

    PRINT 'Actual error number: ' + CAST(@ErrorNumber AS VARCHAR(10));
    PRINT 'Actual line number: ' + CAST(@ErrorLine AS VARCHAR(10));

    THROW;
END CATCH;



GO
