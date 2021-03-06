CREATE TABLE [dbo].[AFLPRD_preorders_PREACTOR_SNF]
(
[Run Date] [datetime] NULL,
[Order Line ID] [int] NULL,
[Holds] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Header Hold Name] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line Hold Name] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Schedule Date] [datetime] NULL,
[Customer Name] [varchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cust Number] [int] NULL,
[Order Line] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item Number] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item Description] [varchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Qty] [real] NULL,
[Order Qty Primary UOM] [real] NULL,
[Shipped Qty] [int] NULL,
[Shipped Qty Primary UOM] [real] NULL,
[Order UOM] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Primary UOM] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Job Number] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Job Status] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Completed Qty] [int] NULL,
[Completed Qty Primary UOM] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Type] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Request Date] [datetime] NULL,
[Promise Date] [datetime] NULL,
[Org Code] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cat Info] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Source Type] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item Type] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Balance] [real] NULL,
[Schedule Approved] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CSR] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line Create Date] [datetime] NULL,
[Booked Date] [datetime] NULL,
[Entry Status] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipSet] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Mult Org ShipSet] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Reserved qty] [real] NULL,
[Reserved qty Primary UOM] [real] NULL,
[Net Open Qty] [real] NULL,
[Net Open Qty Primary UOM] [real] NULL,
[Product Group] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Scheduler] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Primary Alt] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber Vendor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Forecast Comments] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ship to Class] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Forecast] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Forecast Desc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateInserted] [datetime] NULL CONSTRAINT [DF_AFLPRD_preorders_PREACTOR_SNF_DateInserted] DEFAULT (getdate()),
[WOP Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Insert OP Seq] [smallint] NULL
) ON [PRIMARY]
GO
