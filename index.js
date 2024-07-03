const express =require("express");
const cors = require("cors");
const mysql = require('mysql2');
const dotenv =require('dotenv');

dotenv.config();

const app = express();

app.use(cors())
app.use(express.json());



app.listen(7000, () => {
    console.log("hello backend");
})


const db = mysql.createConnection({
    host: "localhost",
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DB_NAME
})


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

        db.query(q,(err,data)=>{
          if(err){
            return res.json("Error while fetching the choices");
          }else{
            return res.json(data);
          }
        })

})

