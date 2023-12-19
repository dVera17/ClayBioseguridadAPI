import { VentaService } from "../../services/v2/ventaService.js";

export class VentaController {

    static async getAllSales(req, res) {
        let result = await VentaService.getAllSales();
        if (!result) return res.status(400).json({ status: "400", message: "No se encontraron ventas" });
        return res.status(200).json({ status: "200", data: result })
    }

}