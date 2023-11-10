CREATE PROCEDURE [dbo].[GetHotelRoom]
  @HotelRoomId INT 
AS
BEGIN
  SELECT  HotelRoomId, HotelRoomCode, HotelRoomCapacity, HotelId
  FROM [dbo].[HotelRoom]
  WHERE HotelRoomId = @HotelRoomId
END
