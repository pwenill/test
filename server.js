"use strict"

const express = require('express');
const os = require('os');

//constants
const PORT = 8080;
const HOST = "0.0.0.0";

//App
const app = express();
const hostname = os.hostname();
const platform = os.platform();
const arch = os.arch();

app.get("/", (req, res) => {  
    res.json({"Host": hostname, "Platform": platform, "Architecture": arch});
});

app.listen(PORT, HOST);
console.log(`http://${hostname}:${PORT}`);
