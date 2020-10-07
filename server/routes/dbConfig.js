//config for your database
const dbConfig = {
    server: "localhost\\SQLEXPRESS",
    database: "test1",
    user: "Andres",
    password: "test",
    options: {
      encrypt: true,
      enableArithAbort: true,
    },
  };
//connect to your database, node module export format
module.exports = dbConfig;