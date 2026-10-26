CREATE DATABASE tienda_informatica;
USE tienda_informatica;
CREATE TABLE Proveedor (
	código varchar (10) PRIMARY KEY,
	nombres varchar (50) NOT NULL,
	apellidos varchar (50) NOT NULL,
	dirección text,
	numeroTelefonico varchar (10) NOT NULL,
	provincia varchar (35) NOT NULL
	);

CREATE TABLE Cliente (
	código varchar (10) PRIMARY KEY,
	nombres varchar (50) NOT NULL,
	apellidos varchar (50) NOT NULL,
	dirección text,
	numeroTelefonico varchar (10) NOT NULL
	);

CREATE TABLE Producto (
	código varchar (7) PRIMARY KEY,
	descripción text,
	precio double NOT NULL
	);

CREATE TABLE Compra (
	identificador varchar (9) PRIMARY KEY,
	fecha Date NOT NULL	
	);


CREATE TABLE Producto_Compra (
	producto varchar (7) NOT NULL,
	compra varchar (9) NOT NULL,
	PRIMARY KEY (producto, compra),
	FOREIGN KEY (producto)
	REFERENCES Producto (código),
	FOREIGN KEY (compra)
	REFERENCES Compra (identificador)
	);

CREATE TABLE Cliente_Compra (
	cliente varchar (7) NOT NULL,
	compra varchar (9) NOT NULL,
	PRIMARY KEY (cliente, compra),
	FOREIGN KEY (compra)
	REFERENCES Compra (identificador),
	FOREIGN KEY (cliente)
	REFERENCES Cliente (código)
	);

CREATE TABLE Proveedor_Producto (
	producto varchar (7) NOT NULL,
	proveedor varchar (10) NOT NULL,
	PRIMARY KEY (producto, proveedor),
	FOREIGN KEY (producto)
	REFERENCES Producto (código),
	FOREIGN KEY (proveedor)
	REFERENCES Proveedor (código)
	);