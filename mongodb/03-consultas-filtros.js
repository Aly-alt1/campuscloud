use("CampusCloud");

print("1 Filtro compuesto de categoria y activo");
printjson(db.detalles_servicios.find(
  { categoria: "Academico", activo: true },
  { nombre: 1, categoria: 1, activo: 1 }
).toArray());

print("2. Filtro sobre arreglo de etiquetas");
printjson(db.detalles_servicios.find(
  { etiquetas: { $in: ["redes", "iot"] } },
  { nombre: 1, etiquetas: 1 }
).toArray());

print("3. Filtro sobre subdocumento d configuracion.modalidad");
printjson(db.detalles_servicios.find(
  { "configuracion.modalidad": "Presencial" },
  { nombre: 1, configuracion: 1 }
).toArray());