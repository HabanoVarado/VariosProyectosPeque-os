CREATE DATABASE CLINICA

USE CLINICA
GO 

 CREATE TABLE UNIDADES(
 idUnidad int primary key,
 NomPlanta varchar(30) NOT NULL,
 NroPlanta TINYINT NOT NULL,
 )

 CREATE TABLE Director(
 idDirector INT PRIMARY KEY IDENTITY (1,1),
 NombreDirector VARCHAR(50) NOT NULL,
 Especialidad VARCHAR (30) NOT NULL,
 CONSTRAINT fk_UNIDADES FOREIGN KEY UNIDADES REFERENCES UNIDADES (Id),
 )

 CREATE TABLE UNIDADPACIENTES(
 UnidadPaciente INT PRIMARY KEY IDENTITY (1,1),
 CONSTRAINT fk_UNIDADES FOREIGN KEY (idUnidad) REFERENCES UNIDADES (idUnidad)
 CONSTRAINT fk_Paciente FOREIGN KEY (idPaciente) REFERENCES Pacientes ( idPaciente)
 FECHA TINYINT 
 )

 CREATE TABLE Paciente (
 idPaciente INT PRIMARY KEY ,
 NombrePaciente VARCHAR (50),
 Edad TINYINT
 )

CREATE TABLE Ingreso (
idIngreso INT PRIMARY KEY IDENTITY (1,1),
CONSTRAINT fk_idPaciente FOREIGN KEY (idPaciente) REFERENCES Pacientes ( idPacientes),
FechaIngreso TINYINT,
FechaSalida TINYINT,
)




