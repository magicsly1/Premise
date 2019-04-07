SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/*Pass comma delimted OrderId's to get true operatoin code*/

CREATE PROC [Schedule].[usp_GetTrueOperationCodeBatchRun]
    @OrderIds NVARCHAR(MAX)

--Get the True Operation Codes and Items for each Order
AS
SET NOCOUNT ON;

--declare @OrderIds NVARCHAR(MAX) = '40119,40120,40121,40110,40111,40112,40113,40114,40115,40116,40117,40118,40105,40106,40107,40108,40109,40098,40099,40100,40101,40102,40103,40104,40090,40091,40092,40093,40094,40095,40096,40097,40085,40086,40087,40088,40089,40080,40081,40082,40083,40084,40070,40071,40072,40073,40074,40075,40076,40077,40078,40079,40063,40064,40065,40066,40067,40068,40069,40056,40057,40058,40059,40060,40061,40062,40047,40048,40049,40050,40051,40052,40053,40054,40055,40039,40040,40041,40042,40043,40044,40045,40046,40034,40035,40036,40037,40038,40026,40027,40028,40029,40030,40031,40032,40033,40018,40019,40020,40021,40022,40023,40024,40025,40011,40012,40013,40014,40015,40016,40017,40002,40003,40004,40005,40006,40007,40008,40009,40010,39996,39997,39998,39999,40000,40001,39988,39989,39990,39991,39992,39993,39994,39995,39981,39982,39983,39984,39985,39986,39987,39974,39975,39976,39977,39978,39979,39980,39968,39969,39970,39971,39972,39973,39960,39961,39962,39963,39964,39965,39966,39967,39953,39954,39955,39956,39957,39958,39959,39946,39947,39948,39949,39950,39951,39952,39938,39939,39940,39941,39942,39943,39944,39945,39932,39933,39934,39935,39936,39937,39925,39926,39927,39928,39929,39930,39931,39915,39916,39917,39918,39919,39920,39921,39922,39923,39924,39908,39909,39910,39911,39912,39913,39914,39902,39903,39904,39905,39906,39907,39892,39893,39894,39895,39896,39897,39898,39899,39900,39901,39885,39886,39887,39888,39889,39890,39891,39879,39880,39881,39882,39883,39884,39872,39873,39874,39875,39876,39877,39878,39866,39867,39868,39869,39870,39871,39861,39862,39863,39864,39865,39854,39855,39856,39857,39858,39859,39860,39851,39852,39853,39845,39846,39847,39848,39849,39850,39839,39840,39841,39842,39843,39844,39834,39835,39836,39837,39838,39831,39832,39833,39830,39825,39826,39827,39828,39815,39816,39807,39808,39809,39810,39801,39802,39804,39784,39771,39752,39745,39674,39675,39613,39614,39615,39616,39600,39599,39592,39591,39589,39559,39558,39553,39552,39551,39546,39545,39544,39486,39363,39306,39189,39092,0'
DECLARE @ItemNumber NVARCHAR(50)
DECLARE @OrderId INT
DECLARE	@Orders TABLE(
OrderId INT,
ItemNumber NVARCHAR(50)
)
INSERT INTO @Orders(ItemNumber, OrderId)
SELECT s.[Oracle Part No], s.[Order ID]
FROM dbo.SDF_SplitString(@OrderIds, ',')  i
INNER JOIN dbo.[New Orders (Premise) to Transfer to SS] s ON i.part = s.[Order ID]
LEFT JOIN schedule.OrderProcessItems T ON T.OrderId = s.[Order ID]
WHERE T.OrderId IS NULL


DECLARE @Order_Cursor CURSOR;

BEGIN

    SET @Order_Cursor = CURSOR FOR
    SELECT OrderId, ItemNumber
    FROM @Orders

	PRINT 'Procedure started'

    OPEN @Order_Cursor;
    FETCH NEXT FROM @Order_Cursor
    INTO @OrderID,
         @ItemNumber;

	
    WHILE @@FETCH_STATUS = 0
    BEGIN

	PRINT CAST(@OrderID AS NVARCHAR(50)) + ' ' + @ItemNumber

        EXEC Schedule.usp_GetTrueOperationCodes @ItemNumber, @OrderID;
        FETCH NEXT FROM @Order_Cursor
        INTO @OrderID,
             @ItemNumber;

    END;
    CLOSE @Order_Cursor;
    DEALLOCATE @Order_Cursor;
END;

GO
