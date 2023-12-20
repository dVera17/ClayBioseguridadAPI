import { z } from 'zod';

export const dateFormat = z.object({
    startDate: z.string().regex(/^\d{4}-\d{2}-\d{2}$/, { message: "El formato de la fecha debe ser 'YYYY-MM-DD'" }),
    endDate: z.string().regex(/^\d{4}-\d{2}-\d{2}$/, { message: "El formato de la fecha debe ser 'YYYY-MM-DD'" }),
});