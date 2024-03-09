CREATE TABLE [dbo].[Users]
(
	[ID] INT NOT NULL  IDENTITY, 
    [User] VARCHAR(25) NOT NULL, 
    [Password] VARCHAR(15) NOT NULL, 
    [Name] VARCHAR(50) NULL, 
    [LastName] VARCHAR(50) NULL, 
    [Role] INT NOT NULL, 
    [Active] BIT NOT NULL, 
    [Register_Date] DATETIME NULL DEFAULT GETDATE(), 
    PRIMARY KEY ([ID]), 
    CONSTRAINT [FK_Users_ToRoles] FOREIGN KEY ([Role]) REFERENCES [Roles]([ID])
)
