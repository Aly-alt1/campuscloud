use CampusCloud;
SELECT * FROM Estudiantes;

INSERT INTO Estudiantes
VALUES (3, '2045601','Maximina Buen Rostro', 'maxi@universidad.com');

UPDATE Estudiantes
SET nombre = 'Maximina Mal Rostro'
WHERE id_estudiante = 3;

DELETE Estudiantes
WHERE id_estudiante = 3;

--cambiar al contexto del usuario

EXECUTE AS USER ='consulta_campus';
GO

SELECT * FROM Estudiantes;
INSERT INTO Estudiantes
VALUES (3, '2045601','Maximina Buen Rostro', 'maxi@universidad.com');

UPDATE Estudiantes
SET nombre = 'Maximina Mal Rostro'
WHERE id_estudiante = 3;

DELETE Estudiantes
WHERE id_estudiante = 3;

REVERT;
GO

--cambiar al contexto de usuario operador_campus
EXECUTE AS USER = 'operador_campus';
GO

SELECT 
	SYSTEM_USER AS [Login_Original],
	CURRENT_USER AS [USUARIO_BD_ACTUAL],
	USER_NAME() AS [NOMBRE_USUARIO]
	

	SELECT * FROM Servicios;

	INSERT INTO Estudiantes
VALUES (3, '2045601','Maximina Buen Rostro', 'maxi@universidad.com');

UPDATE Estudiantes
SET nombre = 'Maximina Mal Rostro'
WHERE id_estudiante = 3;

DELETE Estudiantes
WHERE id_estudiante = 3;

REVERT;
GO