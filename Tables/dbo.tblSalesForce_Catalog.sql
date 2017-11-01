CREATE TABLE [dbo].[tblSalesForce_Catalog]
(
[CatalogCode] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Base] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Weight_kg_per_m] [decimal] (10, 5) NULL,
[DesignTypeDesc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Jacket] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TBType] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TBDescription] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NominalOD] [decimal] (6, 3) NULL,
[NumSubFillers] [int] NULL,
[NumSubPositions] [int] NULL,
[CablePasses] [tinyint] NULL,
[BaseID] [int] NULL,
[BaseCost] [decimal] (10, 5) NULL,
[FiberCount] [smallint] NULL,
[UnitOD] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OracleItem] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COLOR__c] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LoadedBaseCost] [decimal] (10, 5) NULL,
[Armored] [bit] NULL,
[Boxed] [bit] NULL,
[BoxedLength_FT] [smallint] NULL,
[DesignTypeID] [smallint] NULL,
[DateCreated] [datetime] NULL CONSTRAINT [DF_tblSalesForce_Catalog_DateCreated] DEFAULT (getdate()),
[Fiber_Type__c] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Armor_Type__c] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Armor_Type__c] DEFAULT (N'Non-Armored'),
[Packaging__c] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Packaging__c] DEFAULT (N'Reel'),
[UOM__c] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_UOM__c] DEFAULT (N'Meters'),
[Stock__c] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Stock__c] DEFAULT ('No'),
[Lead_Time_ID__c] [int] NULL,
[ImageURL__c] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Product_Spec_Link__c] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Min_Order_Quantity__c] [int] NULL,
[Print_Type__c] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Print_Type__c] DEFAULT (N'Unprinted'),
[Product_Quote_Description__c] [nvarchar] (315) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ArmorJacket] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FiberID] [int] NULL,
[TBLetter] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FinishedCableColor] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FurcationTube] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SetupID] [int] NULL,
[Non_Standard] [bit] NULL,
[Active] [bit] NULL,
[Price] [decimal] (18, 6) NULL,
[ProdLevel1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_ProdLevel1] DEFAULT ('Fiber Optic Cable'),
[ProdLevel2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_ProdLevel2] DEFAULT ('Premise'),
[ProdLevel3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_tblSalesForce_Catalog_ID] DEFAULT (newid()),
[Subunit_Color_Position__c] [tinyint] NULL CONSTRAINT [DF_tblSalesForce_Catalog_Postion_Inner_Jacket_Color] DEFAULT ((11)),
[Jacket_Color_Position__c] [tinyint] NULL CONSTRAINT [DF_tblSalesForce_Catalog_Postion_Outer_Jacket_Color] DEFAULT ((10)),
[Print_Position__c] [tinyint] NULL CONSTRAINT [DF_tblSalesForce_Catalog_Poistion_Print] DEFAULT ((9)),
[Quoted_Product__c] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Quoted_Product__c] DEFAULT ('TRUE'),
[Non_Standard_Design__c] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Distributor_Price_List__c] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Distributor_Price_List__c] DEFAULT ('No'),
[Minimum_Order_Multiple__c] [int] NULL CONSTRAINT [DF_tblSalesForce_Catalog_Minimum_Order_Multiple__c] DEFAULT ((1)),
[Override__c] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Override__c] DEFAULT ('TRUE'),
[Fiber_Type_Config__c] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber_Count_Config__c] [smallint] NULL,
[Status__c] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Status__c] DEFAULT ('Inactive'),
[Jacket_Print__c] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Loaded_Base_Cost_Fiber_Included__c] [decimal] (10, 5) NULL,
[Premise_Design_Program_Synch_ID] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Configuration__c] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblSalesForce_Catalog_Configuration__c] DEFAULT ('Premise'),
[Replacement_Part__c] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Replacement_Part_ref__c] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Subunit_Color__c] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Stock__b] [bit] NULL CONSTRAINT [DF_tblSalesForce_Catalog_Stock__b] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSalesForce_Catalog] ADD CONSTRAINT [PK_tblSalesForce_Catalog] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tblSalesForce_Catalog_2] ON [dbo].[tblSalesForce_Catalog] ([DesignTypeDesc]) INCLUDE ([BaseCost], [FiberCount], [FiberID], [LoadedBaseCost], [TBType]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tblSalesForce_Catalog] ON [dbo].[tblSalesForce_Catalog] ([TBLetter], [DesignTypeDesc], [BaseCost], [FiberCount], [LoadedBaseCost], [FiberID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tblSalesForce_Catalog_1] ON [dbo].[tblSalesForce_Catalog] ([TBType], [DesignTypeDesc], [BaseCost], [FiberCount], [LoadedBaseCost], [FiberID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSalesForce_Catalog] ADD CONSTRAINT [FK_tblSalesForce_Catalog_tblCableConstructionReferences] FOREIGN KEY ([Base]) REFERENCES [dbo].[tblCableConstructionReferences] ([Base]) ON DELETE CASCADE ON UPDATE CASCADE
GO
GRANT SELECT ON  [dbo].[tblSalesForce_Catalog] TO [Oracle]
GO
