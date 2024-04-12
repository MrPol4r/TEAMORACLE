INSERT INTO tbl_profesores_gmh (ProfesorID, Nombre, Apellido, Dni, Telefono, Especialidad, CorreoElectronico)
VALUES (1, 'Luis', 'Perez', 678901234, 6677889900, 'Matematicas', 'luis@example.com');

INSERT INTO tbl_profesores_gmh (ProfesorID, Nombre, Apellido, Dni, Telefono, Especialidad, CorreoElectronico)
VALUES (2, 'Laura', 'Garcia', 789012345, 7788990011, 'Ciencias', 'laura@example.com');

INSERT INTO tbl_profesores_gmh (ProfesorID, Nombre, Apellido, Dni, Telefono, Especialidad, CorreoElectronico)
VALUES (3, 'David', 'Sanchez', 890123456, 8899001122, 'Historia', 'david@example.com');

INSERT INTO tbl_profesores_gmh (ProfesorID, Nombre, Apellido, Dni, Telefono, Especialidad, CorreoElectronico)
VALUES (4, 'Sofia', 'Martinez', 901234567, 9900112233, 'Literatura', 'sofia@example.com');

INSERT INTO tbl_profesores_gmh (ProfesorID, Nombre, Apellido, Dni, Telefono, Especialidad, CorreoElectronico)
VALUES (5, 'Javier', 'Lopez', 123456789, 1122334455, 'Fisica', 'javier@example.com');

INSERT INTO tbl_profesores_gmh (ProfesorID, Nombre, Apellido, Dni, Telefono, Especialidad, CorreoElectronico)
VALUES (6, 'Juan', 'perez', 000000000, 0000000000, '', 'juan@example.com');


INSERT INTO tbl_asignaturas_gmh (AsignaturaID, Nombre, Descripcion, ProfesorID)
VALUES (1, 'Matematicas', 'Curso de matemáticas basicas', 1);

INSERT INTO tbl_asignaturas_gmh (AsignaturaID, Nombre, Descripcion, ProfesorID)
VALUES (2, 'Ciencias', 'Curso de ciencias naturales',2);

INSERT INTO tbl_asignaturas_gmh (AsignaturaID, Nombre, Descripcion, ProfesorID)
VALUES (3, 'Historia', 'Curso de historia mundial',3);

INSERT INTO tbl_asignaturas_gmh (AsignaturaID, Nombre, Descripcion, ProfesorID)
VALUES (4, 'Literatura', 'Curso de literatura universal',4);

INSERT INTO tbl_asignaturas_gmh (AsignaturaID, Nombre, Descripcion, ProfesorID)
VALUES (5, 'Fisica', 'Curso de física clásica',5);

INSERT INTO tbl_asignaturas_gmh (AsignaturaID, Nombre, Descripcion, ProfesorID)
VALUES (6, 'Arte', 'mejora tu creatividad',null);


INSERT INTO tbl_estudiantes_gmh (EstudianteID, Nombre, Apellido, Dni, Telefono, FechaDeNacimiento, CorreoElectronico)
VALUES (1, 'Maria', 'Gomez', 987654321, 1122334455, TO_DATE('2001-02-10', 'YYYY-MM-DD'), 'maria@example.com');

INSERT INTO tbl_estudiantes_gmh (EstudianteID, Nombre, Apellido, Dni, Telefono, FechaDeNacimiento, CorreoElectronico)
VALUES (2, 'Jose', 'Martinez', 876543210, 2233445566, TO_DATE('2000-07-15', 'YYYY-MM-DD'), 'jose@example.com');

INSERT INTO tbl_estudiantes_gmh (EstudianteID, Nombre, Apellido, Dni, Telefono, FechaDeNacimiento, CorreoElectronico)
VALUES (3, 'Laura', 'Perez', 765432109, 3344556677, TO_DATE('1999-11-20', 'YYYY-MM-DD'), 'laura@example.com');

INSERT INTO tbl_estudiantes_gmh (EstudianteID, Nombre, Apellido, Dni, Telefono, FechaDeNacimiento, CorreoElectronico)
VALUES (4, 'Pedro', 'Lopez', 654321098, 4455667788, TO_DATE('2002-05-28', 'YYYY-MM-DD'), 'pedro@example.com');

INSERT INTO tbl_estudiantes_gmh (EstudianteID, Nombre, Apellido, Dni, Telefono, FechaDeNacimiento, CorreoElectronico)
VALUES (5, 'Ana', 'Sanchez', 543210987, 5566778899, TO_DATE('2003-09-05', 'YYYY-MM-DD'), 'ana@example.com');


INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (1, 1, 1, 'Lunes 08:00 - 10:00');

INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (2, 2, 2, 'Martes 10:00 - 12:00');

INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (3, 3, 3, 'Miercoles 08:00 - 10:00');

INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (4, 4, 4, 'Jueves 10:00 - 12:00');

INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (5, 5, 5, 'Viernes 08:00 - 10:00');


INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (1, 1, 1, 8.5, TO_DATE('2024-04-08', 'YYYY-MM-DD'));

INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (2, 2, 1, 7.0, TO_DATE('2024-04-08', 'YYYY-MM-DD'));

INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (3, 3, 2, 9.0, TO_DATE('2024-04-08', 'YYYY-MM-DD'));

INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (4, 3, 2, 6.5, TO_DATE('2024-05-08', 'YYYY-MM-DD'));

INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (5, 5, 3, 8.0, TO_DATE('2024-04-08', 'YYYY-MM-DD'));

--Registros de pedidos

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
VALUES (2, 'Pantalon', 'Pantalón de mezclilla', 39.99, 50);

INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (3, 'Zapatos', 'Zapatos de cuero', 59.99, 5);

INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (4, 'Reloj', 'Reloj analógico de acero inoxidable', 99.99, 20);

INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (5, 'Bolsa', 'Bolsa de cuero genuino', 49.99, 15);

INSERT INTO tbl_Productos_CAER (ID_Producto, Nombre, Descripcion, Precio, Stock)
VALUES (6, 'Correa', 'Correa de cuero', 20.99, 20);



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

INSERT INTO tbl_Pedidos_CAER (ID_Pedido, ID_Usuario, FechaPedido, Estado)
VALUES (6, 5, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 'Pendiente');




INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, ID_Repartidor, Cantidad, Precio)
VALUES (1, 1, 1, 1, 2, 51.98);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, ID_Repartidor, Cantidad, Precio)
VALUES (2, 1, 3, 2, 1, 59.99);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, ID_Repartidor, Cantidad, Precio)
VALUES (3, 2, 2, 3, 1, 39.99);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, ID_Repartidor, Cantidad, Precio)
VALUES (4, 3, 4, 4, 1, 99.99);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, ID_Repartidor, Cantidad, Precio)
VALUES (5, 5, 5, 5, 4, 78.99);

INSERT INTO tbl_Detalles_del_Pedido_CAER (ID_DetallePedido, ID_Pedido, ID_Producto, ID_Repartidor, Cantidad, Precio)
VALUES (6, 6, 5, 5, 4, 78.99);


INSERT INTO tbl_Repartidor_CAER (ID_Repartidor, Nombre, Apellido, DNI, Placa, Telefono)
VALUES (1, 'Juan', 'Gomez', 123456789, 'ABC123', 112233445);

INSERT INTO tbl_Repartidor_CAER (ID_Repartidor, Nombre, Apellido, DNI, Placa, Telefono)
VALUES (2, 'Maria', 'Lopez', 234567890, 'DEF456', 223344556);

INSERT INTO tbl_Repartidor_CAER (ID_Repartidor, Nombre, Apellido, DNI, Placa, Telefono)
VALUES (3, 'Carlos', 'Martinez', 345678901, 'GHI789', 334455667);

INSERT INTO tbl_Repartidor_CAER (ID_Repartidor, Nombre, Apellido, DNI, Placa, Telefono)
VALUES (4, 'Ana', 'Rodriguez', 456789012, 'JKL012', 445566778);

INSERT INTO tbl_Repartidor_CAER (ID_Repartidor, Nombre, Apellido, DNI, Placa, Telefono)
VALUES (5, 'Pedro', 'Sanchez', 567890123, 'MNO345', 556677889);

INSERT INTO tbl_Resenas_Productos (ID_Resena, ID_Producto, ID_Usuario, Fecha_Resena, Puntuacion, Comentario) VALUES 
(1, 1, 3, TO_DATE('2024-04-09', 'YYYY-MM-DD'), 4.5, '¡Producto excelente! Muy satisfecho con la calidad y el servicio.');

INSERT INTO tbl_Resenas_Productos (ID_Resena, ID_Producto, ID_Usuario, Fecha_Resena, Puntuacion, Comentario) VALUES 
(2, 2, 2, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 3.8, 'El producto cumplió mis expectativas, aunque el envío tardó un poco más de lo esperado.');

INSERT INTO tbl_Resenas_Productos (ID_Resena, ID_Producto, ID_Usuario, Fecha_Resena, Puntuacion, Comentario) VALUES 
(3, 3, 1, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 5.0, '¡Increíble! No puedo creer lo bueno que es este producto.');

INSERT INTO tbl_Resenas_Productos (ID_Resena, ID_Producto, ID_Usuario, Fecha_Resena, Puntuacion, Comentario) VALUES 
(4, 2, 2, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 4.0, 'Buen producto, pero podría mejorar la entrega.');

INSERT INTO tbl_Resenas_Productos (ID_Resena, ID_Producto, ID_Usuario, Fecha_Resena, Puntuacion, Comentario) VALUES 
(5, 3, 5, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 4.2, 'Me gustó el producto, aunque esperaba un poco más en cuanto a calidad. El servicio de entrega fue rápido.');
