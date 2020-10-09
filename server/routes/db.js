var sql = require('mssql');
//config for your database
var config = {
    server: "localhost\\SQLEXPRESS",
    database: "Test8",
    user: "simfoni",
    password: "simfoni",
    options: {
      encrypt: true,
      enableArithAbort: true,
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