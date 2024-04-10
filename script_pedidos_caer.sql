CREATE DATABASE Pedidos_Caer;
USE Pedidos_Caer;

CREATE TABLE tbl_Usuarios_CAER (
    ID_Usuario INT PRIMARY KEY,
    Nombre VARCHAR2(100),
    CorreoElectronico VARCHAR2(150) UNIQUE,
    Contrasena VARCHAR2(100),
    FechaCreacion DATE
);
CREATE TABLE tbl_Productos_CAER (
    ID_Producto INT PRIMARY KEY,
    Nombre VARCHAR2(200),
    Descripcion VARCHAR2(500),
    Precio DECIMAL(10, 2),
    Stock INT
);
CREATE TABLE tbl_Pedidos_CAER (
    ID_Pedido INT PRIMARY KEY,
    ID_Usuario INT,
    FechaPedido DATE,
    Estado VARCHAR2(50),
    FOREIGN KEY (ID_Usuario) REFERENCES tbl_Usuarios_CAER(ID_Usuario)
);

CREATE TABLE tbl_Repartidor_CAER(
    ID_Repartidor INT PRIMARY KEY,
    Nombre VARCHAR2(200),
    Apellido VARCHAR2(200),
    DNI INT,
    Placa VARCHAR2(6),
    Telefono NUMBER (9)
);

CREATE TABLE tbl_Detalles_del_Pedido_CAER (
    ID_DetallePedido INT PRIMARY KEY,
    ID_Pedido INT,
    ID_Producto INT,
    ID_Repartidor INT,
    Cantidad INT,
    Precio DECIMAL(10, 2),
    FOREIGN KEY (ID_Pedido) REFERENCES tbl_Pedidos_CAER(ID_Pedido),
    FOREIGN KEY (ID_Producto) REFERENCES tbl_Productos_CAER(ID_Producto),
    FOREIGN KEY (ID_Repartidor) REFERENCES tbl_Repartirdor_CAER(ID_Repartidor)
);

CREATE TABLE tbl_Resenas_Productos_GMH (
    ID_Resena NUMBER PRIMARY KEY,
    ID_Producto NUMBER,
    ID_Usuario NUMBER,
    Fecha_Resena DATE,
    Puntuacion NUMBER(2,1), -- Puntuación de la reseña (por ejemplo, 4.5)
    Comentario VARCHAR2(1000), -- Comentario de la reseña
    FOREIGN KEY (ID_Producto) REFERENCES tbl_Productos_CAER(ID_Producto),
    FOREIGN KEY (ID_Usuario) REFERENCES tbl_Usuarios_CAER(ID_Usuario)
);