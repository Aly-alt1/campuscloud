use("CampusCloud");

print("se agrego conteo por categoria");
printjson(db.detalles_servicios.aggregate([
  { $group: { _id: "$categoria", total_servicios: { $sum: 1 } } },
  { $sort: { total_servicios: -1 } }
]).toArray());