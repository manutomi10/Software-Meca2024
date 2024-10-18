window.onload = function ValoresCondimento1() {
    const paqueteJSON = localStorage.getItem("Corte1");
    const paquete = JSON.parse(paqueteJSON);

    console.log(paquete);

    if (paquete) {
        document.getElementById("valueSal1").innerHTML = paquete.sal;
        document.getElementById("valueChimi1").innerHTML = paquete.chimi;
        document.getElementById("valueSmoke1").innerHTML = paquete.smoke;
        document.getElementById("puntoCoccion1").innerHTML = paquete.puntoCoccion; // Mostrar punto de cocción

        if (paquete.corte === "pollo") {
            document.getElementById("displayedImageGroup1").src = 'images/POLLOBUENO.png';
        } else if (paquete.corte === "carne") {
            document.getElementById("displayedImageGroup1").src = 'images/CARNEBUENA.png';
        } else if (paquete.corte === "cerdo") {
            document.getElementById("displayedImageGroup1").src = 'images/CERDOBUENO.png';
        } else if (paquete.corte === "cruz") {
            document.getElementById("displayedImageGroup1").src = 'images/CRUZBUENA.png';
            document.getElementById("imgSal1").src = 'images/CRUZBUENA.png';
            document.getElementById("imgSmoke1").src = 'images/CRUZBUENA.png';
            document.getElementById("imgChimi1").src = 'images/CRUZBUENA.png';

        }
    }

    const dospaqueteJSON = localStorage.getItem("Corte2");
    const paquetedos = JSON.parse(dospaqueteJSON);

    if (paquetedos) {
        document.getElementById("valueSal2").innerHTML = paquetedos.sal;
        document.getElementById("valueChimi2").innerHTML = paquetedos.chimi;
        document.getElementById("valueSmoke2").innerHTML = paquetedos.smoke;
        document.getElementById("puntoCoccion2").innerHTML = paquetedos.puntoCoccion; // Mostrar punto de cocción

        if (paquetedos.corte === "pollo") {
            document.getElementById("displayedImageGroup2").src = 'images/POLLOBUENO.png';
        } else if (paquetedos.corte === "carne") {
            document.getElementById("displayedImageGroup2").src = 'images/CARNEBUENA.png';
        } else if (paquetedos.corte === "cerdo") {
            document.getElementById("displayedImageGroup2").src = 'images/CERDOBUENO.png';
        } else if (paquetedos.corte === "cruz") {
            document.getElementById("displayedImageGroup2").src = 'images/CRUZBUENA.png';
            document.getElementById("imgSal2").src = 'images/CRUZBUENA.png';
            document.getElementById("imgSmoke2").src = 'images/CRUZBUENA.png';
            document.getElementById("imgChimi2").src = 'images/CRUZBUENA.png';
        }
    }

    const trespaqueteJSON = localStorage.getItem("Corte3");
    const paquetetres = JSON.parse(trespaqueteJSON);

    if (paquetetres) {
        document.getElementById("valueSal3").innerHTML = paquetetres.sal;
        document.getElementById("valueChimi3").innerHTML = paquetetres.chimi;
        document.getElementById("valueSmoke3").innerHTML = paquetetres.smoke;
        document.getElementById("puntoCoccion3").innerHTML = paquetetres.puntoCoccion; // Mostrar punto de cocción

        if (paquetetres.corte === "pollo") {
            document.getElementById("displayedImageGroup3").src = 'images/POLLOBUENO.png';
        } else if (paquetetres.corte === "carne") {
            document.getElementById("displayedImageGroup3").src = 'images/CARNEBUENA.png';
        } else if (paquetetres.corte === "cerdo") {
            document.getElementById("displayedImageGroup3").src = 'images/CERDOBUENO.png';
        } else if (paquetetres.corte === "cruz") {
            document.getElementById("displayedImageGroup3").src = 'images/CRUZBUENA.png';
            document.getElementById("imgSal3").src = 'images/CRUZBUENA.png';
            document.getElementById("imgSmoke3").src = 'images/CRUZBUENA.png';
            document.getElementById("imgChimi3").src = 'images/CRUZBUENA.png';
        }
    }
}
