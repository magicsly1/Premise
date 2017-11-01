CREATE TABLE [dbo].[Basic Product Construction_Archive]
(
[New Oracle Part #] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Item No] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Customer] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Customer Part#] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerRev] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Active] [bit] NULL,
[Reason] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[calculate bill?] [smallint] NULL,
[Base] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cable Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Revision Date] [datetime2] (0) NULL,
[Revision Letter] [int] NULL,
[Revision History] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Standard Operation] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Jacket Material] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Jacket Color] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color Chip ID] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Nominal OD] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OD Tol  (+)] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OD Tol  (-)] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Height] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Height Tol (+)] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Height Tol (-)] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Nominal Wall] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Max Ave Wall] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Min Ave Wall] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Min Spot Wall] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Print Reel No] [smallint] NULL,
[Print Item No] [smallint] NULL,
[Std Subunit Print] [smallint] NULL,
[Print Type (base)] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Print Line 1] [nvarchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Print Line 2] [nvarchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Print Line 3] [nvarchar] (78) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Print Line 4] [nvarchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NewPrintLine4] [nvarchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Print Spacing] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrintNotes] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Listing Company] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UL-ETL-Listing] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UL-ETL-Const] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UL-ETL-Section] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ENumber] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Label Type] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Aramid Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Number of ends] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Aramid Type2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Number of ends2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Unit Chips Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Unit Ripcord] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Unit CM] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Lay Length] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Talc] [smallint] NULL,
[EZ Strip] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TB Material] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TB Chips Type] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TB Nominal OD] [decimal] (6, 4) NULL,
[TB OD Tol  (+)] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TB OD Tol  (-)] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TB Color Series] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber Type] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber Oracle item] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FiberType2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FiberType3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[1st Req Freq] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[1st Max Atten] [float] NULL,
[1st Min BandW] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[2nd Req Freq] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[2nd Max Atten] [float] NULL,
[2nd Min BandW] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SM 1300 Max Atten] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SM 1550 Max Atten] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Special Instr Product1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[zzSpecial Instr Product3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[zzSpecial Instr Product4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[zzOracle Part#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OracleStatus] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PSS Document #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DateCreated] [datetime2] NULL,
[CreatedBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RevisedBy] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RevisedDate] [datetime2] NULL,
[BaseID] [int] NULL,
[RibbonHighCure] [bit] NULL,
[TimeStamp] [timestamp] NULL,
[Print Height] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Unit Series] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[1st Req Freq - B] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[1st Max Atten - B] [decimal] (6, 4) NULL,
[1st Min BandW - B] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[2nd Req Freq - B] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[2nd Max Atten - B] [decimal] (6, 4) NULL,
[2nd Min BandW - B] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber Type C] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[1st Req Freq - C] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[1st Max Atten - C] [decimal] (6, 4) NULL,
[1st Min BandW - C] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[2nd Req Freq - C] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[2nd Max Atten - C] [decimal] (6, 4) NULL,
[2nd Min BandW - C] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Colored_Fiber] [bit] NULL CONSTRAINT [DF_Basic Product Construction_Archive_Colored_Fiber] DEFAULT ((0)),
[ID] [int] NULL,
[RecordCreationDate] [datetime] NULL CONSTRAINT [DF_Basic Product Construction_Archive_DateCreated1] DEFAULT (getdate()),
[RecordCreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_Basic Product Construction_Archive_CreatedBy1] DEFAULT (suser_sname()),
[RecordRevisedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ActiveStatusChangedDate] [datetime] NULL,
[ActiveStatusChangedBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20160817-113114] ON [dbo].[Basic Product Construction_Archive] ([Base]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20160817-113150] ON [dbo].[Basic Product Construction_Archive] ([Customer]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Basic Product Construction] ON [dbo].[Basic Product Construction_Archive] ([Customer], [Customer Part#], [Item No], [EZ Strip], [Jacket Color], [Jacket Material], [Base], [OracleStatus], [Fiber Oracle item], [Active]) ON [PRIMARY]
GO
DENY DELETE ON  [dbo].[Basic Product Construction_Archive] TO [SPB Premise SQL RW]
GO
DENY UPDATE ON  [dbo].[Basic Product Construction_Archive] TO [SPB Premise SQL RW]
GO
