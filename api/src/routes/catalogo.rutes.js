import {Router} from 'express';
import{
    obtenerCatalogoController,
    obtenerCatalogoPorIdController
    } from "../controllers/catalogo.controller.js";

const router = Router();
router.get('/catalogo', obtenerCatalogoController);
router.get("catalogo/:id", obtenerCatalogoPorIdController)

export default router;
