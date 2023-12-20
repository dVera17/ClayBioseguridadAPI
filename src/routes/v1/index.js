import { Router } from "express"
import routerVentaV1 from "./venta.js"
const router = Router();

router
    .use(routerVentaV1)

export default router;