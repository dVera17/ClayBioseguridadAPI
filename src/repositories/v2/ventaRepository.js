import executeQuery from "../../db/connect.js";

export class VentaRepository {

    //Get all sales including customer information and payment methods
    static async getAllSales() {
        const sql = `SELECT v.id as "Codigo", DATE_FORMAT(v.Fecha, '%d-%m-%Y') as "Fecha de venta", c.idCliente as "Identificacion cliente", c.nombre as "Nombre cliente", m.nombre as "Municipio", f.descripcion as "Forma de pago" FROM forma_pago f JOIN venta v ON f.id = v.IdFormaPagoFk JOIN cliente c ON v.IdClienteFk = c.id JOIN municipio m ON c.idMunicipioFk = m.id;`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

    static async getSalesBetweenDates(startDate, endDate) {
        const sql = `SELECT v.id as "Codigo de venta", DATE_FORMAT(Fecha, '%d-%m-%Y') as "Fecha de venta", c.id as "Identificacion cliente", c.nombre as "Nombre", f.descripcion as "Forma de pago" FROM forma_pago f JOIN venta v ON f.id = v.IdFormaPagoFk JOIN cliente c ON c.id = v.IdClienteFk WHERE v.Fecha BETWEEN '${startDate}' AND '${endDate}';`
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

}