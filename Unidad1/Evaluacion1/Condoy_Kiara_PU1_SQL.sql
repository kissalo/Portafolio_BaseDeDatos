CREATE DATABASE field_pal;
USE field_pal;

CREATE TABLE organizacion (
    id VARCHAR(15) PRIMARY KEY,
    descripcion TEXT,
    nombre VARCHAR(75) NOT NULL,
    zona SET('Sur','Norte','Este','Oeste') NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    direccion TEXT,
    telefono VARCHAR(10) NOT NULL
);
CREATE TABLE cancha (
    id VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(75) NOT NULL,
    superficie VARCHAR(25) NOT NULL,
    tieneIluminacion BOOLEAN,
    tieneCubierta BOOLEAN,
    precioHora DOUBLE NOT NULL,
    organizacion VARCHAR(15) NOT NULL,
    FOREIGN KEY (organizacion) REFERENCES organizacion(id)
);
CREATE TABLE horario (
    id VARCHAR(9) PRIMARY KEY,
    horaInicio DATETIME NOT NULL,
    horaFin DATETIME NOT NULL,
    isDisponible BOOLEAN NOT NULL,
    cancha VARCHAR(9) NOT NULL,
    FOREIGN KEY (cancha) REFERENCES cancha(id)
);
CREATE TABLE jugador (
    idJugador VARCHAR(10) PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(10) NOT NULL
);

CREATE TABLE reserva (
    id VARCHAR(12) PRIMARY KEY,
    fecha DATE NOT NULL,
    precioTotal DOUBLE NOT NULL,
    horario VARCHAR(9) NOT NULL,
    jugador VARCHAR(10) NOT NULL,
    FOREIGN KEY (horario) REFERENCES horario(id),
    FOREIGN KEY (jugador) REFERENCES jugador(idJugador)
);
