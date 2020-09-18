const express = require('express');
const path = require('path');
const app = express();
const PORT = 3000;
const sql = require('mssql');


const dir = path.join(__dirname, '../img');

app.use(express.static(dir));
app.use(express.json());

app.get('/', (req, res) => {
    res.send('this is working');
})

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