import {
    listarCatalogoActivo,
    buscarServicioPorId
}from "../services/catalogo.services.js";

export const obtenerCatalogoController = async (req, res, next) => {
    try{
        const catalogo = await listarCatalogoActivo();
        res.status(200).json({
            mensaje: "catalogo de servicios CampusCloud", 
            total: catalogo.length,
            datos: catalogo
        });
    }catch(error){
       next(error);
    }
}

export const obtenerCatalogoPorIdController = async (req, res, next) => {

    try{
        const id = req.params.id;
        const resultado = await buscarServicioPorId(id);

        if(resultado.estado === "id_invalido"){
         return res.status(400).json(
            {
                mensaje: "El identificador proporcionado no es valido"
            }
         )
        }

        if(resultado.estado === "no encontrado"){
            return res.status(400).json(
                {
                    mensaje:"el servicio solicitado no existe o no esta disponible"
                }
            )
        }

        return res.status(200).json({
            mensaje: "Servicio encontrado",
            datos:resultado.documento
        })
    }catch(error){
         next(error);
    }


}