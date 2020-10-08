const express = require('express');
const app = express();
const cors = require('cors');
const PORT = 3000;


app.use(cors());
app.use(express.static(__dirname))
app.use('/', require('./routes'));

/*landingpage route*/
app.get('/', (req, res) => {
    res.send('this is working');
})


app.listen(PORT, () => {
    console.log(`app is running on port ${PORT}`);
});



