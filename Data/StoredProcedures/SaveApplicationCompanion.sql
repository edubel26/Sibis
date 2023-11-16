CREATE PROCEDURE [dbo].[SaveApplicationCompanion]
    @ApplicationCompanionId INT, 
    @ApplicationCompanionApplicationId INT,
    @ApplicationCompanionFirstName VARCHAR(100),
    @ApplicationCompanionMiddleName VARCHAR(100),
    @ApplicationCompanionThirdName VARCHAR(100),
    @ApplicationCompanionLastName VARCHAR(100),
    @ApplicationCompanionSecondLastName VARCHAR(100),
    @ApplicationCompanionBirthCityId INT,
    @ApplicationCompanionBirthDate DATETIME,
    @ApplicationCompanionEpsId INT,
    @ApplicationCompanionKinship INT,
    @ApplicationCompanionDocumentType INT,
    @ApplicationCompanionDocumentNumber VARCHAR(50),
    @ApplicationCompanionDocumentExpeditionDate DATETIME,
    @ApplicationCompanionDocumentExpeditionCityId INT,
    @ApplicationCompanionDocumentPDF VARCHAR(100)
AS
BEGIN 
  MERGE [dbo].[ApplicationCompanion] AS T
  USING(VALUES  (   @ApplicationCompanionId, 
                    @ApplicationCompanionApplicationId,
                    @ApplicationCompanionFirstName,
                    @ApplicationCompanionMiddleName,
                    @ApplicationCompanionThirdName,
                    @ApplicationCompanionLastName,
                    @ApplicationCompanionSecondLastName,
                    @ApplicationCompanionBirthCityId,
                    @ApplicationCompanionBirthDate,
                    @ApplicationCompanionEpsId,
                    @ApplicationCompanionKinship,
                    @ApplicationCompanionDocumentType,
                    @ApplicationCompanionDocumentNumber,
                    @ApplicationCompanionDocumentExpeditionDate,
                    @ApplicationCompanionDocumentExpeditionCityId,
                    @ApplicationCompanionDocumentPDF)) 

        AS S    (   ApplicationCompanionId, 
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
                    ApplicationCompanionDocumentPDF)
        ON S.ApplicationCompanionId = T.ApplicationCompanionId

  WHEN MATCHED THEN 
  UPDATE SET    T.ApplicationCompanionFirstName = S.ApplicationCompanionFirstName
                T.ApplicationCompanionMiddleName = S.ApplicationCompanionMiddleName
                T.ApplicationCompanionThirdName = S.ApplicationCompanionThirdName
                T.ApplicationCompanionLastName = S.ApplicationCompanionLastName
                T.ApplicationCompanionSecondLastName = S.ApplicationCompanionSecondLastName
                T.ApplicationCompanionBirthCityId = S.ApplicationCompanionBirthCityId
                T.ApplicationCompanionBirthDate = S.ApplicationCompanionBirthDate
                T.ApplicationCompanionEpsId = S.ApplicationCompanionEpsId
                T.ApplicationCompanionKinship = S.ApplicationCompanionKinship
                T.ApplicationCompanionDocumentType = S.ApplicationCompanionDocumentType
                T.ApplicationCompanionDocumentNumber = S.ApplicationCompanionDocumentNumber
                T.ApplicationCompanionDocumentExpeditionDate = S.ApplicationCompanionDocumentExpeditionDate
                T.ApplicationCompanionDocumentExpeditionCityId = S.ApplicationCompanionDocumentExpeditionCityId
                T.ApplicationCompanionDocumentPDF = S.ApplicationCompanionDocumentPDF
                
  WHEN NOT MATCHED BY TARGET THEN 
  INSERT (  ApplicationCompanionApplicationId,
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
            ApplicationCompanionDocumentPDF) 

  VALUES (  @ApplicationCompanionApplicationId,
            @ApplicationCompanionFirstName,
            @ApplicationCompanionMiddleName,
            @ApplicationCompanionThirdName,
            @ApplicationCompanionLastName,
            @ApplicationCompanionSecondLastName,
            @ApplicationCompanionBirthCityId,
            @ApplicationCompanionBirthDate,
            @ApplicationCompanionEpsId,
            @ApplicationCompanionKinship,
            @ApplicationCompanionDocumentType,
            @ApplicationCompanionDocumentNumber,
            @ApplicationCompanionDocumentExpeditionDate,
            @ApplicationCompanionDocumentExpeditionCityId,
            @ApplicationCompanionDocumentPDF);
END
     