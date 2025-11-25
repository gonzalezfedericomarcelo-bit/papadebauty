<script>
(function() {
    // RECIBIMOS LOS DATOS DESDE PHP (Array 'data' de juegos_data.php)
    // Nota: Necesitamos que tu backend pase $juego['data'] a JS.
    const palabrasConfig = <?php echo json_encode($juego['data']); ?>;
    
    // Función auxiliar para generar imagen (placeholder) si no tenemos foto real
    function getImg(txt, color) {
        return `https://placehold.co/400x400/${color}/FFF?text=${txt.toUpperCase()}`;
    }

    // Colores pastel para las fotos
    const colores = ['FFB347', 'A3E4D7', 'F7CAC9', '92A8D1', 'FF6B6B', '88B04B'];

    // Convertimos la lista simple de palabras en objetos completos
    const vocabulario = palabrasConfig.map((palabra, index) => {
        return {
            palabra: palabra.toUpperCase(),
            img: getImg(palabra, colores[index % colores.length]) // Asigna color cíclicamente
        };
    });

    let actual = {};

    function cargarNivel() {
        document.getElementById('mensaje-global').style.display = 'none';
        const zona = document.getElementById('zona-opciones');
        const contenedorImg = document.getElementById('contenedor-img');
        zona.innerHTML = '';
        
        // 1. Elegir palabra al azar
        actual = vocabulario[Math.floor(Math.random() * vocabulario.length)];
        
        // 2. Mostrar Imagen
        contenedorImg.innerHTML = `<img src="${actual.img}" style="width:100%; height:100%; object-fit:cover;">`;
        
        // 3. Generar opciones (1 correcta + 3 incorrectas)
        let opciones = [actual.palabra];
        while(opciones.length < 4) {
            let random = vocabulario[Math.floor(Math.random() * vocabulario.length)].palabra;
            if(!opciones.includes(random)) opciones.push(random);
        }
        opciones.sort(() => Math.random() - 0.5);

        // 4. Dibujar botones
        opciones.forEach(palabra => {
            const btn = document.createElement('button');
            btn.className = 'btn-palabra';
            btn.innerText = palabra;
            btn.onclick = () => verificar(btn, palabra);
            zona.appendChild(btn);
        });
    }

    function verificar(btn, palabra) {
        if(palabra === actual.palabra) {
            btn.className = 'btn-palabra correcto';
            document.getElementById('mensaje-global').style.display = 'block';
            
            const voz = new SpeechSynthesisUtterance(palabra);
            voz.lang = 'es-ES';
            window.speechSynthesis.speak(voz);

            setTimeout(cargarNivel, 1500);
        } else {
            btn.className = 'btn-palabra incorrecto';
        }
    }

    cargarNivel();
})();
</script>
