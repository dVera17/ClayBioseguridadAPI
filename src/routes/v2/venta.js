import { Router } from "express";
import { VentaController } from "../../controllers/v2/ventaController.js";
const router = Router();

router
    .get('/ventas', VentaController.getAllSales)

export default router;