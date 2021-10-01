const express = require('express');
const mysql = require('mysql');

const conn = mysql.createConnection({
    host: 'mysql',
    port: '3306',
    user: 'root',
    password: 'root',
    database: 'pfa',
});

conn.connect((err) => {
    if (err) {
        console.log("mysql connection error: ", err);
        return;
    };
    console.log('Connected to database');
});

const app = express();

app.get("/", (_, res) => {
    res.send("Hello World");
});

app.listen(3000, () => {
    console.log("Server started on port 3000");
});