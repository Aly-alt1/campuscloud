USE CampusCloud;
GO

INSERT INTO Estudiantes (id_estudiante,matricula,nombre,correo)
VALUES (1, '2026001', 'Ana Lopez', 'ana@universidad.com'),
	   (2, '2026002', 'Carlos Hernandez', 'carlos@universidad');

INSERT INTO Servicios(id_servicio,nombre, descripcion)
VALUES (1, 'constancia de estudios', 'solicitud de constancia academica'),
	   (2, 'Prestamo de Laboratorio', 'Se reservo equipo o espacio de laboratorio');

INSERT INTO Solicitudes(id_solicitud, id_estudiante, id_servicio, fecha, estado)
VALUES (1001,1,1,'2026-10-22', 'Pendiente'),
		(1002,2,2,'2026-10-22','Pendiente');

SELECT * FROM Estudiantes;
SELECT * FROM Servicios;
SELECT * FROM Solicitudes;