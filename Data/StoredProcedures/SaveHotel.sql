CREATE PROCEDURE [dbo].[SaveHotel]
  @HotelId INT, 
  @HotelName VARCHAR(100),
  @HotelAddress VARCHAR(200),
  @HotelPhone VARCHAR(100),
  @HotelReceptionistEmail VARCHAR(200),
  @HotelReceptionistName VARCHAR(200),
  @CityId INT
AS
BEGIN
  MERGE [dbo].[Hotel] AS T 
  USING (VALUES (@HotelId, @HotelName, @HotelAddress, @HotelPhone, @HotelReceptionistEmail, @HotelReceptionistName, @CityId)) AS S (HotelId, HotelName, HotelAddress, HotelPhone, HotelReceptionistEmail, HotelReceptionistName, CityId)
  ON S.HotelId = T.HotelId

  WHEN MATCHED THEN 
  UPDATE SET  T.HotelName = S.HotelName,
              T.HotelAddress = S.HotelAddress,
              T.HotelPhone = S.HotelPhone,
              T.HotelReceptionistEmail = S.HotelReceptionistEmail,
              T.HotelReceptionistName = S.HotelReceptionistName,
              T.CityId = S.CityId

  WHEN NOT MATCHED BY TARGET THEN
  INSERT  (HotelName, HotelAddress, HotelPhone, HotelReceptionistName, CityId) VALUES (@HotelName, @HotelAddress, @HotelPhone, @HotelReceptionistName, @CityId);
END
