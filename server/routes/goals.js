const router = require("express").Router();
const dbConfig = require('./dbConfig');
const sql = require("mssql");

router.get("/", (req, res) => {
    
    res.json(filters);

    /*sql.connect(dbConfig, function (err) {
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
    });*/
  });

  module.exports= router;
  

  let filters = [
    '$1,000,000',
    '$100,000',
    'per year',
    '$10,000',
    '$100',
    'per week',
    '$10',
    'per day',
    'Start',
    'mental health counselor',
    'a pest control company',
    'within the',
    'next three years',
    'management analyst',
    'Save',
    'dental assistant',
    '$1,000',
    'cartographer',
    'per month',
    'message therapist'
  ]