const express = require('express');
const path = require('path');
const app = express();
const PORT = 3000;
const sql = require('mssql');

/*database configuration*/
const dbConfig = {
    server: 'localhost\\SQLEXPRESS',
    database: 'chinook',
    user: 'simfoni',
    password: 'simfoni',
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
    request.query('select * from dbo.Customer where CustomerId=1', function (err, recordset) {
        if (err) console.log(err)
        // send records as a response
        console.log(recordset);
    });
});


/*allow access to file directory*/
const dir = path.join(__dirname, '../img');

/*middleware to allow static file use and parse json objects*/
app.use(express.static(dir));
app.use(express.json());

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

app.post('/register', (req, res) => {
    const { email, name, password } = req.body;
    database.users.push({
        id: '3',
        name: name,
        email: email,
        password: password,
        joined: new Date()
    })
    res.json(database.users[database.users.length - 1]);
})

app.get('/venture', (req, res) => {
    res.sendFile(dir + '/future-glasses.jpg');
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