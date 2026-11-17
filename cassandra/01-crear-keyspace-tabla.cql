CREATE KEYSPACE IF NOT EXISTS campuscloud_logs
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE campuscloud_logs;

CREATE TABLE IF NOT EXISTS eventos_por_estudiante (
    matricula_estudiante text,
    fecha_evento timestamp,
    evento_id uuid,
    modulo text,
    accion text,
    ip_origen text,
    PRIMARY KEY ((matricula_estudiante), fecha_evento, evento_id)
) WITH CLUSTERING ORDER BY (fecha_evento DESC, evento_id ASC);

DESCRIBE TABLE eventos_por_estudiante;