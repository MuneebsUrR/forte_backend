const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

const getQuestions = async (req, res) => {
  try {
    const questions = await prisma.question.findMany();
    res.status(200).send({ success: true, questions });
  } catch (error) {
    console.error("Error fetching questions:", error);
    res
      .status(500)
      .json({ success: false, error: "Error while fetching the questions" });
  }
};

const getChoices = async (req, res) => {
  try {
    const choices = await prisma.answer_choice.findMany();
    res.status(200).send({ success: true, choices });
  } catch (error) {
    console.error("Error fetching choices:", error);
    res
      .status(500)
      .json({ success: false, error: "Error while fetching the choices" });
  }
};

module.exports = {
  getQuestions,
  getChoices,
};
