CREATE PROCEDURE [dbo].[SeedHotel]
AS
BEGIN
    DECLARE @check INT = (SELECT COUNT([HotelId]) FROM [dbo].[Hotel])

    IF(@check = 0)
    BEGIN
        INSERT  INTO [dbo].[Hotel]([HotelName], [HotelAddress], [CityId]) 
        VALUES  ('Bogota', 'Carrera 71 No. 49 A-09. En el barrio Normandia', 149),
                ('San Andres', 'Carrera 10  No. 3-92. Sector Swamp Ground', 1090),
                ('Cartagena', 'Dentro de los predios de la Regional Caribe, situada frente a la Plaza de la Ermita en el Barrio pie de la Popa', 150),
                
    END
END