// Importa la dependecia instalada
import dotenv from 'dotenv';

// Carga las variables del archivo .env a process
dotenv.config();

const PORT = Number(process.env.PORT ?? 3000);

if (!Number.isInteger(PORT) || PORT < 1 || PORT > 65535) {
    throw new Error('PORT debe ser valido entre 1 y 65535');
}

// Configuracion de Mongo
const MONGO_HOST = process.env.MONGO_HOST;
const MONGO_PORT = Number(process.env.MONGO_PORT);
const MONGO_USER = process.env.MONGO_USER;
const MONGO_PASSWORD = process.env.MONGO_PASSWORD;
const MONGO_DATABASE = process.env.MONGO_DATABASE;
const MONGO_AUTH_SOURCE = process.env.MONGO_AUTH_SOURCE;

// Validar que no falte ninguna variable 
if (!MONGO_HOST || 
    !MONGO_PORT || 
    !MONGO_USER || 
    !MONGO_PASSWORD || 
    !MONGO_DATABASE || 
    !MONGO_AUTH_SOURCE) 
    {
    throw new Error('Faltan variables de entorno para la configuracion de Mongo');
}


export const env = {
    port: PORT,
    mongo: {
        host: MONGO_HOST,
        port: MONGO_PORT,
        user: MONGO_USER,
        password: MONGO_PASSWORD,
        database: MONGO_DATABASE,
        authSource: MONGO_AUTH_SOURCE
    }
};