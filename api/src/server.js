import app from './app.js';
import {env} from './config/env.js';
import {
  conectarMongoDB,
  cerrarMongoDB
} from "./config/mongodb.js";


const iniciarServidor = async() =>{
  try{
    await conectarMongoDB();
    app.listen(env.port, () => {
  console.log(`CampusCLoud API ejecutandose en http://localhost:${env.port}`);
});
    }catch(error){
      console.error("No se pudo iniciar CampusCloud API:", error.message);
      await cerrarMongoDB();
      process.exit =1;
  }
}


iniciarServidor();
//async funtion iniciarServidor(){
//  try{
//    await
//  } catch(error){
//  }
//}





