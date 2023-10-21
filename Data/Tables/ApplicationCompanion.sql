CREATE TABLE [dbo].[ApplicationCompanion]
(
  [ApplicationCompanionId]                          INT IDENTITY(1,1) NOT NULL,
  [ApplicationCompanionApplicationId]               INT NOT NULL,

  [ApplicationCompanionFirstName]                   VARCHAR(100) NOT NULL,
  [ApplicationCompanionMiddleName]                  VARCHAR(100),
  [ApplicationCompanionThirdName]                   VARCHAR(100),

  [ApplicationCompanionLastName]                    VARCHAR(100) NOT NULL,
  [ApplicationCompanionSecondLastName]              VARCHAR(100),

  [ApplicationCompanionBirthCityId]                 INT NOT NULL,
  [ApplicationCompanionBirthDate]                   DATETIME NOT NULL,

  [ApplicationCompanionEpsId]                       INT NOT NULL,  
  [ApplicationCompanionKinship]                     INT NOT NULL,


  [ApplicationCompanionDocumentType]                INT NOT NULL, 
  [ApplicationCompanionDocumentNumber]              VARCHAR(50) NOT NULL,
  [ApplicationCompanionDocumentExpeditionDate]      DATETIME NOT NULL,
  [ApplicationCompanionDocumentExpeditionCityId]    INT NOT NULL,
  [ApplicationCompanionDocumentPDF]                 VARCHAR(100) NOT NULL,

  CONSTRAINT [PK_dbo_ApplicationCompanion_ApplicationCompanionId] PRIMARY KEY ([ApplicationCompanionId] ASC),
  CONSTRAINT [FK_dbo_City_CityId__dbo_ApplicationCompanion_ApplicationCompanionBirthCityId] FOREIGN KEY ([ApplicationCompanionBirthCityId]) REFERENCES [dbo].[City] ([CityId]),
  CONSTRAINT [FK_dbo_City_CityId__dbo_ApplicationCompanion_ApplicationCompanionDocumentExpeditionCityId] FOREIGN KEY ([ApplicationCompanionDocumentExpeditionCityId]) REFERENCES [dbo].[City] ([CityId]),
  CONSTRAINT [FK_dbo_Eps_EpsId__dbo_ApplicationCompanion_ApplicationCompanionEpsId] FOREIGN KEY ([ApplicationCompanionEpsId]) REFERENCES [dbo].[Eps] ([EpsId]),
  CONSTRAINT [FK_dbo_Application_ApplicationId__dbo_ApplicationCompanion_ApplicationCompanionApplicationId] FOREIGN KEY ([ApplicationCompanionApplicationId]) REFERENCES [dbo].[Application] ([ApplicationId])

)
