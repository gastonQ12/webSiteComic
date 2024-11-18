const express = require('express');
const nodemailer = require('nodemailer');
const dotenv = require('dotenv');
const cors = require('cors');


dotenv.config();

const app = express();
const PORT = process.env.PUERTO || 4001;


app.use(express.json());
app.use(cors());

// nodemail configuracion
const transporter = nodemailer.createTransport({
  service: 'gmail',
  auth: {
    user: process.env.EMAIL_USUARIO,
    pass: process.env.EMAIL_CONTRA
  },
});

app.get('/',  ( async (req, res) => {
   res.status(200).json({msg:"jj"});
})) ;

// ruta mail
app.post('/mandar-mail', async (req, res) => {
  const { to, subject, text } = req.body;

  if (!to || !subject || !text) {
    return res.status(400).json({ error: 'faltan campos' });
  }

  // if(htmlContent == null) {
  //   const htmlContent = "";
  // }
console.log(req.body)
  const mailJson = {
    from: process.env.EMAIL_USUARIO,
    to,
    subject,
    text,
  };

  try {
    await transporter.sendMail(mailJson);
    res.status(200).json({ message: 'correo dropeado' });
  } catch (error) {
    res.status(500).json({ error: 'error al enviar el  correo', details: error.message });
  }
}); 

//srver prendido
app.listen(PORT, () => {
  console.log(`server en localhost:${PORT}`);
});

app.on('listening', () => { debug( typeof ser) })