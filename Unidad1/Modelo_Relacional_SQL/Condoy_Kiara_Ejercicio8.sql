CREATE DATABASE camiones;
USE camiones;
CREATE TABLE Camionero (
	cedula varchar (10) PRIMARY KEY,
	telefono varchar (10) NOT NULL,
	nombre varchar (50) NOT NULL,
	direcccion text,
	salario double NOT NULL,
	poblacion varchar (35) NOT NULL
	);

CREATE TABLE Camion (
	matricula varchar (8) PRIMARY KEY,
	modelo varchar (25) NOT NULL,
	tipo varchar (25) NOT NULL,
	potencia double NOT NULL
	);

CREATE TABLE Provincia (
	codigo varchar (35) PRIMARY KEY,
	nombre varchar (50) NOT NULL
	);

CREATE TABLE Paquete (
	codigo varchar (7) PRIMARY KEY,
	destinatario varchar (15) NOT NULL,
	direccionDestinatario text NOT NULL,
	descripcion text,
	provincia varchar (35) NOT NULL,
	camionero varchar (10) NOT NULL,
	FOREIGN KEY (provincia)
	REFERENCES Provincia (codigo),
	FOREIGN KEY (camionero)
	REFERENCES Camionero (cedula)	
	);

CREATE TABLE Camionero_Camion (
	camionero varchar (10) NOT NULL,
	camion varchar (8) NOT NULL,
	FOREIGN KEY (camion)
	REFERENCES Camion (matricula),
	FOREIGN KEY (camionero)
	REFERENCES Camionero (cedula)
	);