CREATE TABLE [dbo].[rp_revenue_margin_extract_POBI_AllHistory]
(
[ORG_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BUSINESS_UNIT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TRANSACTION_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORDER_NUMBER] [int] NULL,
[SO_LINE_NUMBER] [int] NULL,
[INVOICE_NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV_LINE_NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TRANSACTION_DATE] [datetime] NULL,
[TRANSACTION_PERIOD] [datetime] NULL,
[ITEM_NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_DESCRIPTION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_NUMBER] [int] NULL,
[BILL_TO_CLASS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_CATEGORY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_STATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_COUNTRY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_POSTAL_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_NUMBER] [int] NULL,
[SHIP_TO_CLASS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_TERRITORY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_NAME] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_STATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_COUNTRY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_POSTAL_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UNIT_OF_MEASURE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REVENUE] [decimal] (18, 6) NULL,
[QUANTITY] [decimal] (18, 4) NULL,
[CATEGORY1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CURR_MATERIAL_COST] [money] NULL,
[CURR_RESOURCE_COST] [money] NULL,
[CURR_OVERHEAD_COST] [money] NULL,
[CURR_OUTSIDE_PROCESSING_COST] [money] NULL,
[ACTUAL_MATERIAL_COST] [money] NULL,
[ACTUAL_RESOURCE_COST] [money] NULL,
[ACTUAL_OVERHEAD_COST] [money] NULL,
[ACTUAL_OUTSIDE_PROCESSING_COST] [money] NULL,
[SCHEDULING_APPROVAL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AGENT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AFL_ACCOUNT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AFL_NATIONAL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INSIDE_SALES] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PURCHASE_ORDER] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXTRACT_DATE] [datetime] NULL,
[BOOKED_DATE] [datetime] NULL,
[SCHEDULE_PERIOD] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SALES_CHANNEL] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REQUEST_DATE] [datetime] NULL,
[PROMISE_DATE] [datetime] NULL,
[ORDER_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PARTIAL_ALLOWED] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RESERVATION_FLAG] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_CITY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOB_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREIGHT_TERMS_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HOLD_FLAG] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MULTI_ORG_SHIP_SET] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MAKE_BUY_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_SET_NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_LINE_FREIGHT_CARRIER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCHEDULE_APPROVAL_DATE] [datetime] NULL,
[SO_LINE_CREATE_DATE] [datetime] NULL,
[QTY_IN_LBS] [float] NULL,
[CUSTOMER_UOM] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPECIFICATION] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QUOTE_NUMBER] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NEW_PRODUCT] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NEW_PRODUCT_CATEGORY] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTUAL_COST_UPDATE_DATE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRIMARY_QUANTITY] [decimal] (18, 5) NULL,
[PRIMARY_UOM_CODE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVOICE_SOURCE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QUOTE_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DATA_SOURCE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NEW_PRODUCT_TYPE] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENTS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CURR_MATERIAL_OVERHEAD_COST] [money] NULL,
[ACTUAL_MATERIAL_OVERHEAD_COST] [money] NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_rp_revenue_margin_extract_POBI_AllHistory] ON [dbo].[rp_revenue_margin_extract_POBI_AllHistory] ([ITEM_NUMBER]) ON [PRIMARY]
GO
