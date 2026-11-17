```markdown
# Plan y Resultados de Pruebas Funcionales, Seguridad y Persistencia

## 1. Pruebas por Motor NoSQL

### A. MongoDB (`CampusCloud.detalles_servicios`)
* **Carga inicial (`02-insertar-documentos.js`):** Inserción exitosa de 6 documentos pertenecientes a 3 categorías (`Academico`, `Infraestructura`, `Equipamiento`).
* **Consultas y filtros (`03-consultas-filtros.js`):** Validación de filtro compuesto (`categoria` + `activo`), búsqueda en arreglo (`etiquetas` con `$in`) y consulta en subdocumento (`configuracion.modalidad`).
* **Mutaciones (`04-actualizar.js` y `05-eliminar.js`):** Actualización de estado operativo en `SRV-005` y eliminación controlada de `SRV-006`, dejando 5 documentos vigentes.
* **Agregación (`06-agregacion.js`):** Agrupación mediante `$group` y `$sort` contabilizando servicios activos por categoría.

### B. Neo4j (Grafo de Servicios)
* **Construcción (`01-crear-nodos-relaciones.cypher`):** Creación de 5 nodos `:Estudiante`, 4 nodos `:Servicio` y 8 aristas dirigidas `:UTILIZA` con atributos `frecuencia` y `calificacion`.
* **Consultas Cypher (`02-consultas.cypher`):** Obtención de historial por estudiante, detección de pares con recursos compartidos y recomendación de servicios no utilizados por el usuario objetivo.
* **Actualización (`03-actualizacion.cypher`):** Modificación de frecuencia y calificación sobre una relación específica verificada mediante cláusula `RETURN`.

### C. Apache Cassandra (`campuscloud_logs.eventos_por_estudiante`)
* **Modelado (`01-crear-keyspace-tabla.cql`):** Clave primaria compuesta `PRIMARY KEY ((matricula_estudiante), fecha_evento, evento_id)` con ordenamiento `CLUSTERING ORDER BY (fecha_evento DESC, evento_id ASC)`.
* **Carga y consultas (`02` y `03`):** Inserción de 12 eventos distribuidos en 3 matrículas y filtrado eficiente por estudiante e intervalo de fechas.
* **CRUD puntual (`04` y `05`):** Actualización y eliminación exigiendo la clave primaria completa (`matricula_estudiante`, `fecha_evento`, `evento_id`).
* **Limitación comprobada:** Las consultas filtradas únicamente por columnas no clave (como `modulo`) son rechazadas por el motor para evitar escaneos completos del clúster.

## 2. Pruebas de Persistencia y Seguridad
* **Persistencia:** Se ejecutó `docker compose -f docker/compose.yaml restart <servicio>` en los motores comprobando que todos los documentos, nodos y registros permanecen intactos en los volúmenes persistentes.
* **Control de acceso:** Validación de rechazo de operaciones sin credenciales en MongoDB (`requires authentication`) y obligatoriedad de autenticación en Neo4j Browser.
```