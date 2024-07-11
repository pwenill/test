const express = require('express');

const app = express();
const port = 4000 | process.env.PORT;

app.get('/', (req, res) => {
    res.send('Hello, World!');
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});