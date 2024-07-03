const express = require("express");
const cors = require("cors");
const mysql = require("mysql2");
const dotenv = require("dotenv");

dotenv.config();

const app = express();

app.use(cors());
app.use(express.json());

// db credentials
const db = mysql.createConnection({
  host: process.env.HOST,
  user: process.env.USER,
  password: process.env.PASSWORD,
  database: process.env.DB_NAME,
});

// Connect to the database
db.connect((error) => {
  if (error) {
    console.error("Error connecting to the database:", error);
    return;
  }
  console.log("Connected to DB");
});

app.get("/getquestions", (req, res) => {
  const q = "SELECT * FROM question";

  db.query(q, (err, data) => {
    if (err) {
      return res.json("Error while fetching the questions");
    } else {
      return res.json(data);
    }
  });
});

app.get("/getchoices", (req, res) => {
  const q = "SELECT * FROM answer_choice";

  db.query(q, (err, data) => {
    if (err) {
      return res.json("Error while fetching the choices");
    } else {
      return res.json(data);
    }
  });
});

// starting server
app.listen(process.env.PORT, () => {
  console.log("Backend has started at " + process.env.PORT);
});
