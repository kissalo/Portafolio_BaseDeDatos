CREATE DATABASE clinica_medica;
USE clinica_medica;
CREATE TABLE Especialidad (
	código varchar (15) PRIMARY KEY
	);

CREATE TABLE Medico (
	código varchar (10) PRIMARY KEY,
	especialidad varchar (15) NOT NULL,
	FOREIGN KEY (especialidad)
	REFERENCES Especialidad (código)
	);

CREATE TABLE Paciente (
	código varchar (10) PRIMARY KEY
	);

CREATE TABLE Cita (
	código varchar (5) PRIMARY KEY,
	fecha Date NOT NULL,
	hora DateTime NOT NULL,
	consultorio varchar (6) NOT NULL,
	paciente varchar (10) NOT NULL,
	medico varchar (10) NOT NULL,
	FOREIGN KEY (paciente) 
	REFERENCES Paciente (código),
	FOREIGN KEY (medico) 
	REFERENCES Medico (código)
	);

CREATE TABLE Receta (
	código varchar (7) PRIMARY KEY,
	dosis text NOT NULL,
	duración int NOT NULL,
	cita varchar (5) NOT NULL,
	FOREIGN KEY (cita) 
	REFERENCES Cita (código)
	);
	
CREATE TABLE Medicamento (
	código varchar (7) PRIMARY KEY,
	receta varchar (7) NOT NULL,
	FOREIGN KEY (receta) 
	REFERENCES Receta (código)
	);