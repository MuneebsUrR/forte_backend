const express = require("express");
const cors = require("cors");
const { PrismaClient } = require("@prisma/client");
const dotenv = require("dotenv");
const { authRouter } = require("./Routes/authRouter");
const { questionRouter } = require("./Routes/questionRouter");

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

// routers
app.use("/questions", questionRouter);
app.use("/auth", authRouter);

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
