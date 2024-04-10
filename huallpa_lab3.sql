--1
SELECT 
    p.ID_Producto,
    p.Nombre AS Nombre_Producto,
    SUM(dp.Cantidad) AS Total_Pedidos
FROM 
    tbl_Productos_CAER p
JOIN 
    tbl_Detalles_del_Pedido_CAER dp ON p.ID_Producto = dp.ID_Producto
GROUP BY 
    p.ID_Producto, p.Nombre
HAVING 
    SUM(dp.Cantidad) > 10;
    
--2

SELECT Dia_Con_Mas_Pedidos, Total_Pedidos
FROM (
    SELECT FechaPedido AS Dia_Con_Mas_Pedidos, COUNT(*) AS Total_Pedidos
    FROM tbl_Pedidos_CAER
    GROUP BY FechaPedido
    ORDER BY Total_Pedidos DESC
) 
WHERE ROWNUM = 1;


--3

SELECT 
    p.ID_Producto,
    p.Nombre AS Nombre_Producto,
    p.Stock,
    COALESCE(SUM(dp.Cantidad), 0) AS Total_Ordenado
FROM 
    tbl_Productos_CAER p
LEFT JOIN 
    tbl_Detalles_del_Pedido_CAER dp ON p.ID_Producto = dp.ID_Producto
GROUP BY 
    p.ID_Producto, p.Nombre, p.Stock
ORDER BY 
    p.ID_Producto;


--4


UPDATE tbl_Productos_CAER p
SET Stock = Stock - (
    SELECT COALESCE(SUM(dp.Cantidad), 0)
    FROM tbl_Detalles_del_Pedido_CAER dp
    JOIN tbl_Pedidos_CAER pe ON dp.ID_Pedido = pe.ID_Pedido
    WHERE dp.ID_Producto = p.ID_Producto
      AND pe.FechaPedido >= SYSDATE - INTERVAL '30' DAY
)
WHERE EXISTS (
    SELECT 1
    FROM tbl_Detalles_del_Pedido_CAER dp
    JOIN tbl_Pedidos_CAER pe ON dp.ID_Pedido = pe.ID_Pedido
    WHERE dp.ID_Producto = p.ID_Producto
      AND pe.FechaPedido >= SYSDATE - INTERVAL '30' DAY
);


--5


SELECT 
    TO_CHAR(FechaPedido, 'YYYY-MM') AS Mes,
    COUNT(*) AS Cantidad_de_Pedidos,
    SUM(dp.Cantidad * p.Precio) AS Total_de_Ventas
FROM 
    tbl_Pedidos_CAER pe
JOIN 
    tbl_Detalles_del_Pedido_CAER dp ON pe.ID_Pedido = dp.ID_Pedido
JOIN 
    tbl_Productos_CAER p ON dp.ID_Producto = p.ID_Producto
GROUP BY 
    TO_CHAR(FechaPedido, 'YYYY-MM')
ORDER BY 
    TO_CHAR(FechaPedido, 'YYYY-MM');


--6



SELECT 
    u.ID_Usuario,
    u.Nombre,
    u.CorreoElectronico,
    SUM(dp.Cantidad * p.Precio) AS Total_Gastado
FROM 
    tbl_Usuarios_CAER u
JOIN 
    tbl_Pedidos_CAER pe ON u.ID_Usuario = pe.ID_Usuario
JOIN 
    tbl_Detalles_del_Pedido_CAER dp ON pe.ID_Pedido = dp.ID_Pedido
JOIN 
    tbl_Productos_CAER p ON dp.ID_Producto = p.ID_Producto
GROUP BY 
    u.ID_Usuario, u.Nombre, u.CorreoElectronico
HAVING 
    SUM(dp.Cantidad * p.Precio) > 100; -- Ajusta este valor según el monto deseado


--7
SELECT 
    ID_Producto,
    Nombre,
    Precio
FROM 
    tbl_Productos_CAER
ORDER BY 
    Precio DESC
FETCH FIRST 3 ROWS ONLY;


--8


