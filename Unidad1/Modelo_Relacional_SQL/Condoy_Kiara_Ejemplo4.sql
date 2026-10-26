CREATE DATABASE sistema_aerolinea;
USE sistema_aerolinea;
CREATE TABLE Avion (
	código varchar (7) PRIMARY KEY
	);

CREATE TABLE Vuelo (
	numero varchar (10) PRIMARY KEY,
	fecha Date NOT NULL,
	origen varchar (20) NOT NULL,
	destino varchar (20) NOT NULL,
	avion varchar (7) NOT NULL,
	FOREIGN KEY (avion)
	REFERENCES Avion (código)
	);

CREATE TABLE Pasajero (
	código varchar (10) PRIMARY KEY
	);

CREATE TABLE Reserva (
	código varchar (7) PRIMARY KEY,
	asiento int NOT NULL,
	tarifaPagada double NOT NULL,
	vuelo varchar (10) NOT NULL,
	pasajero varchar (10) NOT NULL,
	FOREIGN KEY (vuelo)
	REFERENCES Vuelo (numero),
	FOREIGN KEY (pasajero)
	REFERENCES Pasajero (código)
	);