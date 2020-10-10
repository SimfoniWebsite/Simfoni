var sql = require("mssql");
//config for your database
var config = {
  user: "Andres",
  password: "test",
  server: "localhost\\sqlexpress",
  database: "Test1",
  options: {
    database: "Test1",
  },
};
//connect to your database, node module export format
module.exports = new sql.ConnectionPool(config)
  .connect()
  .then((pool) => {
    console.log("Connected to MSSQL!");
    return pool;
  })
  .catch((err) => console.log("Database Connection Error: ", err));
