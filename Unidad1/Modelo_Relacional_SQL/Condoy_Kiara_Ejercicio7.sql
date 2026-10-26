CREATE DATABASE empresa_discografica;
USE empresa_discografica;
CREATE TABLE Cantante (
	identificador varchar (10) PRIMARY KEY,
	nombre varchar (50) NOT NULL,
	país varchar (35) NOT NULL
	);

CREATE TABLE GeneroMusical (
	identificador varchar (25) PRIMARY KEY
	);

CREATE TABLE Disco (
	identificador varchar (7) PRIMARY KEY,
	titulo varchar (35) NOT NULL,
	precio double NOT NULL,
	generoMusical varchar (25) NOT NULL,
	cantante varchar (10) NOT NULL,
	FOREIGN KEY (cantante)
	REFERENCES Cantante (identificador) 
	);

CREATE TABLE Cancion (
	identificador varchar (15) PRIMARY KEY,
	titulo varchar (35) NOT NULL,
	disco varchar (7) NOT NULL,
	FOREIGN KEY (disco)
	REFERENCES Disco (identificador) 
	);

CREATE TABLE Disco_Cancion (
	cancion varchar (15),
	disco varchar (7),
	PRIMARY KEY (cancion, disco),
	FOREIGN KEY (disco)
	REFERENCES Disco (identificador),
	FOREIGN KEY (cancion)
	REFERENCES Cancion (identificador)
	);