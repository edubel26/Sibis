CREATE PROCEDURE [dbo].[DeleteApplicationCompanion]
  @ApplicationCompanionId INT 
AS
BEGIN
  DELETE 
  FROM [dbo].[ApplicationCompanion]
  WHERE ApplicationCompanionId = @ApplicationCompanionId
END