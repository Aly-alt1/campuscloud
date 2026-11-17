# Comparación: Despliegue Local (Docker) vs. Servicios Administrados en la Nube

## Diferencia Arquitectónica Fundamental
El entorno implementado en **CampusCloud** mediante Docker Desktop constituye un laboratorio reproducible de un solo nodo por motor. **No equivale 1:1 a un servicio administrado en la nube (DBaaS/PaaS)**, ya que carece de replicación multi-zona automática, conmutación por error (*failover*) transparente, copias de seguridad puntuales gestionadas y escalado horizontal elástico.

## Equivalencias por Proveedor Cloud

| Modelo de Datos | Despliegue Local (CampusCloud) | Amazon Web Services (AWS) | Microsoft Azure | Google Cloud Platform (GCP) |
| :--- | :--- | :--- | :--- | :--- |
| **Documental** | `mongo:8.0.8-noble` en contenedor único | **Amazon DocumentDB** (compatible con MongoDB) | **Azure Cosmos DB for MongoDB** | **Cloud Firestore** / MongoDB Atlas en GCP |
| **Grafos** | `neo4j:5-community` en contenedor único | **Amazon Neptune** | **Azure Cosmos DB for Apache Gremlin** | **Neo4j AuraDB** (administrado en GCP) |
| **Columnas Anchas** | `cassandra:4.1` (`replication_factor: 1`) | **Amazon Keyspaces** (for Apache Cassandra) | **Azure Managed Instance for Apache Cassandra** | **Cloud Bigtable** |

## Modelo de Responsabilidad Compartida

### Lo que administra el proveedor Cloud:
* Aprovisionamiento de infraestructura física, red y almacenamiento redundante.
* Instalación de parches de seguridad del sistema operativo y del motor de base de datos.
* Alta disponibilidad entre zonas de disponibilidad (Multi-AZ) y recuperación ante fallos de nodo.
* Copias de seguridad automáticas (*backups*) y cifrado base en reposo.

### Lo que conserva el equipo cliente:
* Diseño del modelo de datos (esquemas de documentos, relaciones de grafo y *partition keys* en Cassandra).
* Creación y mantenimiento de índices para evitar lecturas completas costosas.
* Gestión de identidades, roles, permisos (IAM) y rotación de credenciales.
* Optimización de consultas y control financiero del consumo de lectura/escritura.