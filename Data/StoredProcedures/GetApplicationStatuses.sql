CREATE PROCEDURE [dbo].[GetApplicationStatuses]
AS
BEGIN
  SELECT ApplicationStatusId, ApplicationStatusName
  FROM [dbo].[ApplicationStatus]
END
