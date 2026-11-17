MATCH (e:Estudiante {matricula: "2024001"})-[r:UTILIZA]->(s:Servicio)
RETURN e.nombre AS Estudiante, s.nombre AS Servicio, r.frecuencia AS Frecuencia, r.calificacion AS Calificacion;

MATCH (e1:Estudiante)-[:UTILIZA]->(s:Servicio)<-[:UTILIZA]-(e2:Estudiante)
WHERE e1.matricula < e2.matricula
RETURN s.nombre AS ServicioCompartido, e1.nombre AS Estudiante1, e2.nombre AS Estudiante2;

MATCH (objetivo:Estudiante {matricula: "2024001"})-[:UTILIZA]->(comun:Servicio)<-[:UTILIZA]-(par:Estudiante)-[:UTILIZA]->(recomendado:Servicio)
WHERE NOT (objetivo)-[:UTILIZA]->(recomendado)
RETURN DISTINCT recomendado.nombre AS ServicioRecomendado, par.nombre AS BasadoEnCompanero;