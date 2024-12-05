
// Grupo 1: Pollo, Carne, Cerdo
let imagesGroup1 = ["images/CARNEBUENA.png", "images/POLLOBUENO.png", "images/CERDOBUENO.png", "images/CRUZBUENA.png"];
let tipoCorte = ["carne","pollo","cerdo", "cruz"];
let corteSeleccionado = "carne";
let puntoCoccion;
let currentIndexGroup1 = 0;
let urlBase;
let urlPort;

let termo = false;


// Grupo 2: Sal, Chimi, Humo
let imagesGroup2 = ["images/SALBUENA.png", "images/LIMONBUENO.png", "images/HUMOBUENO.png", "images/CRUZBUENA.png"];
let currentIndexGroup2 = 0;


let isEnabled = false; // Variable de estado

        urlBase = window.location.hostname;
        urlPort = 1880;

        const socket = new WebSocket('ws://' +  urlBase + ':' + urlPort + '/ws/f'); // Cambia esto

        socket.onopen = () => {
            console.log('Conectado al servidor WebSocket');
        };

        socket.onmessage = (event) => {
            const data = event.data;
			console.log(event.data);
            // Verificamos si el mensaje contiene "f"
            if (data.includes("f")) {
                isEnabled = true; // Habilitamos el envío
                console.log("Envío habilitado");
                localStorage.setItem('confirmacion_f', 'true'); // Guardamos la confimacion f
            }
        };

        socket.onclose = () => {
            console.log('Desconectado del servidor WebSocket');
        };

        socket.onerror = (error) => {
            console.error('Error en WebSocket:', error);
        };

function confi_f(){
        console.log(localStorage.getItem('confirmacion_f'));
        if(localStorage.getItem('confirmacion_f') == 'true')

            {
            isEnabled = true;
            console.log("confirmación previa f. Envió detectado");
            }
        }

        function ValoresCondimento(nroCorte) {
            console.log("Cargue pestaña");
        
            // Obtener Corte1
            const paqueteJSON = localStorage.getItem("Corte" + nroCorte);
            let paquete = JSON.parse(paqueteJSON);

            console.log("JSON: " +nroCorte, paqueteJSON);
        
            if (paqueteJSON) {
                // Convertir la cadena JSON en un objeto JavaScript
        
                // Ahora puedes acceder a las propiedades del objeto
                console.log("Corte: " + paquete.corte);
                console.log("Punto de Cocción: " + paquete.puntoCoccion);
                console.log("Sal: " + paquete.sal);
                console.log("Chimi: " + paquete.chimi);
                console.log("Smoked: " + paquete.smoke);
                
                //Corte Carne
                if (paquete.corte === "pollo") {
                    document.getElementById("displayedImageGroup1").src = imagesGroup1[1];
                } else if (paquete.corte === "carne") {
                    document.getElementById("displayedImageGroup1").src = imagesGroup1[0];
                } else if (paquete.corte === "cerdo") {
                    document.getElementById("displayedImageGroup1").src = imagesGroup1[2];
                } else if (paquete.corte === "cruz") {
                    document.getElementById("displayedImageGroup1").src = imagesGroup1[3];
                }

                //Punto de Cocción
                document.getElementById("puntoCoccion").value = obtenerValorPuntoCoccion(paquete.puntoCoccion);
                changeImageGroup3(); //Cambio Imagen de Medidor

                //Condimentos
                document.getElementById("valueSal").innerHTML = paquete.sal;
                document.getElementById("valueChimi").innerHTML = paquete.chimi;
                document.getElementById("valueSmoke").innerHTML = paquete.smoke;

                            
            } else {
                console.log("No se encontró el valor para 'Corte' en el localStorage.");
            }
        
            console.log("Proceso completado.");
        }
       




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

    //Si es X que deshabilite el condimento y cantidades

    if (currentIndexGroup1 == 3){ //es una X
        document.getElementById("displayedImageGroup2").src = "images/CRUZBUENA.png";
        currentIndexGroup2 = 3;
        document.getElementById("valueSal").textContent = "0";
        document.getElementById("valueChimi").textContent = "0";
        document.getElementById("valueSmoke").textContent = "0";
    } 
}

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

const imagesGroup3 = {
    crudo: "images/crudo.png",
    termoestato: "images/termoestato.png",
    cocido: "images/cocido.png"
};

