## Administracion de seguridad SQLServer

## Fundamentos

| Concepto | Nivel | Proposito | Ejemplo | 
|---|---|---|---|
|**Login**| Instancia de SQL Server | Autenticar una identidad ante el servidor|'admin_sql'| 
|**User**| Base de Datos | Representa la identidad ante el servidor | 'dbo' |
|**Rol de Servidor**| Instancia | Agrupa privilegios administrados a nivel de servidor | 'syadmin' |
|**Base de Datos Actual**| Sesión | Determinar el contexto de ejecucion de una consulta | 'master' |

# 1. Diagnostico de la conexion administrada

SELECT SUSER_NAME() AS LoginActual

-- Verifivca el privilegio del sysadmin

SELECT IS_SRVROLEMEMBER('sysadmin') AS [EsSysadmin]

-- 1 -> Pertenece al rol de consultas
-- 0 -> No pertenece a este rol


SELECT 
	SUSER_NAME() AS LoginActual
	IS_SRVROLEMEMBER('sysadmin') AS [EsSysadmin]
GO


SELECT 
	name,
	type_desc,
	is_disabled
FROM sys.server_principals
WHERE name = 'sa';

-- name -> nombre del principal
-- type_desc -> tipo de principal, para este caso principal es SQL_LOGIN
-- is_disabled -> 0 significa habilitado y el 1 desabilitado

SELECT
	DB_NAME() AS BaseActual;
GO

SELECT
	SUSER_NAME() AS LoginActual;
    USER_NAME() AS UsuarioBaseActual
    DB_NAME() AS BaseActual
    IS_SRVROLEMEMBER ('sysadimin')
    AS EsSysadmin;
GO

-- Creacion y prueba de un administrador alternativo
-- Para hacer un login siempre debemos estar en master

USE master;
GO

-- crear el login admin_sql

CREATE LOGIN admin_sql 
WITH PASSWORD = 'Admin@cloud#12',
CHECK_POLICY= ON; -- Para que se apliquen las politicas de seguridad de contraseñas

`CREATE LOGIN admin_sql : crea una identidad que puede autenticarse ante la instacioa
``WITH PASSWORD : define la contraseña para el login
``CHECK_POLICY= ON : solicitar aplicar la política de contraseñas correspondientes cuando esta disponible

-- Verificar si existe y está habilitado

SELECT 
	name,
	type_desc
	is_disabled
FROM sys.server_principals
WHERE name= 'admin_sql';
GO

-- Demostrar que crear un login no lo hace administrador

SELECT IS_SRVROLEMEMBER('sysadmin', 'admin_sql') AS EsSysadmin;

-- Agregar admin_sql al rol de servidor sysadmin

ALTER SERVER ROLE sysadmin
ADD MEMBER admin_sql
GO

-- validar la nueva membresia
SELECT IS_SRVROLEMEMBER('sysadmin', 'admin_sql') AS EsSysadmin;
