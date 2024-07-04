const express = require("express");
const cors = require("cors");
const { PrismaClient } = require("@prisma/client");
const dotenv = require("dotenv");
const jwt = require("jsonwebtoken");

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

app.post("/login", async (req, res) => {
  const { candidate_id, password } = req.body;

  if (!candidate_id || !password) {
    return res
      .status(404)
      .send({ success: false, message: "Required fields missing!" });
  }

  try {
    const user = await prisma.candidate.findUnique({
      where: {
        CANDIDATE_ID: candidate_id,
      },
    });

    if (!user) {
      console.log("user not found", candidate_id, password);
      return res
        .status(404)
        .send({ success: false, message: "Invalid Credentials" });
    }

    if (user.PASSWORD === password) {
      const token = jwt.sign(
        { name: user.FIRST_NAME, id: user.CANDIDATE_ID },
        process.env.JWT_SECRET,
        { expiresIn: "1d" }
      );

      res
        .status(200)
        .send({ success: true, message: "Login Successful", user, token });
    } else {
      res.status(401).send({ success: false, message: "Invalid Credentials" });
    }
  } catch (error) {
    console.error("Error during login:", error);
    res.status(500).json({ error: "Error while processing the login" });
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
