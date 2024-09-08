CREATE DATABASE BASE2_SEMI2;
USE BASE2_SEMI2;

CREATE TABLE PivoteCompra(
    Fecha DATE,
    CodProveedor  VARCHAR(255),
    NombreProveedor VARCHAR(255),
    DireccionProveedor VARCHAR(255),
    NumeroProveedor VARCHAR(20),
    WebProveedor VARCHAR(255),
    CodProducto VARCHAR(255),
    NombreProducto VARCHAR(255),
    MarcaProducto VARCHAR(100),
    Categoria VARCHAR(100),
    CodSucursal  VARCHAR(255),
    NombreSucursal VARCHAR(255),
    DireccionSucursal VARCHAR(255),
    Region VARCHAR(100),
    Departamento VARCHAR(100),
    Unidades VARCHAR(255),
    CostoU VARCHAR(255)
);
USE BASE2_SEMI2;
CREATE TABLE PivoteVenta (
    Fecha DATE,
    CodigoCliente VARCHAR(255),
    NombreCliente VARCHAR(255),
    TipoCliente VARCHAR(50),
    DireccionCliente VARCHAR(255),
    NumeroCliente VARCHAR(20),
    CodVendedor VARCHAR(255),
    NombreVendedor VARCHAR(255),
    Vacacionista BIT,  
    CodProducto VARCHAR(255),
    NombreProducto VARCHAR(255),
    MarcaProducto VARCHAR(100),
    Categoria VARCHAR(100),
    CodSucursal VARCHAR(255),
    NombreSucursal VARCHAR(255),
    DireccionSucursal VARCHAR(255),
    Region VARCHAR(100),
    Departamento VARCHAR(100),
    Unidades VARCHAR(255),
    PrecioUnitario VARCHAR(255)
);