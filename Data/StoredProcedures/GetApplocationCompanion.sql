CREATE PROCEDURE [dbo].[GetApplicationCompanion]
  @ApplicationCompanionId INT
AS
BEGIN
  SELECT    ApplicationCompanionId, 
            ApplicationCompanionApplicationId,
            ApplicationCompanionFirstName,
            ApplicationCompanionMiddleName,
            ApplicationCompanionThirdName,
            ApplicationCompanionLastName,
            ApplicationCompanionSecondLastName,
            ApplicationCompanionBirthCityId,
            ApplicationCompanionBirthDate,
            ApplicationCompanionEpsId,
            ApplicationCompanionKinship,
            ApplicationCompanionDocumentType,
            ApplicationCompanionDocumentNumber,
            ApplicationCompanionDocumentExpeditionDate,
            ApplicationCompanionDocumentExpeditionCityId,
            ApplicationCompanionDocumentPDF
  FROM [dbo].[ApplicationCompanion]
  WHERE ApplicationCompanionId = @ApplicationCompanionId
END
