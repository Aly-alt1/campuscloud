USE master;
GO

--Crear un login
CREATE LOGIN consulta_campus
WITH PASSWORD='P@sswordConsulta123!';

-- SELECCIONAMOS CampusCloud y creamos el usuario asociado
USE CampusCloud;
GO

CREATE USER consulta_campus
FOR LOGIN consulta_campus;

--Crear ROL rol_consukta
CREATE ROLE rol_consulta;

--Permisos de lectura
GRANT SELECT 
TO rol_consulta;

--Agregamos el usuario al Rol
ALTER ROLE rol_consulta
ADD MEMBER consulta_campus;

--LOGIN Operador
USE master;
GO

CREATE LOGIN operador_campus
WITH PASSWORD ='P@sswordOperador123!';

USE CampusCloud;
GO

CREATE USER operador_campus
FOR LOGIN operador_campus;

CREATE ROLE rol_operador;

GRANT SELECT, INSERT, UPDATE
TO rol_operador;

ALTER ROLE rol_operador
ADD MEMBER operador_campus;

--Login para admin
USE master;
GO

CREATE LOGIN admin_campus
WITH PASSWORD = 'P@sswordadmin123!';

USE CampusCloud;
go

CREATE USER admin_campus
FOR LOGIN admin_campus;
GO

ALTER ROLE db_owner
ADD MEMBER admin_campus;