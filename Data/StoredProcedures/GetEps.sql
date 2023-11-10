CREATE PROCEDURE [dbo].[GetEps]
  @EpsId INT
AS
BEGIN
  SELECT EpsId, EpsName
  FROM [dbo].[Eps]
  WHERE EpsId = @EpsId
END
