CREATE TABLE [dbo].[Eps]
(
  [EpsId]           INT IDENTITY(1,1) NOT NULL,
  [EpsName]            VARCHAR(100),

  CONSTRAINT [PK_dbo_Eps_EpsId] PRIMARY KEY ([EpsId] ASC)
)
