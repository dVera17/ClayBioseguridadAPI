import { Router } from "express";
import { EmpleadoController } from "../../controllers/v2/EmpleadoController.js";

const router = Router();

router
    .get('/', EmpleadoController.getCompleteInfoEmployees)

export default router;