CREATE PROCEDURE [dbo].[SeedApplicationStatuses]
AS
BEGIN
    DECLARE @check INT = (SELECT COUNT([ApplicationStatusId]) FROM [dbo].[ApplicationStatus])

    IF(@check = 0)
    BEGIN
        INSERT  INTO [dbo].[ApplicationStatus]([ApplicationStatusName]) 
        VALUES  ('Aprobado'),
                ('Denegado'),
                ('En Espera'),
                ('Finalizado');
    END
END