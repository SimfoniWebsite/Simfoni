const express = require('express');
const app = express();
//==
//app.use(express.static(__dirname + './login'));
//===

app.use(express.json());

app.use("/venture", require("./venture"));
app.use('/internal', require('./internal'));
app.use('/entrepreneur', require('./entrepreneur'));
app.use('/goals', require('./goals'));
app.use('/login', require('./login'));
app.use('/entrepregistration', require('./entrepregistration'));
module.exports = app;