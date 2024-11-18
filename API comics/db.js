const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'comicwebsite',
});

connection.connect((err) => {
  if (err) {
    console.error('error ', err);
  } else {
    console.log('db conectada');
  }
});

module.exports = connection;
