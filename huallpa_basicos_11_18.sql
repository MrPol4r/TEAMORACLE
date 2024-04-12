-- 1. Listar todos los estudiantes:
SELECT * FROM tbl_estudiantes_gmh;

-- 2. Listar todos los profesores:
SELECT * FROM tbl_profesores_gmh;

-- 3. Obtener los detalles de una asignatura específica:
SELECT * FROM tbl_asignaturas_gmh WHERE Nombre = 'Matematicas';

-- 4. Listar todas las clases con sus horarios:
SELECT * FROM tbl_clases_gmh;

-- 5. Ver las notas de un estudiante específico:
SELECT * FROM tbl_notas_gmh WHERE EstudianteID = 1;

-- 6. Buscar estudiantes por apellido:
SELECT * FROM tbl_estudiantes_gmh WHERE Apellido LIKE '%Gomez%';

-- 7. Contar el número de estudiantes:
SELECT COUNT(*) FROM tbl_estudiantes_gmh;

-- 8. Listar los profesores de una especialidad específica:
SELECT * FROM tbl_profesores_gmh WHERE Especialidad = 'Historia';

-- 9. Ver las clases impartidas por un profesor específico:
SELECT * FROM tbl_clases_gmh WHERE ProfesorID = 2;

-- 10. Encontrar el promedio de notas en una asignatura específica:
SELECT AVG(Valor) FROM tbl_notas_gmh WHERE AsignaturaID = 3;


-- 11. Listar estudiantes y sus notas en cada asignatura:
SELECT e.Nombre AS Nombre_Estudiante, e.Apellido AS Apellido_Estudiante, a.Nombre AS Nombre_Asignatura, n.Valor 
FROM tbl_estudiantes_gmh e 
JOIN tbl_notas_gmh n ON e.EstudianteID = n.EstudianteID 
JOIN tbl_asignaturas_gmh a ON n.AsignaturaID = a.AsignaturaID;

-- 12. Obtener detalles completos de las clases incluyendo profesor y asignatura:
SELECT c.Horario, p.Nombre AS Nombre_Profesor, a.Nombre AS Nombre_Asignatura 
FROM tbl_clases_gmh c 
JOIN tbl_profesores_gmh p ON c.ProfesorID = p.ProfesorID 
JOIN tbl_asignaturas_gmh a ON c.AsignaturaID = a.AsignaturaID;

-- 13. Encontrar todos los estudiantes de un profesor específico:
SELECT DISTINCT e.Nombre, e.Apellido 
FROM tbl_estudiantes_gmh e 
JOIN tbl_notas_gmh n ON e.EstudianteID = n.EstudianteID 
JOIN tbl_clases_gmh c ON n.AsignaturaID = c.AsignaturaID 
WHERE c.ProfesorID = 2;

-- 14. Listar profesores y el número de clases que imparten:
SELECT p.Nombre, p.Apellido, COUNT(*) AS Numero_Clases 
FROM tbl_profesores_gmh p 
JOIN tbl_clases_gmh c ON p.ProfesorID = c.ProfesorID 
GROUP BY p.Nombre, p.Apellido;

-- 15. Obtener el estudiante con la nota más alta en cada asignatura:
SELECT a.Nombre AS Nombre_Asignatura, e.Nombre AS Nombre_Estudiante, e.Apellido AS Apellido_Estudiante, MAX(n.Valor) AS Nota_Mas_Alta 
FROM tbl_asignaturas_gmh a 
JOIN tbl_notas_gmh n ON a.AsignaturaID = n.AsignaturaID 
JOIN tbl_estudiantes_gmh e ON n.EstudianteID = e.EstudianteID 
GROUP BY a.Nombre, e.Nombre, e.Apellido;

-- 16. Mostrar las notas de todos los estudiantes en una clase particular:
SELECT e.Nombre AS Nombre_Estudiante, e.Apellido AS Apellido_Estudiante, n.Valor 
FROM tbl_estudiantes_gmh e 
JOIN tbl_notas_gmh n ON e.EstudianteID = n.EstudianteID 
WHERE n.AsignaturaID IN (SELECT AsignaturaID FROM tbl_clases_gmh WHERE ClaseID = 2);


-- 17. Listar asignaturas que no tienen asignado un profesor:

