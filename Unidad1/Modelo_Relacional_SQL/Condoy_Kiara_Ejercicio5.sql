CREATE DATABASE empresa_discografica;
USE empresa_discografica;
CREATE TABLE Manager (
	identificador varchar (10) PRIMARY KEY,
	nombre varchar (50) NOT NULL
	);

CREATE TABLE Artista(
	NIF varchar (10) PRIMARY KEY,
	nombreCompleto varchar (50) NOT NULL,
	manager varchar (10) NOT NULL,
	FOREIGN KEY (manager)
	REFERENCES Manager (identificador)
	);

CREATE TABLE EventoPromocional (
	identificador varchar (7) PRIMARY KEY,
	numeroAsistentes int,
	fechaCelebracion Date NOT NULL
	);

CREATE TABLE Artista_Evento(
	artista varchar (10) NOT NULL,
	evento varchar (7) NOT NULL,
	PRIMARY KEY (artista, evento),
	FOREIGN KEY (artista)
	REFERENCES Artista (NIF),
	FOREIGN KEY (evento)
	REFERENCES EventoPromocional (identificador)
	);