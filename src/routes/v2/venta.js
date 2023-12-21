import { Router } from "express";
import { VentaController } from "../../controllers/v2/ventaController.js";
const router = Router();

router
    .get('/ventas', VentaController.getAllSales)

    .post('/venta/range', VentaController.getSalesBetweenDates)

export default router;