

export const manejarErrores=(error, req,res,next) =>{
        //registrar el error real en el servidor
        console.error("Error interno de CampusCloud", error);

        //Evitar enviar una segunda respuesta si ya se enviaron cabeceras
        if(res.headerSent){
            return next(error);
        }

        //respuesta generica para el cliente
        return res.status(500).json({
            mensaje:"Ocurrio un erro interno en CampusClous"
        })

}