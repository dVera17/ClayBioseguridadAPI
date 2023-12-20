import { VentaService } from "../../services/v1/ventaService.js";
import { dateFormat } from "../../utils/dateFormat.js";

export class VentaController {

    static async getSalesByMonth(req, res) {
        if (!req.params.month) return res.status(400).json({ status: "400", message: "No se recibió el mes" });

        let result = await VentaService.getSalesByMonth(req.params.month);
        if (result.length === 0) return res.status(400).json({ status: "400", message: "No se encontraron ventas" });
        return res.status(200).json({ status: "200", data: result })
    }

    static async getAllSales(req, res) {
        let result = await VentaService.getAllSales();
        if (result.length === 0) return res.status(400).json({ status: "400", message: "No se encontraron ventas" });
        res.json(result);
    }

    static async getSalesAmountByEmployee(req, res) {
        let result = await VentaService.getSalesAmountByEmployee();
        if (result.length === 0) return res.status(400).json({ status: "400", message: "No se encontraron ventas" });
        res.status(200).json({ status: "200", data: result });
    }

    static async getSalesBetweenDates(req, res) {
        const dateValidation = dateFormat.safeParse(req.body);
        if (!dateValidation.success) return res.status(400).json({ message: dateValidation.error.errors.map(error => `${error.path} - ${error.message}`) });

        let result = await VentaService.getSalesBetweenDates(req.body);
        if (result.length === 0) return res.status(400).json({ status: "400", message: "No se encontraron ventas" });
        res.status(200).json({ status: "200", data: result });
    }

}