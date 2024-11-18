const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'comicwebsite'
});

db.connect(err => {
    if (err) throw err;
    console.log('Conectado a la base de datos MySQL');
});

app.post('/api/auth/login', (req, res) => {
    const { email, password } = req.body;
    const query = 'SELECT * FROM admin WHERE email = ? AND password = ?';

    db.query(query, [email, password], (err, results) => {
        if (err) {
            res.status(500).json({ message: 'Error en el servidor' });
        } else if (results.length > 0) {
            res.json({ isAdmin: true });
        } else {
            res.status(401).json({ message: 'Credenciales incorrectas' });
        }
    });
});

const PORT = 4005;
app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
