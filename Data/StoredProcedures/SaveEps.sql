CREATE PROCEDURE [dbo].[SaveEps]
  @EpsId INT,
  @EpsName VARCHAR(100)
AS
BEGIN 
  MERGE [dbo].[Eps] AS T
  USING (VALUES (@EpsId, @EpsName)) AS S (EpsId, EpsName)
  ON S.EpsId = T.EpsId

  WHEN MATCHED THEN 
  UPDATE SET T.EpsName = S.EpsName

  WHEN NOT MATCHED BY TARGET THEN 
  INSERT (EpsName) VALUES (@EpsName);
END
