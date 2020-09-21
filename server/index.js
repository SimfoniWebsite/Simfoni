const express = require('express');
const path = require('path');
const app = express();
const PORT = 3000;
const sql = require('mssql');

/*database configuration*/
const dbConfig = {
    server: 'localhost\\SQLEXPRESS',
<<<<<<< HEAD
    database: 'chinook',
    user: 'simfoni',
    password: 'simfoni',
=======
    database: 'test1',
    user: 'Andres',
    password: 'test',
>>>>>>> entrepreneur
    options: {
        "encrypt": true,
        "enableArithAbort": true
    }
};
/*connect to chinook database*/
sql.connect(dbConfig, function (err) {
    if (err) console.log(err);
    // create Request object
    var request = new sql.Request();
    // query to the database and get the records
<<<<<<< HEAD
    request.query('select * from dbo.Customer where CustomerId=1', function (err, recordset) {
=======
    request.query('select * from dbo.ImageTable where Id=1', function (err, recordset) {
>>>>>>> entrepreneur
        if (err) console.log(err)
        // send records as a response
        console.log(recordset);
    });
});


/*middleware to allow static file use and parse json objects*/

app.use('/', require('./routes'));

/*landingpage route*/
app.get('/', (req, res) => {
    res.send('this is working');
})

/*signin page route*/
app.post('/signin', (req, res) => {
    if (req.body.email === database.users[0].email && req.body.password === database.users[0].password) {
        res.json('success');
    } else
        res.status(400).json('error logging in');
})


app.listen(PORT, () => {
    console.log(`app is running on port ${PORT}`);
});



/*placeholder database*/
const title = {
    title: "future-glasses"
}
const database = {
    users: [
        {
            id: '1',
            name: 'John',
            email: 'john@gmail.com',
            password: 'password',
            joined: new Date()
        },
        {
            id: '2',
            name: 'Sally',
            email: 'sally@gmail.com',
            password: 'password',
            joined: new Date()
        }
    ]
}
/* Possible routing for entrepreneur
'/' initial GET landingpage
'/Signin' --> POST res=sucess/fail
'/Register' --> POST
'/Venture' --> GET busOpp
'/Profile/:userID' --> GET user
'/Profile/:userID/todo' --> PUT
'internal/entrepreneur' --> GET
'internal/:userID'--> PUT

*/