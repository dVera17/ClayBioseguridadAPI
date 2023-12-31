import { Router } from "express";
import routerVentaV2 from "./venta.js";
import routerEmpleadoV2 from "./empleado.js";
const router = Router();

router
    .use('/venta', routerVentaV2)

    .use('/empleado', routerEmpleadoV2)

export default router;