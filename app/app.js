const express = require("express");
const mysql = require("mysql");
const app = express();
const port = 3000;

// Configurare conexiune la baza de date
const db = mysql.createConnection({
  host: process.env.DB_HOST,      // Doar hostname-ul
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: "db",
  port: 3306                      // Portul specificat separat
});

// Conectare la baza de date
db.connect((err) => {
  if (err) {
    console.error("Eroare la conectarea la baza de date:", err);
    return;
  }
  console.log("Conectat la baza de date MySQL!");
});

app.get("/", (req, res) => {
  // Exemplu de interogare
  db.query("SELECT * FROM contacts LIMIT 10", (err, results) => {
    if (err) {
      console.error("Eroare la interogare:", err);
      res.status(500).send("Eroare la interogare");
      return;
    }
    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
