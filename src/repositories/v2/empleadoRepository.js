import executeQuery from "../../db/connect.js";

export class EmpleadoRepository {

    static async getCompleteInfoEmployees() {
        const sql = `SELECT e.id as "Identificacion", e.nombre as "Nombre", c.descripcion as "Cargo empleado", m.nombre as "Municipio", d.nombre as "Departamento", p.nombre as "Pais" FROM cargos c JOIN empleado e ON c.id = e.idCargoFk JOIN municipio m ON e.idMunicipioFk = m.id JOIN departamento d ON m.idDepartamentoFk = d.id JOIN pais p ON d.idPaisFk = p.id`;
        try {
            let result = await executeQuery(sql);
            return result.data;
        } catch (error) {
            throw error;
        }
    }

}