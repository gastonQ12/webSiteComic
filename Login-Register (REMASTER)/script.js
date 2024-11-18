$('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
    var $this = $(this),
        label = $this.prev('label');
  
        if (e.type === 'keyup') {
              if ($this.val() === '') {
            label.removeClass('active highlight');
          } else {
            label.addClass('active highlight');
          }
      } else if (e.type === 'blur') {
          if( $this.val() === '' ) {
              label.removeClass('active highlight'); 
              } else {
              label.removeClass('highlight');   
              }   
      } else if (e.type === 'focus') {
        
        if( $this.val() === '' ) {
              label.removeClass('highlight'); 
              } 
        else if( $this.val() !== '' ) {
              label.addClass('highlight');
              }
      }
  
  });
  
  $('.tab a').on('click', function (e) {
    
    e.preventDefault();
    
    $(this).parent().addClass('active');
    $(this).parent().siblings().removeClass('active');
    
    target = $(this).attr('href');
  
    $('.tab-content > div').not(target).hide();
    
    $(target).fadeIn(600);
    
  });

  //// mati login

document.getElementById('registerForm').addEventListener('submit', async function(event) {
    event.preventDefault(); // Evita que el formulario se envíe de forma tradicional

    const usuario = document.getElementById('usuario').value;
    const contraseña = document.getElementById('contraseña').value;
    const mail = document.querySelector('input[name="correo"]').value;
    const numTelefono = document.querySelector('input[name="nombre"]').value;
    const FechaNacimiento = document.querySelector('input[type="date"]').value;
    const suscripcion = "1";

    const data = {
        usuario,
        contraseña,
        mail,
        FechaNacimiento,
        suscripcion,
        numTelefono
    };

    try {
        const response = await fetch('http://localhost:4003/api/autenticacion/registro', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        });

        const result = await response.json();

        if (response.ok) {
            alert('Usuario registrado exitosamente');
        } else {
            alert(`Error: ${result.message}`);
        }
    } catch (error) {
        console.error('Error al registrar:', error);
        alert('Hubo un problema al conectar con el servidor');
    }
});
document.getElementById('loginForm').addEventListener('submit', async function(event) {
    event.preventDefault(); // Evita el envío del formulario por defecto

    // Capturar datos del formulario
    const email = document.getElementById('logEmail').value;
    const password = document.getElementById('logPassword').value;
const cors = require('cors');
app.use(cors());

    const data = { email, password };

    try {
        // Enviar datos al backend
        const response = await fetch('http://localhost:4003/api/auth/login', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        });

        const result = await response.json();

        if (response.ok && result.isAdmin) {
            // Redirigir al panel de administrador si es exitoso
            window.location.href = "../Admin/panel/index.html";
        } else {
            alert('Usuario o contraseña incorrectos.');
        }
    } catch (error) {
        console.error('Error al iniciar sesión:', error);
        alert('Hubo un problema al conectar con el servidor.');
    }
});
