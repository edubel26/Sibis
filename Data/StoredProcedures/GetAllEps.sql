CREATE PROCEDURE [dbo].[GetAllEps]
AS
BEGIN
  SELECT  EpsId, EpsName
  FROM [dbo].[Eps]
END 
