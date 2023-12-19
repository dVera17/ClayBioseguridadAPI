import { VentaRepository } from "../../repositories/v1/ventaRepository.js";

export class VentaService {

    static async getSalesByMonth(month) {
        let result = await VentaRepository.getSalesByMonth(month);
        return result;
    }

    static async getAllSales() {
        let result = await VentaRepository.getAllSales();
        return result;
    }

}