SELECT 
    u.ID_Usuario,
    u.Nombre,
    u.CorreoElectronico
FROM 
    tbl_Usuarios_CAER u
LEFT JOIN 
    tbl_Pedidos_CAER p ON u.ID_Usuario = p.ID_Usuario
LEFT JOIN 
    tbl_Detalles_del_Pedido_CAER dp ON p.ID_Pedido = dp.ID_Pedido
    AND dp.ID_Producto = 1 -- ID_Producto específico que se está buscando
WHERE 
    dp.ID_DetallePedido IS NULL;


--9

SELECT 
    p.ID_Producto,
    p.Nombre,
    AVG(dp.Cantidad) AS Promedio_Unidades_Por_Pedido
FROM 
    tbl_Detalles_del_Pedido_CAER dp
JOIN 
    tbl_Productos_CAER p ON dp.ID_Producto = p.ID_Producto
GROUP BY 
    p.ID_Producto, p.Nombre;


--10


SELECT 
    u.ID_Usuario,
    u.Nombre,
    u.CorreoElectronico
FROM 
    tbl_Usuarios_CAER u
LEFT JOIN 
    tbl_Pedidos_CAER p ON u.ID_Usuario = p.ID_Usuario
    AND p.FechaPedido >= ADD_MONTHS(SYSDATE, -6) -- Fecha actual menos 6 meses
WHERE 
    p.ID_Pedido IS NULL;

--11

UPDATE tbl_Pedidos_CAER
SET Estado = 'Atrasado'
WHERE ID_Pedido IN (
    SELECT p.ID_Pedido
    FROM tbl_Pedidos_CAER p
    WHERE p.Estado <> 'Entregado' -- No ha sido entregado
    AND p.FechaPedido < SYSDATE - 30 -- Fecha de pedido hace más de 30 días
);

--12

SELECT 
    p.ID_Pedido,
    p.ID_Usuario,
    u.Nombre AS Nombre_Usuario,
    p.FechaPedido,
    p.Estado
FROM 
    tbl_Pedidos_CAER p
JOIN 
    tbl_Usuarios_CAER u ON p.ID_Usuario = u.ID_Usuario;


--13


SELECT 
    CASE 
        WHEN Precio < 100 THEN 'Bajo'
        WHEN Precio >= 100 AND Precio <= 500 THEN 'Medio'
        ELSE 'Alto'
    END AS Categoria_Precio,
    COUNT(*) AS Numero_Productos
FROM 
    tbl_Productos_CAER
GROUP BY 
    CASE 
        WHEN Precio < 100 THEN 'Bajo'
        WHEN Precio >= 100 AND Precio <= 500 THEN 'Medio'
        ELSE 'Alto'
    END;


--14


SELECT 
    p.Nombre AS Nombre_Producto, 
    SUM(ddp.Cantidad) AS Total_Vendido
FROM 
    tbl_Productos_CAER p
JOIN 
    tbl_Detalles_del_Pedido_CAER ddp ON p.ID_Producto = ddp.ID_Producto
GROUP BY 
    p.Nombre
HAVING 
    SUM(ddp.Cantidad) > (SELECT AVG(Cantidad) FROM tbl_Detalles_del_Pedido_CAER);







--15


SELECT
    p.Estado,
    SUM(pr.Precio * ddp.Cantidad) AS Total_Ventas
FROM
    tbl_Pedidos_CAER p
JOIN
    tbl_Detalles_del_Pedido_CAER ddp ON p.ID_Pedido = ddp.ID_Pedido
JOIN
    tbl_Productos_CAER pr ON ddp.ID_Producto = pr.ID_Producto
GROUP BY
    p.Estado;


--6
SELECT 
    TRUNC(FechaPedido, 'MONTH') AS Mes,
    SUM(Cantidad) AS Total_Vendido
FROM 
    tbl_Pedidos_CAER pc
JOIN 
    tbl_Detalles_del_Pedido_CAER dp ON pc.ID_Pedido = dp.ID_Pedido
GROUP BY 
    TRUNC(FechaPedido, 'MONTH')
ORDER BY 
    Mes;



