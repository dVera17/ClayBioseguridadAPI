import 'dotenv/config'
import mysql from 'mysql2';

const conn = mysql.createPool(JSON.parse(process.env.DB_STRING_CONNECTION));

const executeQuery = async (sql) => {
    return new Promise((resolve, reject) => {
        conn.query(sql, (err, data, fields) => {
            if (err) reject({ status: "error", error: err });
            else resolve({ status: "sucess", data: data });
        })
    })
}

export default executeQuery;