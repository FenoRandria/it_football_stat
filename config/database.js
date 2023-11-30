require('dotenv').config();
const { Client } = require('pg');
const client = new Client({
    // connectionString: process.env.DB_URL,
    connectionString: 'postgresql://postgres:g43bC46F-GaDcgc2dBACgbgdfGDc41*E@roundhouse.proxy.rlwy.net:21672/railway',
    ssl: {
      rejectUnauthorized: false,
    },
});
client.connect();
module.exports = client;

