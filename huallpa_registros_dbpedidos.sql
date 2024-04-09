INSERT INTO tbl_Usuarios_CAER (ID_Usuario, Nombre, CorreoElectronico, Contrasena, FechaCreacion)
VALUES (1, 'Juan Perez', 'juan@example.com', 'contrasena123', TO_DATE('2024-04-08', 'YYYY-MM-DD'));

INSERT INTO tbl_Usuarios_CAER (ID_Usuario, Nombre, CorreoElectronico, Contrasena, FechaCreacion)
VALUES (2, 'Maria Garcia', 'maria@example.com', 'password456', TO_DATE('2024-04-08', 'YYYY-MM-DD'));

INSERT INTO tbl_Usuarios_CAER (ID_Usuario, Nombre, CorreoElectronico, Contrasena, FechaCreacion)
VALUES (3, 'Carlos Lopez', 'carlos@example.com', 'qwerty789', TO_DATE('2024-04-08', 'YYYY-MM-DD'));

INSERT INTO tbl_Usuarios_CAER (ID_Usuario, Nombre, CorreoElectronico, Contrasena, FechaCreacion)
VALUES (4, 'Ana Rodriguez', 'ana@example.com', 'abc123xyz', TO_DATE('2024-04-08', 'YYYY-MM-DD'));

INSERT INTO tbl_Usuarios_CAER (ID_Usuario, Nombre, CorreoElectronico, Contrasena, FechaCreacion)
VALUES (5, 'Pedro Martinez', 'pedro@example.com', 'securepassword', TO_DATE('2024-04-08', 'YYYY-MM-DD'));



INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (1, 'Camisa', 'Camisa de algodón', 25.99, 100);

INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (2, 'Pantalón', 'Pantalón de mezclilla', 39.99, 50);

INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (3, 'Zapatos', 'Zapatos de cuero', 59.99, 30);

INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (4, 'Reloj', 'Reloj analógico de acero inoxidable', 99.99, 20);

INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (5, 'Bolsa', 'Bolsa de cuero genuino', 49.99, 15);




INSERT INTO tbl_Pedidos_CAER (ID_Pedido, ID_Usuario, FechaPedido, Estado)
VALUES (1, 1, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 'Pendiente');

INSERT INTO tbl_Pedidos_CAER (ID_Pedido, ID_Usuario, FechaPedido, Estado)
VALUES (2, 2, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 'En proceso');

INSERT INTO tbl_Pedidos_CAER (ID_Pedido, ID_Usuario, FechaPedido, Estado)
VALUES (3, 3, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 'Entregado');

INSERT INTO tbl_Pedidos_CAER (ID_Pedido, ID_Usuario, FechaPedido, Estado)
VALUES (4, 4, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 'Cancelado');

INSERT INTO tbl_Pedidos_CAER (ID_Pedido, ID_Usuario, FechaPedido, Estado)
VALUES (5, 5, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 'Pendiente');



INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, Cantidad, Precio)
VALUES (1, 1, 1, 2, 51.98);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, Cantidad, Precio)
VALUES (2, 1, 3, 1, 59.99);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, Cantidad, Precio)
VALUES (3, 2, 2, 1, 39.99);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, Cantidad, Precio)
VALUES (4, 3, 4, 1, 99.99);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, Cantidad, Precio)
VALUES (5, 4, 5, 3, 149.97);

