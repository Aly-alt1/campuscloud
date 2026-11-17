//importar express, que se instaló previamente
import express from "express";

//importar el router de salud
import saludRouter from './routes/salud.routes.js';


//crea una aplicacion express, a partir de este objeto
// se podran configurar rutas y middlewares

const app = express();

//agrega un middleware que permite interpretar cuerpos JSON de las petiiones HTTP
app.use(express.json());

//usar el router de salud
app.use(saludRouter);

export default app;