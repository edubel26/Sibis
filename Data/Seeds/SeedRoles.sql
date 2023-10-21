CREATE PROCEDURE [dbo].[SeedRoles]
AS
BEGIN
    DECLARE @check INT = (SELECT COUNT([RoleId]) FROM [dbo].[Role])

    IF(@check = 0)
    BEGIN 
        INSERT INTO [dbo].[Role] ([RoleName])
        VALUES  ('Usuario'),
                ('Administrador'),
                ('Recepcionista')
    END


END
