// Limpiar nodos previos de prueba
MATCH (n) DETACH DELETE n;

// 5 Nodos Estudiante
CREATE (e1:Estudiante {matricula: "2024001", nombre: "Sofía Méndez", carrera: "ITID", cuatrimestre: 7}),
       (e2:Estudiante {matricula: "2024002", nombre: "Diego Ramírez", carrera: "ITID", cuatrimestre: 7}),
       (e3:Estudiante {matricula: "2024003", nombre: "Valeria Cruz", carrera: "Mecatrónica", cuatrimestre: 4}),
       (e4:Estudiante {matricula: "2024004", nombre: "Mateo Silva", carrera: "ITID", cuatrimestre: 10}),
       (e5:Estudiante {matricula: "2024005", nombre: "Camila Ortiz", carrera: "Energías", cuatrimestre: 4}),

// 4 Nodos Servicio
       (s1:Servicio {codigo: "SRV-001", nombre: "Tutoría de Cálculo", area: "Académica"}),
       (s2:Servicio {codigo: "SRV-002", nombre: "Laboratorio Cisco", area: "Redes"}),
       (s3:Servicio {codigo: "SRV-003", nombre: "Préstamo Laptops", area: "Equipamiento"}),
       (s4:Servicio {codigo: "SRV-004", nombre: "Asesoría Estadía", area: "Vinculación"}),

// 8 Relaciones con propiedades
       (e1)-[:UTILIZA {frecuencia: "Semanal", calificacion: 5}]->(s2),
       (e1)-[:UTILIZA {frecuencia: "Mensual", calificacion: 4}]->(s3),
       (e2)-[:UTILIZA {frecuencia: "Semanal", calificacion: 5}]->(s2),
       (e2)-[:UTILIZA {frecuencia: "Única", calificacion: 5}]->(s4),
       (e3)-[:UTILIZA {frecuencia: "Semanal", calificacion: 4}]->(s1),
       (e3)-[:UTILIZA {frecuencia: "Quincenal", calificacion: 5}]->(s3),
       (e4)-[:UTILIZA {frecuencia: "Semanal", calificacion: 5}]->(s4),
       (e5)-[:UTILIZA {frecuencia: "Semanal", calificacion: 4}]->(s1);