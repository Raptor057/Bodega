/*
Esta tabla servira como tabla principal para las siguientes tablas 
-
-
-
-
ya que la columna ID de esta tabla servira como llave forantea para todas las anteriormente mencionadas
*/
CREATE TABLE [dbo].[ProductCategory]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, --ID de category
    [Category] VARCHAR(50) NOT NULL --Nombre de categoria
)
