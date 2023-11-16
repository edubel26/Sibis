CREATE PROCEDURE [dbo].[SaveHotelRoom]
  @HotelRoomId INT,
  @HotelRoomCode VARCHAR(100),
  @HotelRoomCapacity INT,
  @HotelId INT
AS
BEGIN 
  MERGE [dbo].[HotelRoom] AS T
  USING(VALUES (@HotelRoomId, @HotelRoomCode, @HotelRoomCapacity, @HotelId)) AS S (HotelRoomId, HotelRoomCode, HotelRoomCapacity, HotelId)
  ON S.HotelRoomId = T.HotelRoomId

  WHEN MATCHED THEN 
  UPDATE SET  T.HotelRoomCode = S.HotelRoomCode,
              T.HotelRoomCapacity = S.HotelRoomCapacity,
              T.HotelId = S.HotelId
  
  WHEN NOT MATCHED BY TARGET THEN 
  INSERT (HotelRoomCode, HotelRoomCapacity, HotelId) VALUES (@HotelRoomCode, @HotelRoomCapacity, @HotelId);
END
         