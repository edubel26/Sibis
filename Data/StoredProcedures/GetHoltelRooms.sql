CREATE PROCEDURE [dbo].[GetHoltelRooms]
AS
BEGIN 
  SELECT HotelRoomId, HotelRoomCode, HotelRoomCapacity, HotelId
  FROM [dbo].[HotelRoom]
END