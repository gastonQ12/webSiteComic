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
// SCRIPT CARRUSEL
var swiper = new Swiper(".mySwiper", {
    slidesPerView: 4,
    spaceBetween: 30,
    // cuantas cards se muecen juntas
    slidesPerGroup: 2,
    loop: true,
    loopFillGroupWithBlank: true,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});
