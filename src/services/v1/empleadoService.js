import { empleadoRepository } from "../../repositories/v1/empleadoRepository.js";


export class EmpleadoService {

    static async getCompleteInfoEmployees() {
        let result = await empleadoRepository.getCompleteInfoEmployees();
        return result;
    }

}