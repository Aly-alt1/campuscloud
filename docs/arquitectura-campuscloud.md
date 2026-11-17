# Arquitectura Técnica de CampusCloud (Persistencia Políglota)

**CampusCloud** implementa una arquitectura de **persistencia políglota** sobre contenedores Docker locales, manteniendo el núcleo relacional de la Unidad I e incorporando tres motores NoSQL especializados en la Unidad II para resolver cargas de trabajo heterogéneas sin sobrecargar el esquema SQL.

##  Diagrama de Componentes y Puertos

```text
+-------------------------------------------------------------------+
|                   ESTACIÓN LOCAL (DOCKER ENGINE)                  |
|                                                                   |
|  [SQL Server :14033]  [PostgreSQL :54320]  <-- Núcleo Unidad I    |
|          | (Vínculo lógico: servicio_sql_id / matricula)          |
|          +-------------------+-------------------+                |
|          |                   |                   |                |
|          v                   v                   v                |
|  +---------------+   +---------------+   +---------------+        |
|  |   MongoDB     |   |     Neo4j     |   |   Cassandra   |        |
|  |  8.0.8-noble  |   |  5-community  |   |      4.1      |        |
|  |  :27018->27017|   | :7474 / :7687 |   |  :9042->9042  |        |
|  +-------+-------+   +-------+-------+   +-------+-------+        |
|          |                   |                   |                |
|   [mongo_data]         [neo4j_data]       [cassandra_data]        |
|                     Red: campuscloud-nwt                          |
+-------------------------------------------------------------------+
```

