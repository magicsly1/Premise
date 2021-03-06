SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/*
Author:		Bryan Eddy
Date:		1/11/2018
Desc:		Data provided for cut sheet view
Version:	2
Update:		1. Changed criteria to allow for more items to be viewed for cut sheets
			2. Allow for unprinted items to be in the view

*/
CREATE VIEW [dbo].[vFindCutSheet]
as
SELECT DISTINCT 
                         CableUnion.Oracle, CableUnion.Fiber, CableUnion.Color, CableUnion.Base, TopCable.StandardOperation, CableUnion.ItemNo, TopCable.CablePasses AS Location, 
                         tblCableConstructionReferences.RevisionDate, CableUnion.OracleStatus, CableUnion.PID, CableUnion.Fiber2, CableUnion.Customer, TopCable.NominalOD, CONVERT(DATE, CableUnion.[Revision Date]) 
                         AS RevDate, CableUnion.PrintSpacing, CableUnion.[Item No], TopCable.TensileApplication, tblCableConstructionReferences.DesignTypeID, TopCable.TemperatureApplication, 
                         tblDesignTypes.SalesForceDescription, CAST(SUBSTRING(CableUnion.ItemNo, 3, 3) AS INT) AS FiberCount,  tblCableConstructionReferences.NumSubPositions, K.CableType,
                         tblCableConstructionReferences.NumCopperUnits, 
                         CASE WHEN TopCable.CablePasses = 1 THEN tblCableConstructionReferences.FibersPerBundle ELSE SubReference.FibersPerBundle END AS FibersPerBundle, 
                         CASE WHEN TopCable.CablePasses = 1 THEN TopCable.NominalOD ELSE tblCableConstructions.NominalOD END AS SubOD
						 , tblCutSheetApproval.Technical_Approval, 
                         tblCutSheetApproval.Commercial_Approval, tblCutSheetApproval.Requested, 
						 CASE WHEN ((tblCutSheetApproval.Commercial_Approval = 0 OR
                         tblCutSheetApproval.Technical_Approval = 0 OR
                         COALESCE (vArmorCoreItems_Approvals.CorCommercial_Approval, 1) = 0 OR
                         COALESCE (vArmorCoreItems_Approvals.CoreTechnical_Approval, 1) = 0)) AND Requested = 1 THEN 'Requested' WHEN ((tblCutSheetApproval.Commercial_Approval = 0 OR
                         tblCutSheetApproval.Technical_Approval = 0 OR
                         COALESCE (vArmorCoreItems_Approvals.CorCommercial_Approval, 1) = 0 OR
                         COALESCE (vArmorCoreItems_Approvals.CoreTechnical_Approval, 1) = 0)) AND Requested = 0 THEN 'Not Approved' ELSE 'Approved' END AS Status
						 ,tblCableConstructionReferences.SetupID AS ConstructionID, ItemID
FROM            dbo.CableUnion INNER JOIN
                         dbo.tblCableConstructionReferences ON CableUnion.Base = tblCableConstructionReferences.Base INNER JOIN
                         dbo.tblCableConstructions AS TopCable ON tblCableConstructionReferences.BaseID = TopCable.BaseID INNER JOIN
                         tblDesignTypes ON tblCableConstructionReferences.DesignTypeID = tblDesignTypes.DesignTypeID INNER JOIN
                         tblCableTightBufferReference ON tblCableConstructionReferences.TBType = tblCableTightBufferReference.TBType INNER JOIN
                         tblCutSheetApproval ON tblCableConstructionReferences.Base = tblCutSheetApproval.Base LEFT OUTER JOIN
                         vSubunitBases RIGHT OUTER JOIN
                         tblCableConstructionReferences AS SubReference ON vSubunitBases.[Level 1 Product] = SubReference.Base ON 
                         tblCableConstructionReferences.SetupID = vSubunitBases.ProductID LEFT OUTER JOIN
                         tblCableConstructions ON SubReference.BaseID = tblCableConstructions.BaseID LEFT OUTER JOIN
                         Standards.CableConstructionStandards ON Standards.CableConstructionStandards.BaseID = TopCable.BaseID LEFT OUTER JOIN
                         vArmorCoreItems_Approvals ON vArmorCoreItems_Approvals.ArmoredItem = CableUnion.Oracle
						 INNER JOIN dbo.tblCableType K ON K.CableType = tblCableConstructionReferences.CableType
WHERE        
						(CableUnion.Customer LIKE 'AFL STANDARD%' OR
                         CableUnion.Customer LIKE 'AFL GENERIC%' OR  CableUnion.Oracle LIKE 'DN%' OR customer LIKE 'unprinted%') AND 
						 (tblCableConstructionReferences.ReleasedDesign <> 0) 
						 AND (CableUnion.Oracle NOT LIKE '%test%') AND (CableUnion.OracleStatus <> 'Obsolete') AND 
                         (CableUnion.OracleStatus <> 'Discontd') AND (ISNUMERIC(SUBSTRING(CableUnion.ItemNo, 3, 3)) = 1) AND (CableUnion.Active <> 0) AND 
                         (tblCableConstructionReferences.ReleasedDesign <> 0) AND 
                         (CableUnion.Active <> 0) AND (CableUnion.Oracle NOT LIKE '%test%') AND K.CableID = 1




GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[10] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CableUnion"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 264
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCableConstructionReferences"
            Begin Extent = 
               Top = 22
               Left = 432
               Bottom = 251
               Right = 679
            End
            DisplayFlags = 280
            TopColumn = 22
         End
         Begin Table = "tblCableConstructions_1"
            Begin Extent = 
               Top = 25
               Left = 756
               Bottom = 274
               Right = 1025
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCableTensileRating"
            Begin Extent = 
               Top = 177
               Left = 1130
               Bottom = 306
               Right = 1478
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCableStandardsApplicationReference"
            Begin Extent = 
               Top = 30
               Left = 1154
               Bottom = 159
               Right = 1356
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCableTemperatureStandards"
            Begin Extent = 
               Top = 382
               Left = 1208
               Bottom = 511
               Right = 1426
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tblDesignTypes"
            Begin Extent = 
               Top = 115
       ', 'SCHEMA', N'dbo', 'VIEW', N'vFindCutSheet', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'        Left = 184
               Bottom = 244
               Right = 402
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "tblCableTightBufferReference"
            Begin Extent = 
               Top = 290
               Left = 325
               Bottom = 532
               Right = 503
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCutSheetApproval"
            Begin Extent = 
               Top = 332
               Left = 58
               Bottom = 461
               Right = 294
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "vSubunitBases"
            Begin Extent = 
               Top = 320
               Left = 700
               Bottom = 523
               Right = 918
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblCableConstructionReferences_1"
            Begin Extent = 
               Top = 277
               Left = 885
               Bottom = 446
               Right = 1103
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "tblCableConstructions"
            Begin Extent = 
               Top = 336
               Left = 968
               Bottom = 510
               Right = 1196
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vFindCutSheet', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vFindCutSheet', NULL, NULL
GO
