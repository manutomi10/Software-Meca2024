window.onload = function ValoresCondimento1() {
    
    const paqueteJSON = localStorage.getItem("Corte1");
    
        // Convertir la cadena JSON en un objeto JavaScript
        const paquete = JSON.parse(paqueteJSON);

        // Ahora puedes acceder a las propiedades del objeto
        console.log("Corte1: " + paquete.corte);
        console.log("Punto de Cocción1: " + paquete.puntoCoccion);
        console.log("Sal1: " + paquete.sal);
        console.log("Chimi1: " + paquete.chimi);
        console.log("Smoked1: " + paquete.smoke);

        document.getElementById("valueSal1").innerHTML = paquete.sal;
        document.getElementById("valueChimi1").innerHTML = paquete.chimi;
        document.getElementById("valueSmoke1").innerHTML = paquete.smoke;

    if (paquete.corte === "pollo") 
    {
    document.getElementById("displayedImageGroup1").src = 'images/POLLOBUENO.png';
    }
    else if (paquete.corte === "carne") {
    document.getElementById("displayedImageGroup1").src = 'images/CARNEBUENA.png';
    }
    else if (paquete.corte === "cerdo") {
    document.getElementById("displayedImageGroup1").src = 'images/CERDOBUENO.png';
    }
    else if (paquete.corte === "cruz") {
        document.getElementById("displayedImageGroup1").src = 'images/CRUZBUENA.png';
        }
    


    const dospaqueteJSON = localStorage.getItem("Corte2");
    

        // Convertir la cadena JSON en un objeto JavaScript
        const paquetedos = JSON.parse(dospaqueteJSON);

        // Ahora puedes acceder a las propiedades del objeto
        console.log("Corte2: " + paquetedos.corte);
        console.log("Punto de Cocción2: " + paquetedos.puntoCoccion);
        console.log("Sal2: " + paquetedos.sal);
        console.log("Chimi2: " + paquetedos.chimi);
        console.log("Smoked2: " + paquetedos.smoke);

        document.getElementById("valueSal2").innerHTML = paquetedos.sal;
        document.getElementById("valueChimi2").innerHTML = paquetedos.chimi;
        document.getElementById("valueSmoke2").innerHTML = paquetedos.smoke;

        if (paquetedos.corte === "pollo") 
    {
    document.getElementById("displayedImageGroup2").src = 'images/POLLOBUENO.png';
    }
    else if (paquetedos.corte === "carne") {
    document.getElementById("displayedImageGroup2").src = 'images/CARNEBUENA.png';
    }
    else if (paquetedos.corte === "cerdo") {
    document.getElementById("displayedImageGroup2").src = 'images/CERDOBUENO.png';
    }
    else if (paquetedos.corte === "cruz") {
        document.getElementById("displayedImageGroup2").src = 'images/CRUZBUENA.png';
        }

    const trespaqueteJSON = localStorage.getItem("Corte3");
    

        // Convertir la cadena JSON en un objeto JavaScript
        const paquetetres = JSON.parse(trespaqueteJSON);

        // Ahora puedes acceder a las propiedades del objeto
        console.log("Corte3: " + paquetetres.corte);
        console.log("Punto de Cocción3: " + paquetetres.puntoCoccion);
        console.log("Sal3: " + paquetetres.sal);
        console.log("Chimi3: " + paquetetres.chimi);
        console.log("Smoked3: " + paquetetres.smoke);

        document.getElementById("valueSal3").innerHTML = paquetetres.sal;
        document.getElementById("valueChimi3").innerHTML = paquetetres.chimi;
        document.getElementById("valueSmoke3").innerHTML = paquetetres.smoke;

    if (paquetetres.corte === "pollo") 
    {
    document.getElementById("displayedImageGroup3").src = 'images/POLLOBUENO.png';
    }
    else if (paquetetres.corte === "carne") {
    document.getElementById("displayedImageGroup3").src = 'images/CARNEBUENA.png';
    }
    else if (paquetetres.corte === "cerdo") {
    document.getElementById("displayedImageGroup3").src = 'images/CERDOBUENO.png';
    }
    else if (paquetetres.corte === "cruz") {
        document.getElementById("displayedImageGroup3").src = 'images/CRUZBUENA.png';
        }
}
