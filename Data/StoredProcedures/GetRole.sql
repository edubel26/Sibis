CREATE PROCEDURE [dbo].[GetRole]
  @RoleId INT 
AS
BEGIN
  SELECT RoleId, RoleName
  FROM [dbo].[Role]
  WHERE RoleId = @RoleId
END
