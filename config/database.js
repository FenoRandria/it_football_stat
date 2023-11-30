require('dotenv').config();
const { Client } = require('pg');
const client = new Client({
    connectionString: process.env.DB_URL,
    ssl: {
      rejectUnauthorized: false,
    },
});
client.connect();
module.exports = client;

