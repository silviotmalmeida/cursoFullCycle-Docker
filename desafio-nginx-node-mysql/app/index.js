// configuração do express
const express = require("express");
const app = express();
const port = 3000;

// configuração do mysql
const config = {
  host: "mysql",
  user: "root",
  password: "root",
  database: "nodedb",
};
const mysql = require("mysql");

// realizando a inserção dos dados
const connection = mysql.createConnection(config);
connection.query(
  `CREATE TABLE IF NOT EXISTS people(id INT NOT NULL AUTO_INCREMENT, name VARCHAR(255), PRIMARY KEY (id))`
);
connection.query(`INSERT INTO people(name) VALUES('Wesley')`);

let output = '';
connection.query(
  `SELECT * FROM people`,
  function (err, result, fields) {

    for (let i = 0; i < result.length; i++){

      output += `${result[i].name}<br>`;
    }
    console.log(result);
  }
);

app.get("/", (req, res) => {
  res.send(`<h1>Full Cycle Rocks!</h1><br>- Lista de nomes cadastrada no banco de dados:<br>${output}`);
});

app.listen(port, () => {
  console.log(`Rodando na porta ${port}`);
});
