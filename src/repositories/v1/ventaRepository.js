import executeQuery from "../../db/connect.js";

export class VentaRepository {

    static async getSalesByMonth(month) {
        const sql = `SELECT v.id as "Codigo", DATE_FORMAT(v.Fecha, '%d-%m-%Y') as "Fecha de venta" FROM venta v WHERE MONTH(STR_TO_DATE(v.Fecha, '%Y-%m-%dT%H:%i:%s.000Z')) = ${month}`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

    static async getAllSales() {
        const sql = `SELECT id as "Codigo", DATE_FORMAT(Fecha, '%d-%m-%Y') as "Fecha de venta" FROM venta;`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

}