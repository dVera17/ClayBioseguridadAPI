import executeQuery from "../../db/connect.js";

export class VentaRepository {

    //Get all sales including customer information and payment methods
    static async getAllSales() {
        const sql = `SELECT DATE_FORMAT(v.Fecha, '%d-%m-%Y') as "Fecha de venta", c.idCliente as "Identificacion cliente", c.nombre as "Nombre cliente", m.nombre as "Municipio", f.descripcion as "Forma de pago" FROM forma_pago f JOIN venta v ON f.id = v.IdFormaPagoFk JOIN cliente c ON v.IdClienteFk = c.id JOIN municipio m ON c.idMunicipioFk = m.id;`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

}