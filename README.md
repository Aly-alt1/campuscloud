# CampusCloud

Proyecto académico de la asignatura Bases de Datos en la Nube.

## Objetivo

Construir progresivamente una Nube Académica Local que permita comprender:

- bases de datos relacionales;
- bases de datos NoSQL;
- persistencia;
- usuarios, roles y privilegios;
- conexión local y remota;
- integración mediante API;
- Docker y Docker Compose como herramientas de soporte.

## Unidad I

Primera implementación:

PC → Docker → SQL Server → Volumen → CampusCloud

Tecnología inicial:

- Docker Desktop
- SQL Server 2025
- Cliente SQL
- Git
- Visual Studio Code

# CampusCloud

Proyecto académico de la asignatura Bases de Datos en la Nube[cite: 25] (Ingeniería en Tecnologías de la Información e Innovación Digital — Universidad Tecnológica de Tula-Tepeji)[cite: 1].

## Objetivo

Construir progresivamente una Nube Académica Local que permita comprender[cite: 25]:

- bases de datos relacionales;[cite: 25]
- bases de datos NoSQL;[cite: 25]
- persistencia;[cite: 25]
- usuarios, roles y privilegios;[cite: 25]
- conexión local y remota;[cite: 25]
- integración mediante API;[cite: 25]
- Docker y Docker Compose como herramientas de soporte.[cite: 25]

---

## Unidad I

Primera implementación:[cite: 25]

`PC → Docker → SQL Server → Volumen → CampusCloud`[cite: 25]

Tecnología inicial:[cite: 25]

- Docker Desktop[cite: 25]
- SQL Server 2025[cite: 25]
- Cliente SQL[cite: 25]
- Git[cite: 25]
- Visual Studio Code[cite: 25]

---

## Unidad II — Implementación de Motores NoSQL

Ampliación de la arquitectura de CampusCloud mediante **persistencia políglota** para atender datos semiestructurados, redes de recomendación y bitácoras de eventos masivos, conservando el núcleo relacional de la Unidad I[cite: 4, 5].

### 1. Servicios y Tecnologías Utilizadas

| Motor / Servicio | Rol en CampusCloud | Imagen Docker | Puertos Expuestos |
| :--- | :--- | :--- | :--- |
| **MongoDB** | Catálogo extendido con atributos variables (documental) | `mongo:8.0.8-noble`[cite: 11] | `27018:27017` |
| **Neo4j** | Red de afinidades y recomendación de servicios (grafos) | `neo4j:5-community`[cite: 11] | `7474:7474`, `7687:7687` |
| **Apache Cassandra** | Bitácora distribuida de eventos por estudiante (columnas anchas)[cite: 5, 6] | `cassandra:4.1` | `9042:9042`[cite: 5] |

### 2. Estructura del Repositorio

```text
CampusCloud/
├── docker/
│   ├── compose.yaml              # Orquestación de motores NoSQL (Unidad II)
│   ├── .env.example              # Plantilla de variables de entorno sin secretos
│   ├── pgadmin/                  # Configuración Unidad I[cite: 10]
│   ├── postgreSQL/               # Configuración Unidad I[cite: 10]
│   └── sqlserver/                # Configuración Unidad I[cite: 10]
├── mongodb/                      # Scripts .js (colección, CRUD, filtros y agregación)
├── neo4j/                        # Scripts .cypher (nodos, relaciones, consultas y update)[cite: 1, 2]
├── cassandra/                    # Scripts .cql (keyspace, tabla, carga y operaciones)[cite: 1, 2]
├── sql/                          # Scripts relacionales Unidad I[cite: 1]
├── seguridad/                    # Políticas de acceso, roles y control de credenciales[cite: 2]
├── docs/                         # Documentación técnica (arquitectura, instalación, pruebas, cloud vs local)[cite: 1, 2]
├── evidencias/
│   └── unidad-ii/                # Capturas verificables de ejecución, persistencia y seguridad[cite: 2]
├── reportes/
│   └── unidad-ii/                # Reporte técnico PDF de prácticas[cite: 2]
└── README.md