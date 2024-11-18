
// // module.exports = router;
// const express = require('express');
// const router = express.Router();
// const db = require('../db');


// // Ruta para agregar cómic (ya implementada)
// router.post('/', (req, res) => {
  
//   const { codComic, nombre, volumen, editorial, stock, precio, descripcion, categoria, autor } = req.body;
  
//   const query = `
//     INSERT INTO comic (codComic, nombre, volumen, editorial, stock, precio, descripcion, categoria, autor)
//     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`;
  
//   const values = [codComic, nombre, volumen, editorial, stock, precio, descripcion, categoria, autor];
  
//   db.query(query, values, (err, results) => {
//     if (err) {
//       console.error('Error al insertar el cómic:', err);
//       res.status(500).json({ error: 'Error al insertar el cómic' });
//     } else {
//       res.status(201).json({ message: 'Comic agregado con éxito' });
      
//     }
//   });
// });

// // Ruta para editar un cómic existente
// router.put('/:codComic', (req, res) => {
//   const { nombre, volumen, editorial, stock, precio, descripcion, categoria, autor } = req.body;
//   const { codComic } = req.params; // Cambiado a codComic

//   const query = `
//     UPDATE comic 
//     SET nombre = ?, volumen = ?, editorial = ?, stock = ?, precio = ?, descripcion = ?, categoria = ?, autor = ? 
//     WHERE codComic = ?`; // Cambiado a codComic
  
//   const values = [nombre, volumen, editorial, stock, precio, descripcion, categoria, autor, codComic];

//   db.query(query, values, (err) => {
//     if (err) {
//       console.error('Error al actualizar el cómic:', err);
//       res.status(500).json({ error: 'Error al actualizar el cómic' });
//     } else {
//       res.json({ message: 'Comic actualizado con éxito' });
//     }
//   });
// });

// // Ruta para buscar cómic por nombre
// router.get('/', (req, res) => {
//     const query = 'SELECT * FROM comic';

//     db.query(query, (err, results) => {
//         if (err) {
//             console.error('error get:', err);
//             res.status(500).json({ error: 'error get 2' });
//         } else {
//             res.json(results); // Envía todos los campos, incluido codComic
//         }
//     });
// });
// module.exports = router;


// module.exports = router;
const express = require('express');
const router = express.Router();
const db = require('../db');


// Ruta para agregar cómic (ya implementada)
router.post('/', (req, res) => {
  
  const { codComic, nombre, editorial, stock, precio, descripcion, categoria, autor, paginas } = req.body;
  
  const query = `
    INSERT INTO comic (codComic, nombre, editorial, stock, precio, descripcion, categoria, autor, paginas)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`;
  
  const values = [codComic, nombre, editorial, stock, precio, descripcion, categoria, autor, paginas];
  
  db.query(query, values, (err, results) => {
    if (err) {
      console.error('Error al insertar el cómic:', err);
      res.status(500).json({ error: 'Error al insertar el cómic' });
    } else {
      res.status(201).json({ message: 'Comic agregado con éxito' });
      
    }
  });
});

// Ruta para editar un cómic existente
router.put('/:codComic', (req, res) => {
  const { nombre, editorial, stock, precio, descripcion, categoria, autor, paginas} = req.body;
  const { codComic } = req.params; // Cambiado a codComic

  const query = `
    UPDATE comic 
    SET nombre = ?, editorial = ?, stock = ?, precio = ?, descripcion = ?, categoria = ?, autor = ?, paginas = ?
    WHERE codComic = ?`; // Cambiado a codComic
  
  const values = [nombre, editorial, stock, precio, descripcion, categoria, autor, paginas, codComic];

  db.query(query, values, (err) => {
    if (err) {
      console.error('Error al actualizar el cómic:', err);
      res.status(500).json({ error: 'Error al actualizar el cómic' });
    } else {
      res.json({ message: 'Comic actualizado con éxito' });
    }
  });
});

// Ruta para buscar cómic por nombre
router.get('/', (req, res) => {
    const query = 'SELECT * FROM comic';

    db.query(query, (err, results) => {
        if (err) {
            console.error('error get:', err);
            res.status(500).json({ error: 'error get 2' });
        } else {
            res.json(results); // Envía todos los campos, incluido codComic
        }
    });
});
module.exports = router;
