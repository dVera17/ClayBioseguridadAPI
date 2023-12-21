import { Router } from "express";
import { VentaController } from "../../controllers/v1/ventaController.js";

const router = Router();

router
    .get('/mes/:month', VentaController.getSalesByMonth)

    .get('/total', VentaController.getAllSales)

    .get('/empleados', VentaController.getSalesAmountByEmployee)

    .post('/range', VentaController.getSalesBetweenDates)

    .get('/forma_pago', VentaController.getSalesAmountByPaymentType)

export default router;