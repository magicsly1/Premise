CREATE TABLE [dbo].[tblNames_Test]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblNames_Test] ADD CONSTRAINT [PK_tblNames_Test] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
