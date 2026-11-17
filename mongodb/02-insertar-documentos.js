use("CampusCloud");

db.detalles_servicios.deleteMany({});

const res = db.detalles_servicios.insertMany([
  {
    _id: "SRV-001",
    servicio_sql_id: 101,
    nombre: "Tutoría de Calculo Diferencial",
    categoria: "academico",
    activo: true,
    etiquetas: ["matematicas", "asesoria", "primer-semestre"],
    configuracion: { modalidad: "presencial", edificio: "edificio TICS", cupo_max: 15 }
  },
  {
    _id: "SRV-002",
    servicio_sql_id: 102,
    nombre: "Redes Cisco",
    categoria: "infraestructura",
    activo: true,
    etiquetas: ["redes", "hardware", "cisco"],
    configuracion: { modalidad: "presencial", edificio: "laboratorio TI", requiere_credencial: true }
  },
  {
    _id: "SRV-003",
    servicio_sql_id: 103,
    nombre: "prestamo de laptops de desarrollo",
    categoria: "equipamiento",
    activo: true,
    etiquetas: ["prestamo", "laptop", "desarrollo"],
    configuracion: { horas_maximas: 4, software_instalado: ["VS Code", "Docker", "Git"] }
  },
  {
    _id: "SRV-004",
    servicio_sql_id: 104,
    nombre: "Asesoría de estadía profesional",
    categoria: "academico",
    activo: true,
    etiquetas: ["estadia", "titulacion", "vinculacion"],
    configuracion: { modalidad: "Virtual", plataforma: "Meet" }
  },
  {
    _id: "SRV-005",
    servicio_sql_id: 105,
    nombre: "Acceso a Clúster GPU Académico",
    categoria: "infraestructura",
    activo: false,
    etiquetas: ["ia", "gpu", "investigacion"],
    configuracion: { vram_gb: 24, cola_prioridad: "Alta" }
  },
  {
    _id: "SRV-006",
    servicio_sql_id: 106,
    nombre: "kit de prototipado IoT y sensores",
    categoria: "equipamiento",
    activo: true,
    etiquetas: ["arduino", "iot", "sensores"],
    configuracion: { componentes: ["ESP32", "Sensor IR", "Protoboard"], deposito_requerido: false }
  }
]);

printjson(res);
print("Total insertados: " + db.detalles_servicios.countDocuments());