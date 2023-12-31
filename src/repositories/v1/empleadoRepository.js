import executeQuery from "../../db/connect.js";

export class EmpleadoRepository {

    static async getCompleteInfoEmployees() {
        const sql = `SELECT e.id as "Identificacion", e.nombre as "Nombre", c.descripcion as "Cargo empleado", m.nombre as "Municipio" FROM cargos c JOIN empleado e ON c.id = e.idCargoFk JOIN municipio m ON e.idMunicipioFk = m.id`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

    static async getDurationEmploymentInYears() {
        const sql = `SELECT id as "Identificacion", nombre as "Nombre", DATE_FORMAT(fecha_ingreso, '%d-%m-%Y') as "Fecha de ingreso", DATEDIFF(CURDATE(), fecha_ingreso)/365 as "Años de antiguedad" FROM empleado;`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error
        }
    }

}