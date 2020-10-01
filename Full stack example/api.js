var bodyParser = require("body-parser");
var express = require("express");
var _ = require("underscore");
var db = require("./db");

var executeQuery = async function (query) {
  var connectionPool = await db;
  var result = await connectionPool.request().query(query);
  return result.recordset;
};
//send json formatted record set as a response
var sendQueryResults = async function (res, query) {
  try {
    var recordset = await executeQuery(query);
    res.json(recordset);
  } catch (err) {
    res.send({
      success: false,
      error: err,
    });
  }
};

//create a routes to access the page from front end
module.exports = function () {
  var app = express();
  app.use(bodyParser.json()); //used to get the req.body contenet as json

  app.get("/", function (req, res) {
    res.send("Hello World!");
  });

  app.get("/vendors", function (req, res) {
    var query = "SELECT * FROM Vendors where VendorState = 'CA'";
    sendQueryResults(res, query);
    console.log("data from database sent to client");
  });

  //-----------For testing you can use POSTMAN------------------
  app.get("/form", function (req, res) {
    res.sendFile(__dirname + "/" + "index.html"); //load the index.html form
  });

  var urlencodedParser = bodyParser.urlencoded({ extended: false });
  app.post("/newcust", urlencodedParser, function (req, res) {
    response = {
      //modify the html form and the following
      customerID: req.body.customerID,
      fName: req.body.fName,
      lName: req.body.lName,
      city: req.body.city,
      dept: req.body.dept,
    };
    var sql =
      "INSERT INTO customer(fName,lName,city,dept) VALUES('" +
      /*response.customerID +
      "','" +*/
      response.fName +
      "','" +
      response.lName +
      "','" +
      response.city +
      "','" +
      response.dept +
      "')";
    sendQueryResults(res, sql);
    res.send(JSON.stringify(response)); // this helps to view user input as a response
    //res.send("Your data has been inserted to a database")
  });

  //get / select specific user --------------------------------
  app.get("/customer/:customerID", urlencodedParser, function (req, res) {
    var query =
      //"select * from customer where customerID = 1" + req.params.id + "' ";
      "select * from customer where dept = 'IT'" + req.params.id + "' ";
    sendQueryResults(res, query, function (err, row) {
      if (!err) {
        res.send(query);
      } else {
        console.log(err);
      }
    });
  });
  //you can create a form to use it for update
  //GET API to load search and update page to work with PUT. For testing your API you can use postman instead of this API
  app.get("/updatepage/:id", function (req, res) {
    //load the index.html form
    res.sendFile(__dirname + "/update.html");
  });

  //PUT API--------------------------------
  app.put("/cust_update/:id", urlencodedParser, function (req, res) {
    console.log(req.body.fname);

    // var first_name = "Sirini"
    // var query = "UPDATE [users] SET FirstName= '" + first_name +"'   WHERE UserID=  '" + req.params.id + "' ";
    var query =
      "UPDATE [customer] SET fname = '" +
      req.body.fname +
      "'   WHERE id =  '" +
      req.params.id +
      "' ";
    sendQueryResults(res, query, function (err, row) {
      if (err) {
        console.log(err);
      }
    });
  });

  //delete api-----------------------------------------------
  app.delete("/cust_del/:id", function (req, res, err) {
    var query = "DELETE FROM customer WHERE id = '" + req.params.id + "'";
    sendQueryResults(res, query, function (err, row) {
      if (err) {
        res.send("record not deleted");
      }
      console.log("recored deleted from the db table");
    });
  });
  return app;
};
