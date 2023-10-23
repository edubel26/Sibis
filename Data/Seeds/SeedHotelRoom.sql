CREATE PROCEDURE [dbo].[SeedHotelRoom]
AS
BEGIN
    DECLARE @check INT = (SELECT COUNT([HotelRoomId]) FROM [dbo].[HotelRoom])

    IF(@check = 0)
    BEGIN
        INSERT  INTO [dbo].[HotelRoom]([HotelRoomCode], [HotelRoomCapacity], [HotelId]) 
        VALUES  ('BH1', '2', 1),
                ('BH2', '2', 1),
                ('BH3', '3', 1),
                ('BH4', '3', 1),
                ('BH5', '3', 1),
                ('BH6', '3', 1),
                ('BH7', '2', 1),
                ('BH8', '2', 1),
                ('SaH1', '4', 2),
                ('SaH2', '7', 2),
                ('CH1', '6', 3),
                ('CH2', '6', 3),
                ('CH3', '6', 3),
                ('CH4', '6', 3),
                ('CH5', '6', 3),
                ('CH6', '6', 3),
                
    END
END