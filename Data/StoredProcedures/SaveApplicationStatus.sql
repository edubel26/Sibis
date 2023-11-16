CREATE PROCEDURE [dbo].[SaveApplicationStatus]
  @ApplicationStatusId INT,
  @ApplicationStatusName VARCHAR(50)
AS
BEGIN
  MERGE [dbo].[ApplicationStatus] AS T
  USING (VALUES (@ApplicationStatusId, @ApplicationStatusName)) AS S (ApplicationStatusId, ApplicationStatusName)
  ON S.ApplicationStatusId = @ApplicationStatusId

  WHEN MATCHED THEN 
  UPDATE SET T.ApplicationStatusName = S.ApplicationStatusName
  
  WHEN NOT MATCHED BY TARGET THEN 
  INSERT (ApplicationStatusName) VALUES (@ApplicationStatusName);
END
