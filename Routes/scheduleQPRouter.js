const express = require("express");
const { getScheduleQP } = require("../Controllers/scheduleQPController");
const { checkAuth } = require("../Middlewares/checkAuth");

const scheduleQPRouter = express();

scheduleQPRouter.get("/getScheduleQP", checkAuth, getScheduleQP);

module.exports = {
  scheduleQPRouter,
};
