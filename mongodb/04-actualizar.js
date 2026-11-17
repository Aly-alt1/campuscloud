use("CampusCloud");

print("--- antes de SRV-005 ---");
printjson(db.detalles_servicios.findOne({ _id: "SRV-005" }));

printjson(db.detalles_servicios.updateOne(
  { _id: "SRV-005" },
  { $set: { activo: true, "configuracion.estado_operativo": "Habilitado Unidad II" } }
));

print("despues de actualizar SRV-005");
printjson(db.detalles_servicios.findOne({ _id: "SRV-005" }));