CREATE PROCEDURE [dbo].[SeedEps]
AS
BEGIN
    DECLARE @check INT = (SELECT COUNT([EpsId]) FROM [dbo].[Eps])

    IF(@check = 0)
    BEGIN
        INSERT INTO [dbo].[Eps] ([EpsName])
        VALUES      ('Capital Salud'),
                    ('Salud total'),
                    ('ConfaNorte'),
                    ('Sura'),
                    ('Sanitas')
    END
END