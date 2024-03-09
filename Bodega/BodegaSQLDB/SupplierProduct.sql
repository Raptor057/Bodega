CREATE TABLE [dbo].[SupplierProduct]
(
	[ID] INT NOT NULL  IDENTITY, 
    [CompanyID] INT NOT NULL, 
    [CompanyName] VARCHAR(50) NOT NULL, 
    [CompanyProduct] VARCHAR(50) NOT NULL, 
    [CompanyLeadTime] INT NOT NULL,
    [RecordDateTime] DATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_SupplierProduct_ToSupplierList] FOREIGN KEY ([CompanyID]) REFERENCES [SupplierProduct]([ID]), 
    PRIMARY KEY ([ID]), 
)
