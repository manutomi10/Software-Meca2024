/*const slider = document.querySelector('.slider');
const sliderText = document.querySelector('.slider-text');

let isDragging = false;
let startX;
let currentX;
//let urlBase;
//let urlPort;
const sliderWidth = slider.clientWidth;
const textWidth = sliderText.clientWidth;

//urlBase = window.location.hostname;
//urlPort = 1880;

const updateTransform = (moveX) => {
    sliderText.style.transform = `translateX(${moveX}px)`; // Fixed template literal syntax
};

const handleDrag = (e) => {
    if (!isDragging) return;

    currentX = e.clientX || e.touches[0].clientX;
    let moveX = currentX - startX;

    // Permitir que el texto se deslice más allá de la vista
    if (moveX < 0) {
        moveX = 0;
    } else if (moveX > sliderWidth - textWidth + 300) { // Permitir que se deslice más allá
        moveX = sliderWidth - textWidth + 300;
    }

    updateTransform(moveX);

    // Refrescar la página cuando el texto esté casi completamente deslizado fuera de la vista
    if (moveX >= sliderWidth - textWidth + 140) { // Refrescar solo cuando esté muy lejos
        window.location.href = "index_5.html";
    }
};

const handleEnd = () => {
    if (isDragging) {
        isDragging = false;
        slider.classList.remove('dragging');

        // Si no se completó el deslizamiento, volver a la posición inicial
        if (currentX - startX < sliderWidth - textWidth + 140) {
            updateTransform(0);
        }
    }
};

slider.addEventListener('mousedown', (e) => {
    isDragging = true;
    startX = e.clientX;
    slider.classList.add('dragging');
});

document.addEventListener('mousemove', handleDrag);
document.addEventListener('mouseup', handleEnd);

slider.addEventListener('touchstart', (e) => {
    isDragging = true;
    startX = e.touches[0].clientX;
    slider.classList.add('dragging');
    e.preventDefault(); // Prevent default behavior for touch
});

document.addEventListener('touchmove', (e) => {
    handleDrag(e);
    e.preventDefault(); // Prevent default behavior for touch
});

document.addEventListener('touchend', handleEnd);

function Volver(){
    window.history.back();
}

function Continuamo() {
    window.location.href = "index_grill_1.html";
}

function Continuanaremo() {
    window.location.href = "index_prueba_1.html";
}
/*
// scripts_2.js

/*
document.getElementById('userForm').addEventListener('submit', function (event) {
    event.preventDefault(); // Evita que el formulario se envíe de la manera tradicional

    // Captura los valores del formulario
    const nombre = document.getElementById('nombre').value;
    const telefono = document.getElementById('telefono').value;

    // Enviar los datos a Node-RED usando fetch y el método POST

   // const url = 'http://' + urlBase + ":" + urlPort + '/register-user';

    fetch("http://192.168.3.5:1880/hola", { // Asegúrate de que la URL coincida con tu configuración de Node-RED
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ nombre: nombre, telefono: telefono })
    })
    .then(response => response.text())
    .then(data => {
        document.getElementById('response').innerText = data; // Muestra la respuesta del servidor
    })
    .catch(error => console.error('Error:', error));
});
*/
function enviarUser() {
    // Captura los valores del formulario
    const nombre = document.getElementById('nombre').value;
    const telefono = document.getElementById('telefono').value;

    // Enviar los datos a Node-RED usando fetch y el método POST
    fetch("http://192.168.3.5:1880/hola", { // Asegúrate de que la URL coincida con tu configuración de Node-RED
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ nombre: nombre, telefono: telefono })
    })
    .then(response => response.text())
    .then(data => {
        document.getElementById('response').innerText = data; // Muestra la respuesta del servidor
    })
    .catch(error => console.error('Error:', error));

    window.location.href = "index_prueba_1.html";

}