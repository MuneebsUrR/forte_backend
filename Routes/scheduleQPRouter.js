const express = require("express");
const { getScheduleQP } = require("../Controllers/scheduleQPController");
const { checkAuth } = require("../Middlewares/checkAuth");
const { saveUserProgress } = require("../Controllers/saveProgress");

const scheduleQPRouter = express();

scheduleQPRouter.get("/getScheduleQP", checkAuth, getScheduleQP);
scheduleQPRouter.post("/saveProgress", checkAuth, saveUserProgress);

module.exports = {
  scheduleQPRouter,
};
