use("CampusCloud");

db.createCollection("detalles_servicios");
print("Colecciones en CampusCloud:");
printjson(db.getCollectionNames());