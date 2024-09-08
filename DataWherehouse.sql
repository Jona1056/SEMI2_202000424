
CREATE TABLE DimProveedor (
    codigo VARCHAR(150) PRIMARY KEY, 
    nombre VARCHAR(150) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    numero VARCHAR(150) NULL,
    web CHAR(1) NULL
);


CREATE TABLE DimCliente (
    codigo VARCHAR(150) PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    tipo VARCHAR(150) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    numero VARCHAR(150) NULL
);


CREATE TABLE DimProducto (
    codigo VARCHAR(150) PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    marca VARCHAR(150) NOT NULL,
    categoria VARCHAR(150) NOT NULL
);


CREATE TABLE DimSucursal (
    codigo VARCHAR(150) PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    region VARCHAR(150) NOT NULL,
    departamento VARCHAR(150) NOT NULL
);


CREATE TABLE DimVendedor (
    codigo VARCHAR(150) PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    vacacionista BIT NOT NULL
);


CREATE TABLE FactCompra (
    id INT PRIMARY KEY IDENTITY(1,1),
    codigo_proveedor VARCHAR(150) FOREIGN KEY REFERENCES DimProveedor(codigo),
    codigo_producto VARCHAR(150) FOREIGN KEY REFERENCES DimProducto(codigo),
    codigo_sucursal VARCHAR(150) FOREIGN KEY REFERENCES DimSucursal(codigo),
    fecha DATE NOT NULL,
    unidades INT NOT NULL,
    costo_unitario DECIMAL(10, 2) NOT NULL
);


CREATE TABLE FactVenta (
    id INT PRIMARY KEY IDENTITY(1,1),
    codigo_cliente VARCHAR(150) FOREIGN KEY REFERENCES DimCliente(codigo),
    codigo_vendedor VARCHAR(150) FOREIGN KEY REFERENCES DimVendedor(codigo),
    codigo_producto VARCHAR(150) FOREIGN KEY REFERENCES DimProducto(codigo),
    codigo_sucursal VARCHAR(150) FOREIGN KEY REFERENCES DimSucursal(codigo),
    fecha DATE NOT NULL,
    unidades INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL
);