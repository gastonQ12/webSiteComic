async function loadComics() {
    try {
        const response = await fetch('http://localhost:4002/api/comic');
        const comics = await response.json();

        if (comics.length === 0) {
            document.getElementById('noComicsMessage').style.display = 'block';
            return;
        } else {
            document.getElementById('noComicsMessage').style.display = 'none';
        }

        const tableBody = document.getElementById('comicTableBody');
        tableBody.innerHTML = '';

        comics.forEach(comic => {
            const row = document.createElement('div');
            row.classList.add('table-row');
            row.innerHTML = `
                        <div class="table-data"><img src="${comic.codComic}" alt="Imagen del cómic" style="max-width: 80px; height: auto;"></div>
                        <div class="table-data">${comic.nombre}</div>
                        
                        <div class="table-data">${comic.editorial}</div>
                        <div class="table-data">${comic.stock}</div>
                        <div class="table-data">${comic.precio}</div>
                        <div class="table-data">${comic.autor}</div>
                        <div class="table-data"><textarea  name="" id="">${comic.descripcion}</textarea></div>
                        <div class="table-data">${comic.paginas}</div>
                    `;
            tableBody.appendChild(row);
        });
    } catch (err) {
        console.error('Error cargando cómics:', err);
    }
}

document.getElementById('searchInput').addEventListener('input', function () {
    const searchValue = this.value.toLowerCase();
    const rows = document.querySelectorAll('.table-row');
    let found = false;

    rows.forEach(row => {
        const name = row.children[1].textContent.toLowerCase();
        if (name.includes(searchValue)) {
            row.style.display = '';
            found = true;
        } else {
            row.style.display = 'none';
        }
    });

    document.getElementById('noComicsMessage').style.display = found ? 'none' : 'block';
});

loadComics();
