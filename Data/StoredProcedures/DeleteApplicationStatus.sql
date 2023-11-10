CREATE PROCEDURE [dbo].[DeleteApplicationStatus]
  @ApplicationStatusId INT 
AS
BEGIN
  DELETE 
  FROM [dbo].[ApplicationStatus]
  WHERE ApplicationStatusId = @ApplicationStatusId
END