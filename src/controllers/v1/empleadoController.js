import { EmpleadoService } from "../../services/v1/empleadoService.js";


export class EmpleadoController {

    static async getCompleteInfoEmployees(req, res) {
        let result = await EmpleadoService.getCompleteInfoEmployees();
        if (result.length === 0) return res.status(400).json({ status: "400", message: "No se encontraron empleados" });
        res.status(200).json({ status: "200", data: result });
    }

}