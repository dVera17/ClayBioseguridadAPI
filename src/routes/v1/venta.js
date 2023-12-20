import { Router } from "express";
import { VentaController } from "../../controllers/v1/ventaController.js";

const router = Router();

router
    .get('/venta/mes/:month', VentaController.getSalesByMonth)

    .get('/ventas', VentaController.getAllSales)

    .get('/venta/empleados', VentaController.getSalesAmountByEmployee)

export default router;