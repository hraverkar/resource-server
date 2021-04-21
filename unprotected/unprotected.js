module.exports = function (sequelize, config, app, Sequelize) {
  const unprotectedRouter = require("express").Router();
  // unprotected routes field:
  const addnewresources = require("./addnewresources")(sequelize, config, app, Sequelize);
  unprotectedRouter.use("/addnewresources", addnewresources);

  return unprotectedRouter;
};
