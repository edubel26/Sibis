CREATE PROCEDURE [dbo].[SeedStates]
AS
BEGIN
    DECLARE @check INT = (SELECT COUNT([StateId]) FROM [dbo].[State])

    IF(@check = 0)
    BEGIN
        INSERT INTO [dbo].[State] ([StateName])
        VALUES  ('antioquia'),
                ('atlantico'),
                ('bogota D.C.'),
                ('bolivar'),
                ('boyaca'),
                ('caldas'),
                ('caqueta'),
                ('cauca'),
                ('cesar'),
                ('cordoba'),
                ('cundinamarca'),
                ('choco'),
                ('huila'),
                ('laguajira'),
                ('magdalena'),
                ('meta'),
                ('narino'),
                ('norte de santander'),
                ('quindio'),
                ('risaralda'),
                ('santander'),
                ('sucre'),
                ('tolima'),
                ('valledelcauca'),
                ('arauca'),
                ('casanare'),
                ('putumayo'),
                ('san andres y providencia'),
                ('amazonas'),
                ('guainia'),
                ('guaviare'),
                ('vaupes'),
                ('vichada')
    END
END
