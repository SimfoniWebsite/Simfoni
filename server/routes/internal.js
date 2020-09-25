const router = require('express').Router();
const sql = require('mssql');

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
    console.log(req.body);
});

module.exports = router;

const database = {
    users: [
        {
            id: '1',
            name: 'John',
        },
        {
            id: '2',
            name: 'Sally',
        }
    ]
}