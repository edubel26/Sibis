CREATE PROCEDURE [dbo].[GetApplicationStatus]
  @ApplicationStatusId INT
AS
BEGIN
  SELECT ApplicationStatusId, ApplicationStatusName
  FROM [dbo].[ApplicationStatus]
  WHERE ApplicationStatusId = @ApplicationStatusId
END

