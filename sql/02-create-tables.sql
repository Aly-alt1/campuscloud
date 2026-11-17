CREATE TABLE Estudiantes (
	id_estudiante INT NOT NULL
	CONSTRAINT pk_estudiantes
	PRIMARY KEY (id_estudiante),
	matricula VARCHAR(20) NOT NULL
	CONSTRAINT uq_matricula
	UNIQUE,
	nombre VARCHAR(100) NOT NULL,
	correo VARCHAR(100) NOT NULL
);
GO


CREATE TABLE Servicios (
	id_servicio INT PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(200)
);
GO



CREATE TABLE Solicitudes (
	id_solicitud INT NOT NULL,
	id_estudiante INT NOT NULL,
	id_servicio INT NOT NULL,
	fecha DATE NOT NULL,
	estado VARCHAR(30) NOT NULL,
	CONSTRAINT pk_solicitudes
	PRIMARY KEY(id_solicitud),
	CONSTRAINT fk_solicitudes_estudiantes
	FOREIGN KEY(id_estudiante)
	REFERENCES Estudiantes(id_estudiante),
	CONSTRAINT fk_solicitudes_servicios
	FOREIGN KEY(id_servicio)
	REFERENCES Servicios(id_servicio)

);