function changeImageGroup3() {
    const slider = document.getElementById("puntoCoccion");
    const imageElement = document.getElementById("displayedImageGroup3");

    if (!slider || !imageElement) {
        console.error("Required elements not found. Slider:", slider, "Image:", imageElement);
        return;
    }

    const imagenPunto = parseFloat(slider.value);

    let newSrc;
    if (imagenPunto < 66.66) {
        newSrc = imagesGroup3.crudo;
    } else if (imagenPunto >= 66.66 && imagenPunto < 99.98) {
        newSrc = imagesGroup3.termoestato;
    } else {
        newSrc = imagesGroup3.cocido;
    }

    // Check if the image source is changing
    if (imageElement.src !== newSrc) {
        imageElement.src = newSrc;
        console.log("Image updated to:", newSrc);
    }

    // Update custom property for styling (if needed)
    slider.style.setProperty('--val', imagenPunto);

    console.log("Slider value:", imagenPunto, "Current image:", imageElement.src);
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
    } else if (currentIndexGroup2 === 3) {
        valueElement = document.getElementById("valueCruz");
    }

    // Actualiza el valor dependiendo de la dirección
    if (direction === 1 && currentIndexGroup2 != 3) {
        valueElement.textContent = "1";
    } else if (direction === -1) {
        valueElement.textContent = "0";
    }

    if (currentIndexGroup2 == 3){
        document.getElementById("valueSal").textContent = "0";
        document.getElementById("valueChimi").textContent = "0";
        document.getElementById("valueSmoke").textContent = "0";
    }
}

addEventListener('input', e => {
    let _t = e.target;
    _t.parentNode.style.setProperty('--val', +_t.value);
}, false);

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

function obtenerValorPuntoCoccion(nombre){
    let puntoCoccion;
    
        if ((nombre == "crudo")){
            puntoCoccion = 33.33;
        }
        if ((nombre == "a punto")){
            puntoCoccion = 66.66 ;
        }
        if ((nombre == "cocido")){
            puntoCoccion = 100;
        }
    
    return puntoCoccion   
}

function GuardarCorte(numeroCorte){

    const datoCorte = corteSeleccionado
    const datoPuntoCoccionValor = document.getElementById("puntoCoccion").value;
    const datoPuntoCoccion = obtenerPuntoCoccion(datoPuntoCoccionValor);
    const datoSal = document.getElementById("valueSal").innerHTML;
    const datoChimi = document.getElementById("valueChimi").innerHTML;
    const datoSmoke = document.getElementById("valueSmoke").innerHTML;


    // Definir los datos que se enviarán en el cuerpo de la solicitud
    console.log(numeroCorte);
    data = {
        corte: datoCorte,
        puntoCoccion: datoPuntoCoccion,
        sal: datoSal,
        chimi: datoChimi,
        smoke: datoSmoke
    };

    localStorage.setItem("Corte" + numeroCorte, JSON.stringify(data));

    console.log(localStorage.getItem("Corte" + numeroCorte));

    if (numeroCorte == 3) {
        window.location.href = "resumen.html";
        return;
    }

    window.location.href = "parametrizacionModulo" + (numeroCorte + 1) + ".html";
}

function enviarCorte(numeroCorte){

    // Definir la URL a la que se enviará el POST
    const url = 'http://' + urlBase + ":" + urlPort + '/recibirDatoCorte' + numeroCorte;

    console.log(localStorage.getItem("Corte" + numeroCorte));

    // Hacer la solicitud POST
    fetch(url, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: localStorage.getItem("Corte" + numeroCorte)
    })
    .then(response => response.json()) // Asumimos que la respuesta es JSON
    .then(data => {
        console.log('Éxito:', data);
    })
    .catch((error) => {
        console.error('Error:', error);
    });
}

function enviarCortes() {
            confi_f();
            if (!isEnabled) {
                alert("El envío no está habilitado. Espera a recibir 'f'.");
                return; // No permite enviar si no está habilitado
            }

            if (termo == false){
                showModal();            
            }

            if (termo == true){

                enviarCorte(1);
                enviarCorte(2);
                enviarCorte(3);

                //Una vez enviado los datos, limpio el localStorage

               // localStorage.removeItem('confirmacion_f');
                
                isEnabled = false; // Necesito nuevamente una "f" para enviar datos de nuevo

                console.log("Confirmación 'f' elimnada. Enviar nuevamente señal 'f' ");
                window.location.href = "coccion.html";
                
            }
           
            return;
           
        }


function Continuari(){
    window.location.href = "coccion.html";
 }

 function Volver(donde_volver){
    window.location.href = donde_volver;
 }

 function TermocuplasSI() {
   
    openModal(); // Muestra el modal
}

function openModal() {
    document.getElementById("myModal").style.display = "block";
}

function closeModal() {
    document.getElementById("myModal").style.display = "none";
}

function showModal() {
    if (!termo) {
        document.getElementById('confirmModal').style.display = 'block';
        document.getElementById('overlay').style.display = 'block';
    }
}
function closeModalButton(){
    document.getElementById('confirmModal').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';
}

function confirmarTermocuplas() {
    const button = document.querySelector('.TermoButton');
    button.classList.toggle('active'); // Cambia el estado del botón
    termo = true;
    // Lógica para confirmar la activación de las termocuplas
    closeModal(); // Cierra el modal después de confirmar
    
}