async function loadComics() {
            try {
                // const response = await fetch('/api/comic');
                const response = await fetch('http://localhost:4002/api/comic');
                const comics = await response.json();

                const tableBody = document.getElementById('comicTableBody');
                tableBody.innerHTML = '';

                comics.forEach(comic => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${comic.codComic}</td>
                        <td><input type="text" value="${comic.nombre}"></td>
                        <td><input type="number" value="${comic.volumen}"></td>
                        <td><input type="text" value="${comic.editorial}"></td>
                        <td><input type="number" value="${comic.stock}"></td>
                        <td><input type="number" step="0.01" value="${comic.precio}"></td>
                        <td><input type="text" value="${comic.descripcion}"></td>
                        <td><input type="text" value="${comic.categoria}"></td>
                        <td><input type="text" value="${comic.autor}"></td>
                        <td><input type="text" value="${comic.paginas}"></td>
                        <td><button onclick="saveComic(${comic.codComic}, this)">Guardar</button></td>
                    `;
                    tableBody.appendChild(row);
                });
            } catch (err) {
                console.error('Error cargando cómics:', err);
            }
        }

        async function saveComic(codComic, button) {
            const row = button.parentNode.parentNode;
            const data = {
                codComic: codComic,
                nombre: row.cells[1].querySelector('input').value,
                volumen: row.cells[2].querySelector('input').value,
                editorial: row.cells[3].querySelector('input').value,
                stock: row.cells[4].querySelector('input').value,
                precio: row.cells[5].querySelector('input').value,
                descripcion: row.cells[6].querySelector('input').value,
                categoria: row.cells[7].querySelector('input').value,
                autor: row.cells[8].querySelector('input').value
            };

            console.log('Datos a enviar:', data);

            try {
                const response = await fetch(`/api/comic/${codComic}`, {
                    method: 'PUT',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(data)
                });

                if (response.ok) {
                    console.log('Cómic actualizado correctamente');
                    alert('Cómic actualizado correctamente');
                } else {
                    console.error('Error en la respuesta de la API:', response.status);
                    alert('Error al actualizar el cómic');
                }
            } catch (err) {
                console.error('Error al actualizar el cómic:', err);
                alert('Error al actualizar el cómic');
            }
        }

        document.getElementById('searchInput').addEventListener('input', function () {
            const searchValue = this.value.toLowerCase();
            const rows = document.querySelectorAll('#comicTableBody tr');
            rows.forEach(row => {
                const name = row.cells[1].querySelector('input').value.toLowerCase();
                row.style.display = name.includes(searchValue) ? '' : 'none';
            });
        });

        // Cargar los cómics al cargar la página
        loadComics();