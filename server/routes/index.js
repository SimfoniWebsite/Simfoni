const express = require("express");
const app = express();

app.use(express.json());
app.use('/register', require('./register'));
app.use("/venture", require("./venture"));
app.use('/internal', require('./internal'));
app.use('/entrepreneur', require('./entrepreneur'));
app.use('/goals', require('./goals'));

module.exports = app;
