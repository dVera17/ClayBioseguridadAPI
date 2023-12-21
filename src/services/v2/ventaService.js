import { VentaRepository } from "../../repositories/v2/ventaRepository.js";

export class VentaService {

    static async getAllSales() {
        let result = await VentaRepository.getAllSales();
        return result;
    }

    static async getSalesBetweenDates({ startDate, endDate }) {
        let result = await VentaRepository.getSalesBetweenDates(startDate, endDate);
        return result;
    }

}