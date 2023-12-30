import executeQuery from "../../db/connect.js";

export class empleadoRepository {

    static async getCompleteInfoEmployees() {
        const sql = `SELECT e.id as "Identificacion", e.nombre as "Nombre", c.descripcion as "Cargo empleado", m.nombre as "Municipio" FROM cargos c JOIN empleado e ON c.id = e.idCargoFk JOIN municipio m ON e.idMunicipioFk = m.id`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

}