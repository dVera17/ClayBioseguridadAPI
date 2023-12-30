import { Router } from "express";
import { EmpleadoController } from "../../controllers/v1/empleadoController.js";
const router = Router();

router
    .get('/', EmpleadoController.getCompleteInfoEmployees)

export default router;