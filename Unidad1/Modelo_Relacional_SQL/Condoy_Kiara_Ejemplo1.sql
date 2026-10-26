CREATE DATABASE sistemabiblioteca;
USE sistemabiblioteca;
CREATE TABLE Libro (
código varchar(5) PRIMARY KEY
);

CREATE TABLE Autor (
código varchar(5) PRIMARY KEY
);

CREATE TABLE Libro_Autor (
libro varchar (5) NOT NULL,
autor varchar (5) NOT NULL,
PRIMARY KEY (libro, autor),
FOREIGN KEY (libro) 
REFERENCES Libro (código),
FOREIGN KEY (autor) 
REFERENCES Autor (codigo)
);

CREATE TABLE Socio (
código varchar(5) PRIMARY KEY
);

CREATE TABLE Prestamo (
código varchar (5) PRIMARY KEY,
fechaRetiro Date NOT NULL,
fechaDevolucion Date NOT NULL,
libro varchar (5) NOT NULL,
socio varchar (5) NOT NULL,
FOREIGN KEY (libro) 
REFERENCES Libro (código)
);