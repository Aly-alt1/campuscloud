USE campuscloud_logs;

DELETE FROM eventos_por_estudiante
WHERE matricula_estudiante = '2024001'
  AND fecha_evento = '2026-11-14 16:45:00+0000'
  AND evento_id = c8fb995c-6113-449a-965d-bdd02847f842;

SELECT matricula_estudiante, fecha_evento, evento_id, modulo, accion
FROM eventos_por_estudiante
WHERE matricula_estudiante = '2024001';