CREATE TABLE [dbo].[ApplicationStatus]
(
  [ApplicationStatusId]       INT IDENTITY(1,1) NOT NULL,
  [ApplicationStatusName]     VARCHAR(50) NOT NULL,

  CONSTRAINT [PK_dbo_ApplicationStatus_ApplicationStatusId] PRIMARY KEY ([ApplicationStatusId] ASC)
)
