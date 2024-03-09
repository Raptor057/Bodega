CREATE TABLE [dbo].[Users]
(
	[ID] INT NOT NULL  IDENTITY, --ID de usuario auto incrementable
    [User] VARCHAR(25) NOT NULL, --Usuario se recomienda que sea un usuario facil
    [Password] VARCHAR(15) NOT NULL, --Pasword de maximo 15 caracteres
    [Name] VARCHAR(50) NULL,  --Este campo es opcional , servira para que el programa le de la bienvenida al usuario con su nombre al iniciar sesion
    [LastName] VARCHAR(50) NULL, --Apellido
    [Role] INT NOT NULL, -- Si en la tabla Roles no existe el id que se quiere agregar dara error al insertar datos
    [Active] BIT NOT NULL,  -- Estatus de usuario
    [Register_Date] DATETIME NULL DEFAULT GETDATE(), --Fecha de registro de alta de usuario se pone en automatico , no es necesario agregarlo en la UI 
    PRIMARY KEY ([ID]),  --Llave primaria
    CONSTRAINT [FK_Users_ToRoles] FOREIGN KEY ([Role]) REFERENCES [Roles]([ID]) --Llave foarnea
)
