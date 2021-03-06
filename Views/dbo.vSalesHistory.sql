SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/*
Author:		Bryan Eddy
Desc:		Show sales history to various applications
Date:		1/23/2018
Version:	3
Update:		3 Removed the criteria to remove duplicates.  Duplicates are now being deleted from the data.

*/

/* TO DO : Aggregate by So Line*/
CREATE VIEW [dbo].[vSalesHistory]
AS
WITH cteSales
AS(
	SELECT DISTINCT TRANSACTION_DATE AS DATE, BILL_TO_NAME AS CUSTOMER, ITEM_NUMBER, ITEM_DESCRIPTION,ORDER_NUMBER AS SO_NUMBER,REVENUE, SO_LINE_NUMBER
	,PRIMARY_QUANTITY AS QUANTITY
	, PRIMARY_UOM_CODE AS UOM
	,CURR_MATERIAL_COST, CURR_RESOURCE_COST, CURR_OVERHEAD_COST
	FROM Oracle.MarginRevenueExtractSalesHistory
) 
--,cteNormalizedSalesHistory
--AS(
	SELECT *,  CASE WHEN QUANTITY <> 0 THEN ROUND(REVENUE/QUANTITY,5)  ELSE 0 END PricePerUOM
	FROM cteSales k 
--)
--SELECT SUM(S.REVENUE) REVENUE, SUM(S.QUANTITY) QUANTITY, SUM(S.CURR_MATERIAL_COST) CURR_MATERIAL_COST, SUM(S.CURR_RESOURCE_COST) CURR_RESOURCE_COST, SUM(S.CURR_OVERHEAD_COST) CURR_OVERHEAD_COST
--,S.DATE, S.CUSTOMER, S.ITEM_NUMBER,S.ITEM_DESCRIPTION,S.SO_NUMBER,S.SO_LINE_NUMBER,S.UOM,S.PricePerUOM
--FROM cteNormalizedSalesHistory S
--GROUP BY S.DATE, S.CUSTOMER, S.ITEM_NUMBER,S.ITEM_DESCRIPTION,S.SO_NUMBER,S.SO_LINE_NUMBER,S.UOM,S.PricePerUOM


GO
