const express = require('express');
const app = express();
const cors = require('cors');
const sql = require('mssql');
const PORT = 3000;


app.use(cors());
app.use(express.static(__dirname))
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