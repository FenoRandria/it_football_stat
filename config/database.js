require('dotenv').config();
const { Client } = require('pg');
const client = new Client({
    connectionString: 'postgresql://postgres:-2-C-45433E2EFFc-4-6f25DaCCEeBBC@roundhouse.proxy.rlwy.net:15542/railway',
    // connectionString: 'postgresql://postgres:g43bC46F-GaDcgc2dBACgbgdfGDc41*E@roundhouse.proxy.rlwy.net:21672/railway',
    ssl: {
      rejectUnauthorized: false,
    },
});
client.connect();
module.exports = client;

