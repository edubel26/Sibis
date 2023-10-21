CREATE TABLE [dbo].[Role]
(
  [RoleId]          INT IDENTITY(1,1) NOT NULL,
  [RoleName]        VARCHAR(100) NOT NULL,

  CONSTRAINT [PK_dbo_Role_RoleId] PRIMARY KEY ([RoleId] ASC)
)
