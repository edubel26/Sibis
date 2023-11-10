CREATE PROCEDURE [dbo].[DeleteHotelRoom]
  @HotelRoomId INT 
AS
BEGIN 
  DELETE 
  FROM [dbo].[HotelRoom]
  WHERE HotelRoomId = @HotelRoomId
END 