-- Creación de la tabla tb_estudiantes_gmh
CREATE TABLE tbl_estudiantes_gmh (
    EstudianteID INTEGER PRIMARY KEY,
    Nombre VARCHAR2(255),
    Apellido VARCHAR2(255),
    Dni INTEGER,
    Telefono INTEGER,
    FechaDeNacimiento DATE,
    CorreoElectronico VARCHAR2(255),
    Genero VARCHAR2(10) CONSTRAINT chk_genero CHECK (Genero IN ('Masculino', 'Femenino' ))
);


-- Creación de la tabla tb_profesores_gmh
CREATE TABLE tbl_profesores_gmh (
    ProfesorID INTEGER PRIMARY KEY,
    Nombre VARCHAR2(255),
    Apellido VARCHAR2(255),
    Dni INTEGER,
    Telefono INTEGER,
    Especialidad VARCHAR2(255),
    CorreoElectronico VARCHAR2(255)
);

-- Creación de la tabla tb_asignaturas_gmh
CREATE TABLE tbl_asignaturas_gmh (
    AsignaturaID INTEGER PRIMARY KEY,
    Nombre VARCHAR2(255),
    Descripcion VARCHAR2(500),
    ProfesorID INTEGER,
    CONSTRAINT fk_profesor FOREIGN KEY (ProfesorID) REFERENCES tbl_profesores_gmh(ProfesorID)
);

-- Creación de la tabla tb_clases_gmh
CREATE TABLE tbl_clases_gmh (
    ClaseID INTEGER PRIMARY KEY,
    AsignaturaID INTEGER,
    ProfesorID INTEGER,
    Horario VARCHAR2(255),
    FOREIGN KEY (AsignaturaID) REFERENCES tbl_asignaturas_gmh(AsignaturaID),
    FOREIGN KEY (ProfesorID) REFERENCES tbl_profesores_gmh(ProfesorID)
);

-- Creación de la tabla tb_notas_gmh
CREATE TABLE tbl_notas_gmh (
    NotaID INTEGER PRIMARY KEY,
    EstudianteID INTEGER,
    AsignaturaID INTEGER,
    Valor DECIMAL(5,2),
    Fecha DATE,
    FOREIGN KEY (EstudianteID) REFERENCES tbl_estudiantes_gmh(EstudianteID),
    FOREIGN KEY (AsignaturaID) REFERENCES tbl_asignaturas_gmh(AsignaturaID)
);

CREATE TABLE tbl_asistencia_gmh (
    AsistenciaID INTEGER PRIMARY KEY,
    EstudianteID INTEGER,
    Fecha DATE,
    Presente CHAR(1),
    FOREIGN KEY (EstudianteID) REFERENCES tbl_estudiantes_gmh(EstudianteID)
);

