const router = require("express").Router();
const express = require("express");
const path = require("path");
const app = express();
const sql = require("mssql");
/*database configuration*/
const dbConfig = {
  server: "localhost\\SQLEXPRESS",
  database: "test1",
  user: "Andres",
  password: "test",
  options: {
    encrypt: true,
    enableArithAbort: true,
  },
};
/*connect to test1 database*/
//const dir = path.join(__dirname, '');
//app.use(express.static(dir));
router.get("/", (req, res) => {
  //res.sendFile(dir + '/future-glasses.jpg');
  //db connection
  //"test";
  sql.connect(dbConfig, function (err) {
    if (err) console.log(err);
    // create Request object
    var request = new sql.Request();
    // query to the database and get the records
    request.query("select * from dbo.Career", function (err, recordset) {
      if (err) console.log(err);
      // send records as a response
      console.log(recordset);
      res.json(recordset);
    });
  });
});
router.get("/skill", (req, res) => {
  //res.sendFile(dir + '/future-glasses.jpg');
  //db connection
  //"test";
  sql.connect(dbConfig, function (err) {
    if (err) console.log(err);
    // create Request object
    var request = new sql.Request();
    // query to the database and get the records
    request.query("select * from dbo.Skill", function (err, recordset) {
      if (err) console.log(err);
      // send records as a response
      console.log(recordset);
      res.json(recordset);
    });
  });
});
router.get("/venture", (req, res) => {
  //res.sendFile(dir + '/future-glasses.jpg');
  //db connection
  //"test";
  sql.connect(dbConfig, function (err) {
    if (err) console.log(err);
    // create Request object
    var request = new sql.Request();
    // query to the database and get the records
    request.query("select * from dbo.Venture", function (err, recordset) {
      if (err) console.log(err);
      // send records as a response
      console.log(recordset);
      res.json(recordset);
    });
  });
});

module.exports = router;
