USE campuscloud_logs;

-- Consulta compatible con Partition Key + Clustering Column (rango de fechas)
SELECT matricula_estudiante, fecha_evento, evento_id, modulo, accion
FROM eventos_por_estudiante
WHERE matricula_estudiante = '2024001'
  AND fecha_evento >= '2026-11-10 00:00:00+0000'
  AND fecha_evento <= '2026-11-13 23:59:59+0000';