import { Router } from "express";
import { VentaController } from "../../controllers/v2/ventaController.js";
const router = Router();

router
    .get('/total', VentaController.getAllSales)

    .post('/range', VentaController.getSalesBetweenDates)

export default router;