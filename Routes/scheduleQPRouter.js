const express = require("express");
const { getScheduleQP } = require("../Controllers/scheduleQPController");

const scheduleQPRouter = express();

scheduleQPRouter.get("/getPaper", getScheduleQP);

module.exports={
    scheduleQPRouter,
}