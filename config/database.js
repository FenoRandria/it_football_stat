require('dotenv').config();
const mysql = require('mysql2/promise');
const pool = mysql.createPool({
  host: 'mysql-examen36hitu.alwaysdata.net',
  user: '320447_feno',
  password: 'examen36h',
  database: 'examen36hitu_footballstat',
  port: '3306',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});
module.exports = pool;