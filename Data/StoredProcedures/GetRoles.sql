CREATE PROCEDURE [dbo].[GetRoles]
AS
BEGIN
  SELECT RoleId, RoleName
  FROM [dbo].[Role]
END