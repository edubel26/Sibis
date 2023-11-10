CREATE PROCEDURE [dbo].[GetHotels]
AS
BEGIN 
  SELECT HotelId, HotelName, HotelAddress, HotelPhone, HotelReceptionistEmail, HotelReceptionistName, CityId
  FROM [dbo].[Hotel]
END