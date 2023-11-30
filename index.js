require('dotenv').config();
const express = require("express");
const app = express();

const port = process.env.PORT || 3000;

const bodyParser = require("body-parser");
const cors = require("cors");

app.use(cors());
app.use(bodyParser.json());

const routesFootball = require("./route/routesFootball");
app.use("/football", routesFootball);

app.listen(port, () => console.log(`Server is running on port ${port}`));