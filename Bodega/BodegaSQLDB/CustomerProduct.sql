CREATE TABLE [dbo].[CustomerProduct]
(
	[ID] INT NOT NULL  IDENTITY, 
    [CompanyID] INT NOT NULL, 
    [CompanyName] VARCHAR(50) NOT NULL, 
    [CompanyProduct] VARCHAR(50) NOT NULL, 
    [CompanyLeadTime] INT NOT NULL,
    [RecordDateTime] DATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_CustomerProduct_ToCustomerList] FOREIGN KEY ([CompanyID]) REFERENCES [CustomerList]([ID]), 
    PRIMARY KEY ([ID]), 
)
