const router = require('express').Router();
const sql = require('mssql');
const database = require('./test-database');

/*database configuration*/
const dbConfig = {
    server: 'localhost\\SQLEXPRESS',
    database: 'test1',
    user: 'simfoni',
    password: 'simfoni',
    options: {
        "encrypt": true,
        "enableArithAbort": true
    }
};

router.get('/ent', (req, res) => {
    //db connection
    /*
        sql.connect(dbConfig, function (err) {
        if (err) console.log(err);
        // create Request object
        var request = new sql.Request();
        // query to the database and get the records
        request.query('select * from dbo.ImageTable where Id=1', 
        function (err, recordset) {
            if (err) console.log(err)
            // send records as a response
            console.log(recordset);
            res.json(recordset);
        });
    });
    */
    res.json(database.users);
});




/*test internal ent page*/
router.post('/3', (req, res) => {
    database.users.push(req.body);
    console.log(database.users);
});

module.exports = router;
