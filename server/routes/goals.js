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
      request.query(`SELECT TOP 15 ObjectName, TagName, ObjectRank FrOM Object
      JOIN ObjectPrimary ON Object.ObjectID = ObjectPrimary.ObjectID
      JOIN PrimaryTag ON ObjectPrimary.PrimaryID = PrimaryTag.PrimaryID
      ORDER BY ObjectRank DESC`, function (err, results) {
        if (err) console.log(err);
        // send records as a response
        res.json(results);
      });
    });
  });

  router.post('/addGoal', (req,res)=>{
    console.log(req.body);
  });

  router.post('/filterbuttons', (req,res)=>{
    console.log(req.body);
    
    let number = Number(req.body.length);
    sql.connect(dbConfig, function (err) {
      if (err) console.log(err);
      // create Request object
      var request = new sql.Request();
      // query to the database and get the records
      request.query(`SELECT TOP ${number} ObjectName, TagName FROM Object
        JOIN ObjectPrimary ON Object.ObjectID = ObjectPrimary.ObjectID
        JOIN PrimaryTag ON ObjectPrimary.PrimaryID = PrimaryTag.PrimaryID
        WHERE TagName = '${req.body.nextValues}' AND ObjectRank < ${req.body.rank}
        ORDER BY ObjectRank DESC`, function (err, results) {
        if (err) console.log(err);
        // send records as a response
        console.log(results);
        res.json(results);
      });
    });
  });
  

  module.exports= router;
  
