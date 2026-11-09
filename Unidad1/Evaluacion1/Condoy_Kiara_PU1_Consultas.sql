SELECT c.id_cancha, c.tipo
FROM cancha c
WHERE c.id_cancha NOT IN (SELECT id_cancha FROM reserva);


SELECT id_jugador,
       COUNT(id_reserva) AS total_reservas,
       COUNT(DISTINCT id_cancha) AS canchas_distintas
FROM reserva
GROUP BY id_jugador;



SELECT horarioInicio, horarioFin, cancha
FROM   horario
WHERE  isDisponible == False;


SELECT j.nombre, j.telefono
FROM   jugador j
JOIN   reserva r ON j.idJugador = r.jugador
JOIN   horario h ON r.horario   = h.id
WHERE  TIME(h.horaInicio) = '08:00:00';


SELECT   h.cancha,
         COUNT (r.id)        AS totalReservas,
         SUM (r.precioTotal) AS recaudado
FROM     reserva r
JOIN     horario h ON r.horario = h.id
GROUP BY h.cancha;
