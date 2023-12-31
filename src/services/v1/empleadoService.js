import { EmpleadoRepository } from "../../repositories/v1/empleadoRepository.js";

export class EmpleadoService {

    static async getCompleteInfoEmployees() {
        let result = await EmpleadoRepository.getCompleteInfoEmployees();
        return result;
    }

    static async getDurationEmploymentInYears() {
        let result = await EmpleadoRepository.getDurationEmploymentInYears();
        return result;
    }

}