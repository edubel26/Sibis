CREATE TABLE [dbo].[State]
(
  [StateId]       INT IDENTITY(1,1) NOT NULL,
  [StateName]     VARCHAR(100),

  CONSTRAINT [PK_dbo_State_StateId] PRIMARY KEY ([StateId] ASC)
)
