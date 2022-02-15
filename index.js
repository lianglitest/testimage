const express = require('express');
const index = express();

index.get('/',(req, res) => {
    res.json({project: "testimage", version: '0.0.1', arch: process.arch});
});

index.listen(8080);
console.log("start 8080")