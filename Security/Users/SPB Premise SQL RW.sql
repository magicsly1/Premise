IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'NAA\SPB Premise SQL RW')
CREATE LOGIN [NAA\SPB Premise SQL RW] FROM WINDOWS
GO
CREATE USER [SPB Premise SQL RW] FOR LOGIN [NAA\SPB Premise SQL RW]
GO
GRANT EXECUTE TO [SPB Premise SQL RW]