const express = require("express");
const cors = require("cors");
const { PrismaClient } = require("@prisma/client");
const dotenv = require("dotenv");

dotenv.config();

const app = express();
const prisma = new PrismaClient();

app.use(cors());
app.use(express.json());

// Connect to the database
async function connectDB() {
  try {
    await prisma.$connect();
    console.log("Connected to the database successfully");
  } catch (error) {
    console.error("Failed to connect to the database:", error);
    process.exit(1);
  }
}

app.get("/getquestions", async (req, res) => {
  try {
    const questions = await prisma.question.findMany();
    res.json(questions);
  } catch (error) {
    console.error("Error fetching questions:", error);
    res.status(500).json({ error: "Error while fetching the questions" });
  }
});

app.get("/getchoices", async (req, res) => {
  try {
    const choices = await prisma.answer_choice.findMany();
    res.json(choices);
  } catch (error) {
    console.error("Error fetching choices:", error);
    res.status(500).json({ error: "Error while fetching the choices" });
  }
});

// Start the server
const PORT = process.env.PORT || 7000;
async function startServer() {
  await connectDB();
  app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
  });
}

startServer();

// Ensure all Prisma queries are complete before shutting down
process.on("beforeExit", async () => {
  await prisma.$disconnect();
});
