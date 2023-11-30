require('dotenv').config();
const express = require("express");
const app = express();

const port = 54321;

const bodyParser = require("body-parser");
const cors = require("cors");

app.use(cors());
app.use(bodyParser.json());

const routesFootball = require("./routes/routesFootball");
app.use("/football", routesFootball);

app.listen(port, () => console.log(`Server is running on port http://localhost:${port}`));
