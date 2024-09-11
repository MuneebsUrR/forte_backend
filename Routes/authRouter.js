const express = require("express");
const { login } = require("../Controllers/authController");

const authRouter = express();

authRouter.post("/login", login);

module.exports = {
  authRouter,
};
