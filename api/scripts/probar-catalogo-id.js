import {conectarMongoDB , cerrarMongoDB} from "../src/config/mongodb.js"
import {obtenerCatalogoPorId} from "../src/repositories/catalogo.repository.js"

const id= "COLOCA_ID";

try{
    await conectarMongoDB();
    const documento = await obtenerCatalogoPorId(id) 
    console.log("Resultado de la consulta")
    console.log(JSON.stringify(documento,null,2));
    
}catch(error){
    console.error("Error: ", error.message);
    process.exitCode=1;
}

finally{
    await cerrarMongoDB();
}
