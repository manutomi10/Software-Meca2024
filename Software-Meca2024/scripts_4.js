// Grupo 1: Pollo, Carne, Cerdo
let imagesGroup1 = ["images/png/carne.png", "images/png/pollo-removebg-preview.png", "images/png/cerdo-removebg-preview.png"];
let tipoCorte = ["carne","pollo","cerdo"];
let corteSeleccionado = "carne";
let puntoCoccion;
let currentIndexGroup1 = 0;

function changeImageGroup1(direction) {
    currentIndexGroup1 += direction;
    
    // Cicla la selección de imágenes
    if (currentIndexGroup1 < 0) {
        currentIndexGroup1 = imagesGroup1.length - 1;
    } else if (currentIndexGroup1 >= imagesGroup1.length) {
        currentIndexGroup1 = 0;
    }

    corteSeleccionado = tipoCorte[currentIndexGroup1];
    console.log(corteSeleccionado);
    console.log(document.getElementById("puntoCoccion").value);
    // Cambia la imagen del primer grupo
    document.getElementById("displayedImageGroup1").src = imagesGroup1[currentIndexGroup1];
}

// Grupo 2: Sal, Chimi, Humo
let imagesGroup2 = ["images/png/sal-removebg-preview.png", "images/png/chimi-removebg-preview.png", "images/png/SMOKE-removebg-preview.png"];
let currentIndexGroup2 = 0;

function changeImageGroup2(direction) {
    currentIndexGroup2 += direction;
    
    // Cicla la selección de imágenes
    if (currentIndexGroup2 < 0) {
        currentIndexGroup2 = imagesGroup2.length - 1;
    } else if (currentIndexGroup2 >= imagesGroup2.length) {
        currentIndexGroup2 = 0;
    }

    // Cambia la imagen del segundo grupo
    document.getElementById("displayedImageGroup2").src = imagesGroup2[currentIndexGroup2];
}

function updateStaticImageValue(direction) {
    let valueElement;

    // Determina cuál es la imagen seleccionada en el grupo 2
    if (currentIndexGroup2 === 0) {
        valueElement = document.getElementById("valueSal");
    } else if (currentIndexGroup2 === 1) {
        valueElement = document.getElementById("valueChimi");
    } else if (currentIndexGroup2 === 2) {
        valueElement = document.getElementById("valueSmoke");
    }

    // Actualiza el valor dependiendo de la dirección
    if (direction === 1) {
        valueElement.textContent = "1";
    } else if (direction === -1) {
        valueElement.textContent = "0";
    }
}


addEventListener('input', e => {
    let _t = e.target;
    _t.parentNode.style.setProperty('--val', +_t.value);
}, false);

function enviarCortedos(){

    const datoCorte = corteSeleccionado
    const datoPuntoCoccionValor = document.getElementById("puntoCoccion").value;
    const datoPuntoCoccion = obtenerPuntoCoccion(datoPuntoCoccionValor);
    const datoSal = document.getElementById("valueSal").innerHTML;
    const datoChimi = document.getElementById("valueChimi").innerHTML;
    const datoSmoke = document.getElementById("valueSmoke").innerHTML;


    // Definir la URL a la que se enviará el POST
    const url = 'http://127.0.0.1:1880/recibirDatoCorte2';

    // Definir los datos que se enviarán en el cuerpo de la solicitud
    const data = {
        corte: datoCorte,
        puntoCoccion: datoPuntoCoccion,
        sal: datoSal,
        chimi: datoChimi,
        smoke: datoSmoke
    };
   
    // Hacer la solicitud POST
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
    .then(response => response.json()) // Asumimos que la respuesta es JSON
    .then(data => {
        console.log('Éxito:', data);
    })
    .catch((error) => {
        console.error('Error:', error);
    });

   window.location.href = "index_11.html";
}


function obtenerPuntoCoccion(valor){
let puntoCoccion;

    if ((valor == 33.33)){
        puntoCoccion = "crudo";
    }
    if ((valor == 66.66)){
        puntoCoccion = "a punto";
    }
    if ((valor == 99.99)){
        puntoCoccion = "cocido";
    }

return puntoCoccion
}
function Continuari(){
    window.location.href = "index_9.html";
 }
 function Ajuste(){
    window.location.href = "index_6.html";
 }
function Volver(){
    window.location.href = "index_7.html";
 }