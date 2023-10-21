CREATE TABLE [dbo].[Hotel]
(
  [HotelId]                   INT IDENTITY(1,1) NOT NULL,

  [HotelName]                 VARCHAR(100)  NOT NULL,
  [HotelAddress]              VARCHAR(200)  NOT NULL,
  [HotelPhone]                VARCHAR(100),
  [HotelReceptionistEmail]    VARCHAR(200),
  [HotelReceptionistName]     VARCHAR(200),


  [CityId]                    INT NOT NULL,


  CONSTRAINT [PK_dbo_Hotel_HotelId] PRIMARY KEY ([HotelId] ASC),
  CONSTRAINT [FK_dbo_City_CityId__dbo_Hotel_CityId] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([CityId]) 
)
