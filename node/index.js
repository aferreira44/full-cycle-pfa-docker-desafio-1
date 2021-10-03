const express = require("express");
const mysql = require("mysql");

const conn = mysql.createConnection({
  host: "pfa-mysql",
  port: "3306",
  user: "root",
  password: "root",
  database: "pfa"
});

conn.connect((err) => {
  if (err) {
    console.log("mysql connection error: ", err);
    return;
  }
  console.log("Connected to database");
});

const app = express();

app.get("/", (_, res) => {
  conn.query(
    "SELECT name, description from modules",
    function (err, results, fields) {
      if (err) {
        console.log(err);
        return;
      }
      res.set({ "content-type": "application/json; charset=utf-8" });
      res.send(results);
    }
  );
});

app.listen(3000, () => {
  console.log("Server started on port 3000");
});
