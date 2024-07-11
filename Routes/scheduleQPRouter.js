const express = require("express");
const { getScheduleQP } = require("../Controllers/scheduleQPController");

const scheduleQPRouter = express();

scheduleQPRouter.get("/getScheduleQP", getScheduleQP);

module.exports={
    scheduleQPRouter,
}