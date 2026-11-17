MATCH (e:Estudiante)-[r:UTILIZA]->(s:Servicio)
RETURN count(DISTINCT e) AS TotalEstudiantes, count(DISTINCT s) AS TotalServicios, count(r) AS TotalRelaciones;