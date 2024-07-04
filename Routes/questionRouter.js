const express = require("express");
const {
  getQuestions,
  getChoices,
} = require("../Controllers/questionsController");

const questionRouter = express();

questionRouter.get("/getquestions", getQuestions);
questionRouter.get("/getchoices", getChoices);

module.exports = {
  questionRouter,
};
