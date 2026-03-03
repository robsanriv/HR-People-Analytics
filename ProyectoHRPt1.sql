CREATE DATABASE IF NOT EXISTS ProyectoHR;
USE ProyectoHR;

-- Tabla 1: Datos básicos
CREATE TABLE Dim_Empleados (
    emp_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    genero VARCHAR(20),
    fecha_contratacion DATE
);

-- Tabla 2: Estructura empresa
CREATE TABLE Dim_Departamentos (
    dept_id INT PRIMARY KEY,
    nombre_dept VARCHAR(50),
    sueldo_base DOUBLE
);

-- Tabla 3: Resultados (Hechos)
CREATE TABLE Fact_Desempeno (
    eval_id INT PRIMARY KEY,
    emp_id INT,
    dept_id INT,
    puntaje_eval INT, -- Del 1 al 5
    dias_ausente INT,
    estatus_activo VARCHAR(10), -- 'Si' o 'No'
    FOREIGN KEY (emp_id) REFERENCES Dim_Empleados(emp_id),
    FOREIGN KEY (dept_id) REFERENCES Dim_Departamentos(dept_id)
);