CREATE DATABASE pedidos_restaurante;
USE pedidos_restaurante;
CREATE TABLE Cliente (
	código varchar (10) PRIMARY KEY
	);

CREATE TABLE Pedido (
	código varchar (5) PRIMARY KEY,
	precio double NOT NULL,
	cliente varchar (10) NOT NULL UNIQUE,
	FOREIGN KEY (cliente)
	REFERENCES Cliente (código)
	);

CREATE TABLE Plato (
	código varchar (5) PRIMARY KEY,
	categoria varchar (15) NOT NULL,
	pedido varchar (5) NOT NULL,
	FOREIGN KEY (pedido)
	REFERENCES Pedido (código)
	);