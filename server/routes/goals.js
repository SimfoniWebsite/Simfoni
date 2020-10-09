const router = require("express").Router();
const dbConfig = require('./dbConfig');
const sql = require("mssql");

router.get("/", (req, res) => {
    //connect to database
    sql.connect(dbConfig, function (err) {
      if (err) console.log(err);
      // create Request object
      var request = new sql.Request();
      // query to the database and get the records
      request.query("SELECT TOP 20 ObjectName from dbo.Object ORDER BY ObjectRank DESC", function (err, results) {
        if (err) console.log(err);
        // send records as a response
        res.json(results);
      });
    });
  });

  router.post('/addGoal', (req,res)=>{
    console.log(req.body);
  });

  module.exports= router;
  
