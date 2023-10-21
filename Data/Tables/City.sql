CREATE TABLE [dbo].[City]
(
  [CityId]              INT IDENTITY(1,1) NOT NULL,
  [CityName]            VARCHAR(100),

  [StateId]             INT NOT NULL,
  
  CONSTRAINT [PK_dbo_City_CityId] PRIMARY KEY ([CityId] ASC),
  CONSTRAINT [FK_dbo_State_StateId__dbo_City_StateId] FOREIGN KEY ([StateId]) REFERENCES [dbo].[State] ([StateId])
)
