USE campuscloud_logs;

UPDATE eventos_por_estudiante
SET accion = 'Registro solicitud SRV-002 (Validado)'
WHERE matricula_estudiante = '2024001'
  AND fecha_evento = '2026-11-12 14:05:00+0000'
  AND evento_id = 990a19c5-f976-4e1b-86f3-10231a0cf804;

SELECT matricula_estudiante, fecha_evento, evento_id, modulo, accion
FROM eventos_por_estudiante
WHERE matricula_estudiante = '2024001';