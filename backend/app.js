const express = require('express');

require('dotenv').config()

const app = express();
const port = process.env.PORT | 3000;

app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.listen(port, "0.0.0.0", () => {
    console.log(`Server is running on port ${port}`);
});