CREATE TABLE [dbo].[HotelRoom]
(
  [HotelRoomId]           INT IDENTITY(1,1) NOT NULL,
  [HotelRoomCode]         VARCHAR (100) NOT NULL,
  [HotelRoomCapacity]     INT NOT NULL,

  [HotelId] INT NOT NULL,

  CONSTRAINT [PK_dbo_HotelRoom_HotelRoomId] PRIMARY KEY ([HotelRoomId] ASC),
  CONSTRAINT [FK_dbo_Hotel_HotelId__dbo_HotelRoom_HotelId] FOREIGN KEY ([HotelId]) REFERENCES [dbo].[Hotel] ([HotelId]) 
 
)
