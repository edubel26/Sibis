CREATE PROCEDURE [dbo].[SeedUser]
AS
BEGIN
    DECLARE @check INT = (SELECT COUNT([UserId]) FROM [dbo].[User])

    IF(@check = 0)
    BEGIN
        INSERT INTO [dbo].[User] ([UserFirsName], [UserMiddleName], [UserThirdName], [UserLastName], [UserSecondLastName],
        [UserBirthCityId], [UserBirthDate], [EpsId], [UserDocumentType], [UserDocumentNumber],[UserDocumentExpeditionCityId],
        [UserDocumentExpeditionDate], [UserDocumentPDF], [UserEmail], [UserPassword], [RoleId])
        VALUES      ('eduard', 'andres', '','beltran', 'perez', 149, '16/01/1997',
            |       15, 1, '1033794770', 149, '21/01/2015', '', 'beltran502@hotmail.com', '123', 1)

    END
END