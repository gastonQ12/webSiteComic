//abrir menu despegable

function toggleMenu() {
    const sideMenu = document.getElementById('side-menu');
    const body = document.body;

    // Alterna la clase 'open' en el menú lateral y la clase 'menu-open' en el body
    sideMenu.classList.toggle('open');
    body.classList.toggle('menu-open');
}

// Cerrar el menú si se hace clic fuera de él
document.addEventListener('click', function (event) {
    const sideMenu = document.getElementById('side-menu');
    const menuIcon = document.querySelector('.menu-icon');

    // Si se hace clic fuera del menú y fuera del ícono de hamburguesa, cerramos el menú
    if (!sideMenu.contains(event.target) && !menuIcon.contains(event.target)) {
        sideMenu.classList.remove('open');
        document.body.classList.remove('menu-open');
    }
});

//mostrar img en el cosito cuadrado rectangular
document.getElementById('file-Input').addEventListener('change', function (event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function (e) {
            const preview = document.getElementById('preview');
            preview.src = e.target.result;
            preview.style.display = 'block'; // Muestra la imagen
        }
        reader.readAsDataURL(file);
    }
});
document.getElementById('uploadImageButton').addEventListener('click', async function () {
    const fileInput = document.getElementById('file-Input');
    const file = fileInput.files[0];
    if (!file) {
        alert("Selecciona una imagen antes de subir.");
        return;
    }

    const formData = new FormData();
    formData.append('image', file);

    try {
        const response = await fetch('http://localhost:3000/upload', {
            method: 'POST',
            body: formData
        });
        if (response.ok) {
            const fileUrl = await response.text();
            document.getElementById('codComic').value = fileUrl; // Coloca la URL en codComic
            alert('Imagen subida con éxito.');
        } else {
            alert('Error al subir la imagen.');
        }
    } catch (error) {
        console.error('Error:', error);
        alert('Error al subir la imagen.');
    }
});

document.getElementById('comicForm').addEventListener('submit', async function (e) {
    e.preventDefault();
    const formData = new FormData(this);
    const data = {};
    formData.forEach((value, key) => data[key] = value);

    try {
        const response = await fetch('http://localhost:4002/api/comic', {
            
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
        });
        if (response.ok) {
            alert('Comic guardado con éxito');
            this.reset();
        } else {
            const errorData = await response.json();
            alert('Error: ' + errorData.error);
        }
    } catch (err) {
        alert('Error al enviar el formulario');
    }
});