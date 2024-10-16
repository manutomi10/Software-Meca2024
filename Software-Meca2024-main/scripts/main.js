// Espera a que el DOM esté completamente cargado
document.addEventListener('DOMContentLoaded', () => {
    // Selecciona el botón
    const button = document.getElementById('myButton');
    
    // Agrega un manejador de eventos al botón
    button.addEventListener('click', () => {
        alert('¡Botón clickeado!');
    });
});
