const fs = require('fs');
const { google } = require('googleapis');
const express = require('express');
const multer = require('multer');
const path = require('path');
const cors = require('cors');


const apikeys = require('./apikeys.json');
const SCOPE = ['https://www.googleapis.com/auth/drive'];
const app = express();
app.use(cors()); // Habilita CORS
app.use(express.static('public'));
app.use('/assets-generales', express.static('path/to/assets-generales'));

const upload = multer({ dest: 'uploads/' }); // carpeta temporal para almacenar archivos subidos

// A Function that can provide access to google drive api
async function authorize() {
    const jwtClient = new google.auth.JWT(
        apikeys.client_email,
        null,
        apikeys.private_key,
        SCOPE
    );

    await jwtClient.authorize();
    return jwtClient;
}

// A Function that will upload the desired file to google drive folder
async function uploadFile(authClient, filePath, fileName) {
    return new Promise((resolve, reject) => {
        const drive = google.drive({ version: 'v3', auth: authClient });

        const fileMetaData = {
            name: fileName,
            parents: ['1Lpb2aktNouym8pSo7ldVsAknbtoHuqjG'] // A folder ID to which file will get uploaded
        };

        drive.files.create({
            resource: fileMetaData,
            media: {
                body: fs.createReadStream(filePath),
                mimeType: 'image/jpeg/webp' // Cambia esto según el tipo de imagen que subas
            },
            fields: 'id'
        }, function (error, file) {
            if (error) {
                return reject(error);
            }
            resolve(file);
        });
    });
}


app.post('/upload', upload.single('image'), async (req, res) => {
    try {
        const authClient = await authorize();
        const filePath = req.file.path;
        const fileName = req.file.originalname;

        const file = await uploadFile(authClient, filePath, fileName);
        fs.unlinkSync(filePath); // Elimina el archivo temporal después de subirlo

        const fileId = file.data.id;
        const fileUrl = `https://drive.google.com/thumbnail?id=${fileId}`;
        res.send(fileUrl); // Enviar la URL completa en la respuesta
    } catch (error) {
        console.error(error);
        res.status(500).send('ERROR AL SUBIR COMIC');
    }
});



// Iniciar el servidor
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`localhost${PORT}`);
});