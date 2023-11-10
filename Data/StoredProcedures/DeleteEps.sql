CREATE PROCEDURE [dbo].[DeleteEps]
  @EpsId INT
AS
BEGIN 
  DELETE
  FROM [dbo].[Eps]
  WHERE EpsId = @EpsId
END