const express = require("express");
const { getScheduleQP } = require("../Controllers/scheduleQPController");
const { checkAuth } = require("../Middlewares/checkAuth");
const { saveUserProgress } = require("../Controllers/saveProgress");
const { showResult } = require("../Controllers/showResult");

const scheduleQPRouter = express();

scheduleQPRouter.get("/getPaper", checkAuth, getScheduleQP);
scheduleQPRouter.post("/saveProgress", checkAuth, saveUserProgress);
scheduleQPRouter.get("/getResult", checkAuth, showResult);

module.exports = {
  scheduleQPRouter,
};
