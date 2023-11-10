CREATE PROCEDURE [dbo].[DeleteRole]
  @RoleId INT
AS
BEGIN
  DELETE 
  FROM [dbo].[Role]
  WHERE RoleId = @RoleId
END