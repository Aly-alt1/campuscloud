# Roles de Seguridad Fijos en SQL Server

SQL Server administra los permisos a través de roles fijos organizados en dos niveles principales: **Nivel de Servidor** (afectan a toda la instancia) y **Nivel de Base de Datos** (afectan solo a una base de datos específica).

---

## Tabla Comparativa de Roles

| Nivel | Rol Fijo | Descripción / Permisos Principales |
| :--- | :--- | :--- |
| **Servidor** | `sysadmin` | Control total sobre **toda** la instancia de SQL Server. Puede realizar cualquier operación administrativa, de configuración, seguridad o sobre cualquier base de datos. |
| **Servidor** | `serveradmin` | Puede cambiar las opciones de configuración de todo el servidor y apagar el motor de base de datos. |
| **Servidor** | `securityadmin` | Administra los inicios de sesión (*logins*) del servidor y sus credenciales. Puede auditar, crear y modificar inicios de sesión. |
| **Servidor** | `dbcreator` | Puede crear, alterar, eliminar y restaurar cualquier base de datos en el servidor. |
| **Servidor** | `diskadmin` | Administra los archivos de disco (como la creación o expansión de archivos de datos y registros). |
| **Servidor** | `processadmin` | Puede finalizar procesos (*threads* o sesiones) que se estén ejecutando en la instancia de SQL Server. |
| **Servidor** | `setupadmin` | Puede agregar y quitar servidores vinculados (*linked servers*) mediante procedimientos almacenados. |
| **Servidor** | `bulkadmin` | Puede ejecutar la instrucción `BULK INSERT` para importar grandes volúmenes de datos desde archivos de texto. |
| | | |
| **Base de Datos** | `db_owner` | Control total sobre **una** base de datos específica. Puede realizar cualquier acción de datos, estructura (DDL) y gestión de usuarios internos. |
| **Base de Datos** | `db_securityadmin` | Administra la seguridad de la base de datos (roles, miembros de roles y permisos a nivel de objetos). |
| **Base de Datos** | `db_accessadmin` | Agrega o elimina accesos a la base de datos para inicios de sesión de Windows o del servidor. |
| **Base de Datos** | `db_backupoperator` | Puede realizar copias de seguridad (*backups*) de la base de datos. |
| **Base de Datos** | `db_ddladmin` | Puede ejecutar cualquier comando del lenguaje de definición de datos (DDL) para crear, modificar o eliminar objetos (tablas, vistas, etc.). |
| **Base de Datos** | `db_datareader` | Puede leer (*SELECT*) datos de cualquier tabla o vista de la base de datos. |
| **Base de Datos** | `db_datawriter` | Puede agregar, modificar y eliminar (*INSERT*, *UPDATE*, *DELETE*) datos en cualquier tabla. |
| **Base de Datos** | `db_denydatareader` | **Bloquea** la lectura de datos; ningún usuario o rol en este grupo puede consultar tablas, sin importar otros permisos. |
| **Base de Datos** | `db_denydatawriter` | **Bloquea** la modificación de datos; prohíbe insertar, actualizar o eliminar registros en la base de datos. |

---

## Ejemplos de Asignación con T-SQL

### 1. Asignar rol a nivel de servidor
```sql
-- Agregar un Login al rol sysadmin
ALTER SERVER ROLE sysadmin ADD MEMBER [NombreUsuario];
```

### 2. Asignar rol a nivel de base de datos
```sql
USE [NombreBaseDatos];
GO

-- Agregar un usuario al rol db_owner
ALTER ROLE db_owner ADD MEMBER [NombreUsuario];
```