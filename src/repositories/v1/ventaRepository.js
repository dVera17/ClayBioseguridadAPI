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

    static async getSalesAmountByEmployee() {
        const sql = `SELECT e.id as "Identificacion empleado", e.nombre as "Nombre", COUNT(v.id) as "Total de ventas" FROM empleado e JOIN venta v ON e.id = v.IdEmpleadoFk GROUP BY e.id, e.nombre;`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

    static async getSalesBetweenDates(startDate, endDate) {
        const sql = `SELECT v.id as "Codigo", DATE_FORMAT(Fecha, '%d-%m-%Y') as "Fecha de venta" FROM venta v WHERE v.Fecha BETWEEN '${startDate}' AND '${endDate}';`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

    static async getSalesAmountByPaymentType() {
        const sql = `SELECT f.descripcion as "Forma de pago", COUNT(*) as "Total de ventas" FROM forma_pago f JOIN venta v ON f.id = v.IdFormaPagoFk GROUP BY f.descripcion;`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error
        }
    }

}