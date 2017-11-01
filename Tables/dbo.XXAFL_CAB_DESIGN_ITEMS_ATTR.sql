CREATE TABLE [dbo].[XXAFL_CAB_DESIGN_ITEMS_ATTR]
(
[INVENTORY_ITEM_NAME] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORGANIZATION_ID] [int] NULL,
[PRIMARY_ALT] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROCESS_ID] [int] NULL,
[DEPARTMENT_ID] [int] NOT NULL,
[ATTRIBUTE_ID] [int] NOT NULL,
[ATTRIBUTE_VALUE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UNIT_ID] [int] NOT NULL,
[LAYER_ID] [int] NOT NULL,
[START_DATE] [datetime] NULL,
[END_DATE] [datetime] NULL,
[USER_NAME] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CREATED_BY] [int] NULL,
[CREATION_DATE] [datetime] NULL,
[UPDATED_BY] [int] NULL,
[UPDATE_DATE] [datetime] NULL,
[CREATE_UPDATE_FLAG] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BATCH_ID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[XXAFL_CAB_DESIGN_ITEMS_ATTR] ADD CONSTRAINT [PK_XXAFL_CAB_DESIGN_ITEMS_ATTR] PRIMARY KEY CLUSTERED  ([INVENTORY_ITEM_NAME], [PRIMARY_ALT], [DEPARTMENT_ID], [ATTRIBUTE_ID], [UNIT_ID], [LAYER_ID]) ON [PRIMARY]
GO
