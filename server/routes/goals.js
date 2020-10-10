const router = require("express").Router();
const dbConfig = require('./dbConfig');
const db = require('./db');
const sql = require("mssql");

var executeQuery = async function (query) {
  var connectionPool = await db;
  var result = await connectionPool.request().query(query);
  return result.recordset;
}

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

router.put('/addGoal', (req, res) => {
  console.log(req.body);

  sql.connect(dbConfig, function (err) {
    if (err) return console.log(err);
    // create Request object
    //var request = new sql.Request();
    //insert memberID and goalID 
    req.body.objects.forEach(object => {
      executeQuery(`SELECT ObjectID from Object WHERE ObjectName = '${object}'`).then(results => {
        if (err) return console.log(err);
        //request.query(`INSERT INTO SelectedObject (ObjectID, SelectedID) VALUES (${results.recordset//[0].ObjectID}, ${req.body.id})`, function (err) {
        //  if (err) console.log(err);
        //});
      });
    });
    // insert goals into table and retrieve SelectedID
    executeQuery(`INSERT INTO SelectedGoal (Goals) VALUES ('${req.body.goal}'); SELECT * FROM SelectedGoal WHERE SelectedID = SCOPE_IDENTITY()`).then(result => {
      console.log(result);


      //insert into MemberGoal table
      executeQuery(`INSERT INTO MemberGoal (SelectedID, MemberID) VALUES (${result[0].SelectedID}, ${req.body.id}); SELECT Goals FROM SelectedGoal JOIN MemberGoal ON SelectedGoal.SelectedID = MemberGoal.SelectedID WHERE MemberID = ${req.body.id} `)
        .then(results => {
          res.json(results);
        });
    });
  });
});


router.post('/filterbuttons', (req, res) => {
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


module.exports = router;

