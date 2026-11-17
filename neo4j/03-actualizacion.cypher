MATCH (e:Estudiante {matricula: "2024001"})-[r:UTILIZA]->(s:Servicio {codigo: "SRV-003"})
SET r.frecuencia = "Semanal", r.calificacion = 5
RETURN e.nombre AS Estudiante, s.nombre AS Servicio, r.frecuencia AS NuevaFrecuencia, r.calificacion AS NuevaCalificacion;