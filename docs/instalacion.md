
# Guía de Instalación y Despliegue — CampusCloud (Unidad II)

## 1. Requisitos del Sistema
* **Sistema Operativo:** Windows 10/11 con WSL2 habilitado.
* **Motor de Contenedores:** Docker Desktop con soporte para Docker Compose v2.
* **Clientes de Administración:** MongoDB Compass, navegador web (Neo4j Browser) y terminal PowerShell.

## 2. Preparación de Red y Variables de Entorno

1. **Crear la red externa compartida** (si no se creó en la Unidad I):
   ```powershell
   docker network create campuscloud-nwt