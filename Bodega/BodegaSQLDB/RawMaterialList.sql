CREATE TABLE RawMaterialList (
    ID INT NOT NULL PRIMARY KEY IDENTITY, -- Identificador único de la lista de materiales crudos
    SupplierID INT NOT NULL, -- ID del proveedor
    Supplier VARCHAR(100) NOT NULL, -- Nombre del proveedor
    ReceiptDate DATE NOT NULL, -- Fecha de recepción
    ReceiptTime TIME NOT NULL, -- Hora de recepción
    PqsQty INT NOT NULL, -- Cantidad en piezas (Pqs)
    UOMQty VARCHAR(20) NOT NULL, -- Unidad de medida de la cantidad (UOM)
    GrossWeight DECIMAL(10, 2) NOT NULL, -- Peso bruto
    GrossWeightUOM VARCHAR(20) NOT NULL, -- Unidad de medida del peso bruto (UOM)
    Invoice VARCHAR(50) NOT NULL, -- Número de factura
    RawStatus VARCHAR(20) NOT NULL, -- Estado de la materia prima
    CONSTRAINT [FK_RawMaterialList_ToSupplierList] FOREIGN KEY ([SupplierID]) REFERENCES [SupplierList]([ID])
);
