CREATE TABLE [dbo].[AFLPRD_po_so_PREACTOR_SNF]
(
[Item_Number] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Purchase_Order_Ln_Shp] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quantity_Allocated] [real] NULL,
[Sales_Order_Ln] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Shop_Order_Status] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[End_SO_LN] [real] NULL,
[S O_Item] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S O_Qty] [int] NULL,
[S O_Mult] [smallint] NULL,
[S O_UOM] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S O_Schd_Ship] [datetime] NULL,
[Customer_Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Set_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Set_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Shop_ID] [int] NULL,
[Spec_Number] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Mult_Number] [int] NULL,
[Mult_Length] [int] NULL,
[Mult_UOM] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Tolerence] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Reel_Size] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line_Spec] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_Machine] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SPC_Job] [int] NULL,
[Schd_Start_Date] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Schd_Complete_Date] [datetime] NULL,
[Prt_Paper] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Printer] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Completed_Qty] [int] NULL,
[Completed_Cuts] [int] NULL,
[PO] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Internal_Promise_Date] [datetime] NULL,
[Created_by] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Collection] [int] NULL,
[Entry_Date] [datetime] NULL,
[S O_Item_Desc] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S O_Item_UOM] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S O_Weight] [real] NULL,
[S O_Weight_UOM] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[S O_Prod_Cat] [varchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inv_Item_Desc] [varchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inv_Item_UOM] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inv_Weight] [real] NULL,
[Inv_Weight_UOM] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Inv_Prod_Cat] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateInserted] [datetime] NULL CONSTRAINT [DF_AFLPRD_po_so_PREACTOR_SNF_DateInserted] DEFAULT (getdate())
) ON [PRIMARY]
GO
