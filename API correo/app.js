// document.getElementById('contactForm').addEventListener('submit', async (event) => {event.preventDefault();

// const email = document.getElementById('email').value;
// const subject = document.getElementById('subject').value;
// const message = document.getElementById('message').value;

// const a = JSON.stringify({
//     to: email,
//     subject: subject,
//     text: message
// }); 
//  console.log(a);

//     // back al fetch 
    
//         const response = await fetch('http://localhost:4001/mandar-mail', {
//             method: 'POST',
//             mode: 'no-cors',
//             headers: {
//                 'Content-Type': 'application/json'
//             },
//             body : JSON.stringify({
//                 to: email,
//                 subject: subject,
//                 text: message
//             })
//         });
        
//         const data = await response.json();
//         if (response.ok) {  
//             alert('Correo enviado exitosamente');
//         } else {
//             alert(`Error: ${data.error}`);
//         }
    
// });

document.getElementById('contactForm').addEventListener('submit', async (event) => {
    event.preventDefault();
  
    const email = document.getElementById('email').value;
    const subject = document.getElementById('subject').value;
    const message = document.getElementById('message').value;
  
    // Validación de campos en el frontend
    if (!email || !subject || !message) {
      alert('Por favor, completa todos los campos.');
      return;
    }
  
    try {
      // Realizar la solicitud al servidor
      const response = await fetch('http://localhost:4001/mandar-mail', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          to: email,
          subject: subject,
          text: message
        })
      });
  
      // Manejo de la respuesta del servidor
      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(errorData.error || 'Error desconocido');
      }
  
      const data = await response.json();
      alert(data.message);
    } catch (error) {
      console.error('Error al enviar el correo:', error);
      alert('Hubo un problema al enviar el correo: ' + error.message);
    }
  });
  