SELECT a.Nombre 
FROM tbl_asignaturas_gmh a 
LEFT JOIN tbl_clases_gmh c ON a.AsignaturaID = c.AsignaturaID 
WHERE c.ProfesorID IS NULL;

-- 18. Encontrar profesores que no están enseñando ninguna clase:
SELECT p.Nombre, p.Apellido 
FROM tbl_profesores_gmh p 
LEFT JOIN tbl_clases_gmh c ON p.ProfesorID = c.ProfesorID 
WHERE c.AsignaturaID IS NULL;






--50
SELECT a.Nombre AS Asignatura, AVG(nt.Valor) AS Promedio 
FROM tbl_asignaturas_gmh a 
JOIN tbl_notas_gmh nt ON a.AsignaturaID = nt.AsignaturaID 
GROUP BY a.Nombre;


SELECT p.Nombre, p.Apellido 
FROM tbl_profesores_gmh p 
WHERE 3 <= (SELECT COUNT(DISTINCT AsignaturaID) 
            FROM tbl_clases_gmh 
            WHERE ProfesorID = p.ProfesorID);

SELECT e.Nombre, e.Apellido 
FROM tbl_estudiantes_gmh e 
WHERE EXISTS ( 
    SELECT 1 
    FROM tbl_notas_gmh n1 
    WHERE n1.EstudianteID = e.EstudianteID 
    AND n1.Valor < ANY ( 
        SELECT n2.Valor 
        FROM tbl_notas_gmh n2 
        WHERE n2.EstudianteID = n1.EstudianteID 
        AND n2.Fecha > n1.Fecha 
        AND n2.AsignaturaID = n1.AsignaturaID 
    ) 
);


SELECT p.Nombre, p.Apellido 
FROM tbl_profesores_gmh p 
WHERE NOT EXISTS ( 
    SELECT * 
    FROM tbl_clases_gmh c 
    JOIN tbl_notas_gmh n ON c.AsignaturaID = n.AsignaturaID 
    WHERE c.ProfesorID = p.ProfesorID 
    AND n.Valor < 6 
);





SELECT p.Nombre, p.Apellido 
FROM tbl_profesores_gmh p 
WHERE 3 <= (SELECT COUNT(DISTINCT AsignaturaID) 
            FROM tbl_clases_gmh 
            WHERE ProfesorID = p.ProfesorID);

-- Insertar más registros en tbl_clases_gmh para un profesor que enseña múltiples asignaturas
INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (6, 2, 1, 'Martes 08:00 - 10:00');

INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (7, 3, 1, 'Miércoles 10:00 - 12:00');

-- Insertar registros para un profesor diferente que enseña tres asignaturas diferentes
INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (8, 1, 2, 'Lunes 10:00 - 12:00');

INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (9, 4, 2, 'Jueves 08:00 - 10:00');

INSERT INTO tbl_clases_gmh (ClaseID, AsignaturaID, ProfesorID, Horario)
VALUES (10, 5, 2, 'Viernes 10:00 - 12:00');


-- Insertar registros de notas para María Gomez
INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (6, 1, 2, 6.0, TO_DATE('2024-05-08', 'YYYY-MM-DD'));

INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (7, 1, 3, 7.5, TO_DATE('2024-05-08', 'YYYY-MM-DD'));

INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (8, 1, 4, 8.0, TO_DATE('2024-05-08', 'YYYY-MM-DD'));

INSERT INTO tbl_notas_gmh (NotaID, EstudianteID, AsignaturaID, Valor, Fecha)
VALUES (9, 1, 5, 9.0, TO_DATE('2024-05-08', 'YYYY-MM-DD'));


SELECT e.Nombre, e.Apellido 
FROM tbl_estudiantes_gmh e 
WHERE NOT EXISTS ( 
    SELECT p.ProfesorID 
    FROM tbl_profesores_gmh p 
    WHERE NOT EXISTS ( 
        SELECT c.ProfesorID 
        FROM tbl_clases_gmh c 
        JOIN tbl_notas_gmh n ON c.AsignaturaID = n.AsignaturaID 
        WHERE n.EstudianteID = e.EstudianteID 
        AND c.ProfesorID = p.ProfesorID 
    ) 
);


