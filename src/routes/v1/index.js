import { Router } from "express"
import routerVentaV1 from "./venta.js"
import routerEmpleadoV1 from "./empleado.js"
const router = Router();

router
    .use('/venta', routerVentaV1)

    .use('/empleado', routerEmpleadoV1)

export default router;