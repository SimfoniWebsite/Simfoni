const router = require('express').Router();
const express = require('express');
const path = require('path');
const app = express();

const dir = path.join(__dirname, '../../img');
app.use(express.static(dir));

router.get('/', (req, res) => {
    res.sendFile(dir + '/future-glasses.jpg');
})

module.exports = router;