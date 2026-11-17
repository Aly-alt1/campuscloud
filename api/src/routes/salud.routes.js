import {Router} from 'express';
import { obtenerSalud } from '../../controllers/salud.contollers.js';

//crear un objeto router

const router = Router();

router.get('/salud', obtenerSalud);

export default router;