CREATE TABLE [dbo].[tblBurnListingCompany]
(
[ListingCompany] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateRecordCreated] [datetime] NULL CONSTRAINT [DF_tblBurnListingCompany_DateRecordCreated] DEFAULT (getdate()),
[CreatedBy] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_tblBurnListingCompany_CreatedBy] DEFAULT (suser_sname()),
[Timestamp] [timestamp] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblBurnListingCompany] ADD CONSTRAINT [PK_tblBurnListingCompany] PRIMARY KEY CLUSTERED  ([ListingCompany]) ON [PRIMARY]
GO
