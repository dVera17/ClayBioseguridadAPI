import { VentaRepository } from "../../repositories/v2/ventaRepository.js";

export class VentaService {

    static async getAllSales() {
        let result = await VentaRepository.getAllSales();
        return result;
    }

}