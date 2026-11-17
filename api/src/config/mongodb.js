import { MongoClient } from 'mongodb';
import { env } from './env.js';

// Construcción de la cadena de conexión
const usuario = encodeURIComponent(env.mongo.user);
const password = encodeURIComponent(env.mongo.password);
const authSource = encodeURIComponent(env.mongo.authSource);

const uri = `mongodb://${usuario}:${password}@${env.mongo.host}:${env.mongo.port}/?authSource=${authSource}`;

// Creamos un cliente reutilizable
const client = new MongoClient(uri, {
    serverSelectionTimeoutMS: 5000
});

let database = null;

// Establecer la conexión
export async function conectarMongoDB() {
    await client.connect();

    database = client.db(env.mongo.database);

    // Comprobar que MongoDB responde
    await database.command({ ping: 1 });

    console.log("Conexion a MongoDB exitosa");

    return database;
}

// Recuperar la base de datos conectada
export function obtenerMongoDB() {
    if (!database) {
        throw new Error("MongoDB todavia no esta conectada");
    }
    return database;
}

// Cerrar la conexión cuando corresponda
export async function cerrarMongoDB() {
    if (database) {
        await client.close();
        database = null;
    }
}