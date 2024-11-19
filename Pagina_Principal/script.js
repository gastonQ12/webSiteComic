// async function loadComics() {
//     try {
//         const response = await fetch('http://localhost:4002/api/comic');
//         const comics = await response.json();

//         if (comics.length === 0) {
//             document.getElementById('noComicsMessage').style.display = 'block';
//             return;
//         } else {
//             document.getElementById('noComicsMessage').style.display = 'none';
//         }

//         const tableBody = document.getElementById('comicTableBody');
//         tableBody.innerHTML = '';

//         comics.forEach(comic => {
//             const row = document.createElement('div');
//             row.classList.add('table-row');
//             row.innerHTML = `
//                         <div class="table-data"><img src="${comic.codComic}" alt="Imagen del cómic" style="max-width: 80px; height: auto;"></div>
//                         <div class="table-data">${comic.nombre}</div>
//                         <div class="table-data">${comic.volumen}</div>
//                         <div class="table-data">${comic.editorial}</div>
//                         <div class="table-data">${comic.stock}</div>
//                         <div class="table-data">${comic.precio}</div>
//                         <div class="table-data">${comic.autor}</div>
//                         <div class="table-data">${comic.paginas}</div>
//                     `;
//             tableBody.appendChild(row);
//         });
//     } catch (err) {
//         console.error('Error cargando cómics:', err);
//     }
// }



// loadComics();


async function loadComics() {
    try {
        const response = await fetch("http://localhost:4002/api/comic");
        const comics = await response.json();

        if (comics.length === 0) {
            document.getElementById("noComicsMessage").style.display = "block";
            return;
        } else {
            document.getElementById("noComicsMessage").style.display = "none";
        }

        const comicsContainer = document.getElementById("comics-container");
        comicsContainer.innerHTML = "";

        comics.forEach((comic) => {
            const card = document.createElement("div");
            card.classList.add("col-md-3"); // Cambia a col-md-3 para hacer 4 columnas
            card.innerHTML = `
                              <div class="card">
                                  <img src="${comic.codComic}" class="card-img-top" alt="Imagen del cómic" style="max-height: 300px; object-fit: cover;">
                                  <div class="card-body">
                                      <h5 class="card-title">${comic.nombre}</h5>
                                      <p class="card-text">$${comic.precio}</p>
                                  </div>
                              </div>
                          `;
            comicsContainer.appendChild(card);
        });
        
    } catch (err) {
        console.error("Error cargando cómics:", err);
    }
}

loadComics();
