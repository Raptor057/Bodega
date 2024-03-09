CREATE TABLE [dbo].[SupplierList]
(
	[ID] INT NOT NULL  IDENTITY, 
    [CompanyName] VARCHAR(50) NOT NULL, 
    [ContactName] VARBINARY(50) NOT NULL, 
    [ContactPhone] VARCHAR(15) NOT NULL, 
    [ContactEmail] VARCHAR(50) NOT NULL, 
    [CompanyAddress] VARCHAR(MAX) NULL, 
    [CompanyWebSite] VARCHAR(50) NULL, 
    [CompanyCountry] VARCHAR(30) NULL,
    [RecordDateTime] DATETIME NOT NULL DEFAULT GETDATE(), 
     PRIMARY KEY ([ID]), 
)
