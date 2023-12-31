import { EmpleadoRepository } from "../../repositories/v2/empleadoRepository.js";


export class EmpleadoService {

    static async getCompleteInfoEmployees() {
        try {
            let result = await EmpleadoRepository.getCompleteInfoEmployees();
            return result;
        } catch (error) {
            throw error;
        }
    }

}