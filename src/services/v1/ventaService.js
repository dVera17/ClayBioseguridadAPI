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

    static async getSalesAmountByEmployee() {
        let result = await VentaRepository.getSalesAmountByEmployee();
        return result;
    }

    static async getSalesBetweenDates({ startDate, endDate }) {
        let result = await VentaRepository.getSalesBetweenDates(startDate, endDate);
        return result;
    }

    static async getSalesAmountByPaymentType() {
        let result = await VentaRepository.getSalesAmountByPaymentType();
        return result;
    }

}