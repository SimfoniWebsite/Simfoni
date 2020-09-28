const router = require('express').Router();
const database = require('./test-database');

router.get('/3', (req, res) => {
    console.log(database.users);
    res.json(database.users);
});

module.exports = router;