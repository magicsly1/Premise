SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:      Bryan Eddy
-- Create date: 2/18/2019
-- Description: pull Setup, machine capability, and run speeds from PlanetTogether Db
-- Version: 1
-- Update:	n/a
-- =============================================
CREATE VIEW [PlanetTogether].[vSetupLineSpeedAll]
as

SELECT i.slsID,
      i.Item,
      i.LineSpeed,
      i.MachineID,
      i.Setup,
      i.SetupDesc,
      i.true_operation_seq_num,
      i.PrimaryAlt,
      i.pass_to_aps,
      i.RunTypeID,
      i.MachineName
FROM [NAACAB-SCH01].PlanetTogether_Data_Prod.Setup.vSetupLineSpeed_Cache i
GO
