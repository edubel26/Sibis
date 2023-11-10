CREATE PROCEDURE [dbo].[SaveRole]
  @RoleId INT,
  @RoleName VARCHAR(100)
AS
BEGIN
  MERGE [dbo].[Role] AS T
  USING (VALUES (@RoleId, @RoleName)) AS S (RoleId, RoleName)
  ON S.RoleId = T.RoleId
  
  WHEN MATCHED THEN 
  UPDATE SET T.RoleName = S.RoleName

  WHEN NOT MATCHED BY TARGET THEN
  INSERT (RoleName) VALUES (@RoleName);
END