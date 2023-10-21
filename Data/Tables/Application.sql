CREATE TABLE [dbo].[Application]
(
  [ApplicationId]                 INT IDENTITY(1,1) NOT NULL,

  [ApplicationType]               INT NOT NULL,
  [ApplicationStatusId]           INT NOT NULL,

  [ApplicationCheckInDate]        DATETIME NOT NULL,
  [ApplicationCheckOutDate]       DATETIME NOT NULL,

  [ApplicationDate]               DATETIME NOT NULL,

  [UserId]                        INT NOT NULL,
  [HotelRoomId]                   INT NOT NULL,


  CONSTRAINT [PK_dbo_Application_ApplicationId] PRIMARY KEY ([ApplicationId] ASC),
  CONSTRAINT [FK_dbo_ApplicationStatus_ApplicationStatusId__dbo_Application_ApplicationStatusId] FOREIGN KEY ([ApplicationStatusId]) REFERENCES [dbo].[ApplicationStatus] ([ApplicationStatusId]),
  CONSTRAINT [FK_dbo_User_UserId__dbo_Application_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]),
  CONSTRAINT [FK_dbo_HotelRoom_HotelRoomId__dbo_Application_HotelRoomId] FOREIGN KEY ([HotelRoomId]) REFERENCES [dbo].[HotelRoom] ([HotelRoomId])
)
