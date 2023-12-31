import { Router } from "express";
import { EmpleadoController } from "../../controllers/v1/empleadoController.js";
const router = Router();

router
    .get('/', EmpleadoController.getCompleteInfoEmployees)

    .get('/antiguedad', EmpleadoController.getDurationEmploymentInYears)

export default router;