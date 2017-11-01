CREATE TABLE [dbo].[Premise_Cable_Shipments]
(
[ORG_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BUSINESS_UNIT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TRANSACTION_TYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORDER_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SO_LINE_NUMBER] [int] NOT NULL,
[INVOICE_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INV_LINE_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSACTION_DATE] [date] NULL,
[TRANSACTION_PERIOD] [date] NULL,
[ITEM_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_DESCRIPTION] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_CLASS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_CATEGORY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_STATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_COUNTRY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BILL_TO_POSTAL_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_CLASS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_TERRITORY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_STATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_COUNTRY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_POSTAL_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UNIT_OF_MEASURE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REVENUE] [decimal] (18, 6) NULL,
[QUANTITY] [decimal] (18, 4) NULL,
[CATEGORY1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CATEGORY5] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CURR_MATERIAL_COST] [money] NULL,
[CURR_RESOURCE_COST] [money] NULL,
[CURR_OVERHEAD_COST] [money] NULL,
[CURR_OUTSIDE_PROCESSING_COST] [money] NULL,
[ACTUAL_MATERIAL_COST] [money] NULL,
[ACTUAL_RESOURCE_COST] [money] NULL,
[ACTUAL_OVERHEAD_COST] [money] NULL,
[ACTUAL_OUTSIDE_PROCESSING_COST] [money] NULL,
[SCHEDULING_APPROVAL] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AGENT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AFL_ACCOUNT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AFL_NATIONAL] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INSIDE_SALES] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PURCHASE_ORDER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EXTRACT_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BOOKED_DATE] [date] NULL,
[SCHEDULE_PERIOD] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SALES_CHANNEL] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REQUEST_DATE] [date] NULL,
[PROMISE_DATE] [date] NULL,
[ORDER_TYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PARTIAL_ALLOWED] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RESERVATION_FLAG] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_CITY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FOB_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FREIGHT_TERMS_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HOLD_FLAG] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MULTI_ORG_SHIP_SET] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MAKE_BUY_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_SET_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_LINE_FREIGHT_CARRIER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCHEDULE_APPROVAL_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_LINE_CREATE_DATE] [date] NULL,
[QTY_IN_LBS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUSTOMER_UOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPECIFICATION] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QUOTE_NUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NEW_PRODUCT] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NEW_PRODUCT_CATEGORY] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ACTUAL_COST_UPDATE_DATE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRIMARY_QUANTITY] [decimal] (12, 4) NULL,
[PRIMARY_UOM_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INVOICE_SOURCE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QUOTE_TYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DATA_SOURCE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NEW_PRODUCT_TYPE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMENTS] [varchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CURR_MATERIAL_OVERHEAD_COST] [money] NULL,
[ACTUAL_MATERIAL_OVERHEAD_COST] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Number] [int] NOT NULL IDENTITY(1, 1),
[FORECAST_DESCRIPTION] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FORECAST_DESIGNATOR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Premise_Cable_Shipments] ADD CONSTRAINT [PK_Premise_Cable_Shipments] PRIMARY KEY CLUSTERED  ([ORDER_NUMBER], [SO_LINE_NUMBER], [INVOICE_NUMBER], [INV_LINE_NUMBER]) ON [PRIMARY]
GO
