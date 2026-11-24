
 export const obtenerSalud = (req, res) => {
    res.status(200).json(
        {estado: 'ok',
         aplicacion: 'CampusCloud API',
         message: 'el servidor esta funcionando'});
};