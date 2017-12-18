CREATE TABLE [dbo].[SalesHistory_BI_Data_TEMP]
(
[BU] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ORG] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CALENDAR_QUARTER] [smallint] NULL,
[FISCAL_QUARTER] [smallint] NULL,
[Month] [smallint] NULL,
[DATE] [varchar] (120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUSTOMER_CLUSTER] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUSTOMER] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AGENT] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUSTOMER_CLASS] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUSTOMER_CATEGORY] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TERRITORY_MARKET] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MARKET] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CLUSTER_ACCOUNT] [int] NULL,
[SHIP_TO_STATE] [varchar] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_COUNTRY] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SHIP_TO_POSTAL_CODE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_NUMBER] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ITEM_DESCRIPTION] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REVENUE] [real] NOT NULL,
[QUANTITY] [real] NOT NULL,
[UOM] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_NUMBER] [int] NOT NULL,
[SO_LINE] [real] NOT NULL,
[INVOICE_NUMBER] [int] NULL,
[INVOICE_LINE] [int] NULL,
[CSR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PRODUCT_CATEGORY] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SO_LINE_ID] [int] NOT NULL IDENTITY(1, 1),
[DateInserted] [datetime] NULL
) ON [PRIMARY]
GO