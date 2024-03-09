CREATE TABLE [dbo].[Employes]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [Gender] NCHAR(1) NOT NULL, 
    [Email] VARCHAR(50) NULL, 
    [DateOfBirth] DATE NOT NULL, 
    [MaritalStatus] VARCHAR(30) NOT NULL, 
    [Phone] VARCHAR(15) NULL,
    [RecordDateTime] DATETIME NOT NULL DEFAULT GETDATE(), 
)
