CREATE TABLE PurchaseOrder (
    ID INT NOT NULL PRIMARY KEY IDENTITY, -- Identificador único de la orden de compra
    PurchaseOrderNumber VARCHAR(20) NOT NULL, -- Número único asociado a la orden de compra
    IssueDate DATE NOT NULL, -- Fecha en que se emitió la orden de compra
    
    -- Supplier Details
    SupplierName VARCHAR(100) NOT NULL, -- Nombre del proveedor
    SupplierAddress VARCHAR(255) NOT NULL, -- Dirección del proveedor
    SupplierContact VARCHAR(50) NOT NULL, -- Información de contacto del proveedor
    
    -- Buyer Details
    BuyerCompanyName VARCHAR(100) NOT NULL, -- Nombre de la empresa o entidad compradora
    BuyerBillingAddress VARCHAR(255) NOT NULL, -- Dirección de facturación del comprador
    BuyerShippingAddress VARCHAR(255) NOT NULL, -- Dirección de entrega del comprador
    BuyerContact VARCHAR(MAX) NOT NULL, -- Información de contacto del comprador
    
    -- Product or Service Details
    ProductDescription VARCHAR(MAX) NOT NULL, -- Descripción detallada de los bienes o servicios
    Quantity INT NOT NULL, -- Cantidad solicitada
    UnitOfMeasure VARCHAR(20) NOT NULL, -- Unidad de medida del producto o servicio --Agregar tabla de unidades
    NetWeight INT NOT NULL, -- Peso del producto
    GrossWeight INT NOT NULL, -- Peso del producto
    UnitGrossOfMeasure VARCHAR(20) NOT NULL, -- Unidad de medida del producto o servicio --Agregar tabla de unidades
    UnitPrice DECIMAL(10, 2) NOT NULL, -- Precio unitario por unidad
    TotalAmount DECIMAL(15, 2) NOT NULL, -- Total por línea (Cantidad * Precio unitario)
    
    -- Delivery Date or Execution Deadline
    DeliveryDate DATE, -- Fecha en que se espera la entrega o finalización del servicio
    
    -- Payment Terms
    PaymentTerms VARCHAR(50) NOT NULL, -- Términos y condiciones de pago acordados
    
    -- Tax and Fiscal Information
    Taxes DECIMAL(5, 2), -- Detalles sobre impuestos aplicables
    TaxIdentificationNumber VARCHAR(20), -- Número de identificación fiscal
    
    -- General Conditions
    GeneralConditions TEXT, -- Cualquier término o condición adicional acordado
    
    -- Signatures and Approval
    --SupplierSignature VARCHAR(100), -- Firma del proveedor
    --BuyerSignature VARCHAR(100), -- Firma del comprador
    ApprovalDate DATE, -- Fecha de aprobación
    
    -- Additional Notes or Comments
    Notes TEXT -- Información adicional o comentarios
);
