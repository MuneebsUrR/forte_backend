const express = require("express");
const { getScheduleQP } = require("../Controllers/scheduleQPController");
const { checkAuth } = require("../Middlewares/checkAuth");

const scheduleQPRouter = express();

scheduleQPRouter.get("/getPaper", getScheduleQP);

module.exports = {
  scheduleQPRouter,
};
