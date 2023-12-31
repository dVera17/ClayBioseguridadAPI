# Clay Bioseguridad API

Esta empresa se dedica a fabricar y comercializar productos de bioseguridad y seguridad industrial de alta calidad para una máxima protección.

## Consultas

### Ventas

1. Obtener todas las ventas
    - Método: `GET`
    - URL: `http://127.0.0.1:5010/api/v1/venta/total`

2. Obtener las ventas que se realizaron durante un mes especifico
    - Método: `GET`
    - URL: `http://127.0.0.1:5010/api/v1/venta/mes/:numero_del_mes`
    - Ejemplo URL: `http://127.0.0.1:5010/api/v1/venta/mes/7`

3. Obtener las ventas incluyendo la informacion de los clientes y la forma de pago
    - Método: `GET`
    - URL: `http://127.0.0.1:5010/api/v2/venta/total`

4. Obtener la cantidad de ventas realizada por cada empleado
    - Método: `GET`
    - URL: `http://127.0.0.1:5010/api/v1/venta/empleados`

5. Obtener las ventas realizadas en un rango de fechas especifico
    - Método: `POST`
    - URL: `http://127.0.0.1:5010/api/v1/venta/range`
    - Ejemplo del json que debes enviar

    ```JSON
        {
            "startDate": "2023-09-20",
            "endDate": "2023-09-30"
        }
    ```
6. Obtener las ventas realizadas en un rango de fechas especifico incluyendo información del cliente y la forma de pago
    - Método: `POST`
    - URL: `http://127.0.0.1:5010/api/v2/venta/range`
    - Ejemplo del json que debes enviar

    ```JSON
        {
            "startDate": "2023-09-20",
            "endDate": "2023-09-30"
        }
    ```

7. Obtener el nombre y la descripción de los tipos de pagos junto con la cantidad de ventas asociadas a cada tipo
    - Método: `GET`
    - URL: `http://127.0.0.1:5010/api/v1/venta/forma_pago`

### Empleado

1. Obtener la informacion de todos los empleados, incluyendo el cargo y el municipio
    - Método: `GET`
    - URL: `http://127.0.0.1:5010/api/v1/empleado`

2. Obtener la lista de empleados mostrando la duración de su empleo en años
    - Método: `GET`
    - Url: `http://127.0.0.1:5010/api/v1/empleado/antiguedad`

3. Obtener la informacino completa de todos los empleados, (cargo, municipio, departamento, pais)
    - Método: `GET`
    - Url: `http://127.0.0.1:5010/api/v2/empleado`



