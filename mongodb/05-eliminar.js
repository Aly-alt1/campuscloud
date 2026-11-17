use("CampusCloud");

print("--- se elimino SRV-006 ---");
printjson(db.detalles_servicios.deleteOne({ _id: "SRV-006" }));
print("estos documentos quedan: " + db.detalles_servicios.countDocuments());