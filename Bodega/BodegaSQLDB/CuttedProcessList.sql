CREATE TABLE CuttedProcessList (
    ID INT NOT NULL PRIMARY KEY IDENTITY, -- Identificador único del proceso de corte
    [EmployeeID] INT NOT NULL, --ID del empleado
    [EmployeeName] VARCHAR(100) NOT NULL, -- Nombre del empleado
    QtyCutted INT NOT NULL, -- Cantidad cortada
    UnitOfMeasure VARCHAR(20) NOT NULL, -- Unidad de medida
    CuttedDate DATE NOT NULL, -- Fecha de corte
    CuttedTime TIME NOT NULL, -- Hora de corte
    UnitPrice DECIMAL(10, 2) NOT NULL, -- Precio unitario
    TotalAmount DECIMAL(15, 2) NOT NULL, -- Monto total
    CONSTRAINT [FK_CuttedProcessList_ToEmployes] FOREIGN KEY ([EmployeeID]) REFERENCES [Employes]([ID])
);
