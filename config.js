var config = require("./config");
config.user = "sa";
config.password = "Admin12345!"; // Admin1234!
// config.password = "Admin1234!"
// config.server = "127.0.0.1";
config.server = "localhost";
config.database = "covidresources";
config.port = 1433;
config.accessTokenTimeOut = "1"; // time out in hour.
config.dialect = "mssql"

config.sqlConfig = {
  user: config.user,
  password: config.password,
  server: config.server,
  database: config.database,
  port: config.port,
};

config.unsecureport = 7272;

module.exports = config;