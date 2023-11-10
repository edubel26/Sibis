CREATE PROCEDURE [dbo].[GetHotel]
  @HotelId INT
AS
BEGIN 
  SELECT HotelId, HotelName, HotelAddress, HotelPhone, HotelReceptionistEmail, HotelReceptionistName, CityId
  FROM [dbo].[Hotel]
  WHERE HotelId = @HotelId
END