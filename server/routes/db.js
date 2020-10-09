var sql = require('mssql');
//config for your database
var config = {
    user:'tariq',
    password:'abc',
    server:  'localhost\\SQLEXPRESS',
    database: 'simfysabel',
    options: {
        database: 'simfysabel'
    },
};
//connect to your database, node module export format
module.exports = new sql.ConnectionPool(config)
    .connect()
    .then(pool => {
        console.log('Connected to MSSQL!');
        return pool;
    })
    .catch(err => console.log('Database Connection Error: ', err));