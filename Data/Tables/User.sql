CREATE TABLE [dbo].[User]
(
  [UserId]                              INT IDENTITY(1,1) NOT NULL ,

  [UserFirsName]                        VARCHAR (100) NOT NULL,
  [UserMiddleName]                      VARCHAR (100),
  [UserThirdName]                       VARCHAR (100),

  [UserLastName]                        VARCHAR (100) NOT NULL,
  [UserSecondLastName]                  VARCHAR (100),

  [UserBirthCityId]                     INT NOT NULL,
  [UserBirthDate]                       DATETIME NOT NULL,

  [EpsId]                               INT NOT NULL,  

  [UserDocumentType]                    INT NOT NULL,
  [UserDocumentNumber]                  VARCHAR(100) NOT NULL,
  [UserDocumentExpeditionCityId]        INT NOT NULL,
  [UserDocumentExpeditionDate]          DATETIME NOT NULL,
  [UserDocumentPDF]                     VARCHAR(100),


  [UserEmail]                           VARCHAR(320) NOT NULL,
  [UserPassword]                        VARCHAR(100) NOT NULL, 
  
  [RoleId]                              INT NOT NULL,

  CONSTRAINT [PK_dbo_User_UserId] PRIMARY KEY ([UserId] ASC),
  CONSTRAINT [FK_dbo_Role_RoleId__dbo_User_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId]),
  CONSTRAINT [FK_dbo_City_CityId__dbo_User_UserBirthCityId] FOREIGN KEY ([UserBirthCityId]) REFERENCES [dbo].[City] ([CityId]),
  CONSTRAINT [FK_dbo_City_CityId__dbo_User_UserDocumentExpeditionCityId] FOREIGN KEY ([UserDocumentExpeditionCityId]) REFERENCES [dbo].[City] ([CityId]),
  CONSTRAINT [FK_dbo_Eps_EpsId__dbo_User_EpsId] FOREIGN KEY ([EpsId]) REFERENCES [dbo].[Eps] ([EpsId])
  
)
