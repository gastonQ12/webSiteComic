// server.js
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const comicRoutes = require('./routes/comic');
const PORT = 4002;

app.use(cors());
app.use(bodyParser.json());
app.use(express.static('public'));
app.use('/api/comic', comicRoutes);

app.listen(PORT, () => {
  console.log(`localhost:${PORT}`);
});
