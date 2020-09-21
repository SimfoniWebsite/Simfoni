const express = require('express');
const app = express();

app.use(express.json());
app.use('/register', require('./register'));
app.use('/venture', require('./venture'));

module.exports = app;