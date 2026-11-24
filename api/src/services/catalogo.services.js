import {ObjectId} from 'mongodb';
import{
    obtenerCatalogo,
    obtenerCatalogoPorId
}from "../repositories/catalogo.repository.js";

export const listarCatalogoActivo=  async()=>{
    const documentos = await obtenerCatalogo();
    
    const activos = documentos.filter((servicio) => servicio.activo=== true);

    return activos;
}

export const buscarServicioPorId = async (id) => {
    if(
        typeof id !== "string" 
        || !/^[a-fA-F0-9]{24}$/.test(id)
    ){
        return {
            estado: "id_invalido",
            documento: null
        };
    }

    const documento = await obtenerCatalogoPorId(id);

    if(!documento || documento.activo !== true){
        return {
            estado: "no encontrado",
            documento: null
        };
    }

    return {
    estado: "encontrado",
    documento: null
}

};