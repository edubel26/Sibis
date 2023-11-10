CREATE PROCEDURE [dbo].[DeleteHotel]
  @HotelId INT
AS
BEGIN
  DELETE 
  FROM [dbo].[Hotel]
  WHERE HotelId = @HotelId
END
