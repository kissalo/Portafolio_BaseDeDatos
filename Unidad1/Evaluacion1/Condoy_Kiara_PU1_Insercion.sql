
INSERT INTO organizacion (id, nombre, zona, email, telefono) VALUES
('organizacion001', 'Deportivo El Fortin', 'Norte', 'elfortin@gmail.com', '0969814868'),
('organizacion002', 'Canchas Parque El Pucará', 'Este', 'pucara_canchas@gmail.com', '0979513816'),
('organizacion003', 'Canchas Borja', 'Norte', 'borja_complejo@gmail.com', '0992226413'),
('organizacion004', 'Complejo Canchas del Sur', 'Sur', 'surcanchas@gmail.com', '0999714766'),
('organizacion005', 'Canchas Los Rosales', 'Oeste', 'losrosales@gmail.com', '0994498565');

INSERT INTO cancha (id, nombre, superficie, tieneIluminacion, tieneCubierta, precioHora, organizacion) VALUES
('cancha001', 'CanchaA', 'pasto sintetico', TRUE, FALSE, 25.5, 'organizacion001'),
('cancha002', 'CanchaB', 'pasto sintetico', TRUE, FALSE, 25.5, 'organizacion001'),
('cancha003', 'CanchaSintetica', 'pasto sintetico', TRUE, FALSE, 25.5, 'organizacion002'),
('cancha004', 'Cancha1', 'pasto sintetico', TRUE, FALSE, 25.5, 'organizacion003'),
('cancha005', 'Cancha Grande', 'pasto', TRUE, FALSE, 25.5, 'organizacion004'),
('cancha006', 'Cancha Principal', 'pasto sintetico', TRUE, FALSE, 25.5, 'organizacion005'),
('cancha007', 'CanchaVoley', 'goma', TRUE, FALSE, 25.5, 'organizacion002');

INSERT INTO horario (id, horaInicio, horaFin, isDisponible, cancha) VALUES
('horario01', '2026-10-04 08:00:00', '2026-10-04 09:00:00', FALSE, 'cancha005'),
('horario02', '2026-10-05 09:00:00', '2026-10-05 10:00:00', FALSE, 'cancha005'),
('horario03', '2026-11-14 08:00:00', '2026-11-14 09:00:00', FALSE, 'cancha002'),
('horario04', '2026-11-15 09:00:00', '2026-11-15 10:00:00', FALSE, 'cancha003'),
('horario05', '2026-11-30 13:00:00', '2026-11-30 14:00:00', FALSE, 'cancha007'),
('horario06', '2026-11-30 12:00:00', '2026-11-30 13:00:00', TRUE, 'cancha007'),
('horario07', '2026-11-30 16:00:00', '2026-11-30 17:00:00', TRUE, 'cancha004');

INSERT INTO jugador (idJugador, email, nombre, telefono) VALUES
('1105853285', 'kiarasalomecm@gmail.com', 'Kiara Condoy', '0989715757'),
('1150258664', 'lilianagranda@hotmail.com', 'Liliana Granda', '0994498626'),
('1152568719', 'omarcueva@gmail.com', 'Omar Cueva', '0959816523'),
('1106684928', 'josedanielbueno@yahoo.com', 'Jose Bueno', '0968600262'),
('1157489324', 'dannacorrea@hotmail.com', 'Danna Correa', '0993364875'),
('1106981351', 'elizaeli@gmail.com', 'Elizabeth Samaniego', '0926587469');

INSERT INTO reserva (id, fecha, precioTotal, horario, jugador) VALUES
('reserva00001', '2026-10-04', 25.5, 'horario01', '1105853285'),
('reserva00002', '2026-10-05', 23.0, 'horario02', '1150258664'),
('reserva00003', '2026-11-14', 35.0, 'horario03', '1152568719'),
('reserva00004', '2026-11-15', 32.5, 'horario04', '1106684928'),
('reserva00005', '2026-11-30', 29.5, 'horario05', '1157489324');
