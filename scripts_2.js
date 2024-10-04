<<<<<<< HEAD
const slider = document.querySelector('.slider');
const sliderText = document.querySelector('.slider-text');

let isDragging = false;
let startX;
let currentX;
const sliderWidth = slider.clientWidth;
const textWidth = sliderText.clientWidth;

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
=======
const slider = document.querySelector('.slider');
const sliderText = document.querySelector('.slider-text');

let isDragging = false;
let startX;
let currentX;
const sliderWidth = slider.clientWidth;
const textWidth = sliderText.clientWidth;

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
    window.location.href = "index_grill_1.html";
>>>>>>> b57ba0ee461492fdfe875fc4442b841d5434d4d5
}