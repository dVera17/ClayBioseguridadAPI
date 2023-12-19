import executeQuery from "../../db/connect.js";

export class VentaRepository {

    static async getSalesByMonth(month) {
        const sql = `SELECT * FROM venta WHERE MONTH(STR_TO_DATE(Fecha, '%Y-%m-%dT%H:%i:%s.000Z')) = ${month}`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

    static async getAllSales() {
        const sql = `SELECT * FROM venta`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

}