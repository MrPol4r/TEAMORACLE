-- Creación de la tabla tb_estudiantes_gmh
CREATE TABLE tb_estudiantes_gmh (
    EstudianteID INTEGER PRIMARY KEY,
    Nombre VARCHAR2(255),
    Apellido VARCHAR2(255),
    Dni INTEGER,
    Telefono INTEGER,
    FechaDeNacimiento DATE,
    CorreoElectronico VARCHAR2(255)
);

-- Creación de la tabla tb_profesores_gmh
CREATE TABLE tb_profesores_gmh (
    ProfesorID INTEGER PRIMARY KEY,
    Nombre VARCHAR2(255),
    Apellido VARCHAR2(255),
    Dni INTEGER,
    Telefono INTEGER,
    Especialidad VARCHAR2(255),
    CorreoElectronico VARCHAR2(255)
);

-- Creación de la tabla tb_asignaturas_gmh
CREATE TABLE tb_asignaturas_gmh (
    AsignaturaID INTEGER PRIMARY KEY,
    Nombre VARCHAR2(255),
    Descripcion VARCHAR2(500)
);

-- Creación de la tabla tb_clases_gmh
CREATE TABLE tb_clases_gmh (
    ClaseID INTEGER PRIMARY KEY,
    AsignaturaID INTEGER,
    ProfesorID INTEGER,
    Horario VARCHAR2(255),
    FOREIGN KEY (AsignaturaID) REFERENCES tb_asignaturas_gmh(AsignaturaID),
    FOREIGN KEY (ProfesorID) REFERENCES tb_profesores_gmh(ProfesorID)
);

-- Creación de la tabla tb_notas_gmh
CREATE TABLE tb_notas_gmh (
    NotaID INTEGER PRIMARY KEY,
    EstudianteID INTEGER,
    AsignaturaID INTEGER,
    Valor DECIMAL(5,2),
    Fecha DATE,
    FOREIGN KEY (EstudianteID) REFERENCES tb_estudiantes_gmh(EstudianteID),
    FOREIGN KEY (AsignaturaID) REFERENCES tb_asignaturas_gmh(AsignaturaID)
);
