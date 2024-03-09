﻿CREATE TABLE [dbo].[UnitOfMeasureType]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [UnitOfMeasure] VARCHAR(5) NOT NULL, 
    [Whole] BIT NOT NULL DEFAULT 1, 
    [Decimal] BIT NOT NULL DEFAULT 0
)
