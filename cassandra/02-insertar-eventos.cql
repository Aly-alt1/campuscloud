USE campuscloud_logs;

INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024001', '2026-11-10 08:15:00+0000', uuid(), 'Autenticacion', 'Inicio de sesion exitoso', '192.168.10.11');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024001', '2026-11-11 10:30:00+0000', uuid(), 'Catalogo', 'Consulta Laboratorio Cisco', '192.168.10.11');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024001', '2026-11-12 14:05:00+0000', uuid(), 'Solicitudes', 'Registro solicitud SRV-002', '192.168.10.11');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024001', '2026-11-14 16:45:00+0000', uuid(), 'Perfil', 'Actualizacion intereses', '192.168.10.11');

INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024002', '2026-11-10 09:00:00+0000', uuid(), 'Autenticacion', 'Inicio de sesion exitoso', '192.168.10.24');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024002', '2026-11-11 11:20:00+0000', uuid(), 'Solicitudes', 'Descarga comprobante estadia', '192.168.10.24');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024002', '2026-11-13 13:10:00+0000', uuid(), 'Catalogo', 'Busqueda tutorias', '192.168.10.24');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024002', '2026-11-15 17:00:00+0000', uuid(), 'Autenticacion', 'Cierre de sesion', '192.168.10.24');

INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024003', '2026-11-10 12:00:00+0000', uuid(), 'Autenticacion', 'Inicio de sesion exitoso', '192.168.10.35');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024003', '2026-11-12 15:40:00+0000', uuid(), 'Equipamiento', 'Reserva laptop desarrollo', '192.168.10.35');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024003', '2026-11-13 18:15:00+0000', uuid(), 'Catalogo', 'Consulta tutoria calculo', '192.168.10.35');
INSERT INTO eventos_por_estudiante (matricula_estudiante, fecha_evento, evento_id, modulo, accion, ip_origen)
VALUES ('2024003', '2026-11-15 19:00:00+0000', uuid(), 'Autenticacion', 'Cierre de sesion', '192.168.10.35');

SELECT matricula_estudiante, fecha_evento, evento_id, modulo, accion FROM eventos_por_estudiante;