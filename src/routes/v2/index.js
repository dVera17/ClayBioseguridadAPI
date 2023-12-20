import { Router } from "express";
import routerVentaV2 from "./venta.js";
const router = Router();

router
    .use(routerVentaV2);

export default router;