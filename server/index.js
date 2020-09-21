const express = require('express');
const path = require('path');
const app = express();
const cors = require('cors');
const sql = require('mssql');
require('dotenv').config();
const PORT = 3000;


app.use(cors());
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