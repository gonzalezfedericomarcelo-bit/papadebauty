<style>
    /* ESTILOS BASE */
    .motor-texto {
        width: 100%; max-width: 900px; margin: 0 auto; 
        display: flex; flex-direction: column; align-items: center; 
        user-select: none; padding: 20px; font-family: 'Nunito', sans-serif;
        touch-action: none; 
    }

    /* ZONA DE PREGUNTA */
    .zona-pregunta {
        display: flex; align-items: center; justify-content: center; gap: 20px; margin-bottom: 40px;
        background: white; padding: 30px; border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.05); flex-wrap: wrap; border: 1px solid #eee;
    }

    .ficha-fija {
        background: #92A8D1; color: white; 
        font-size: 1.8rem; font-weight: 800; text-transform: uppercase;
        padding: 10px 30px; border-radius: 12px;
        box-shadow: 0 5px 0 #7a8fb8;
    }

    .signo-igual { font-size: 2.5rem; color: #ccc; }

    /* SLOT DE DESTINO (HUECO) */
    .slot-destino {
        width: 220px; height: 80px; 
        border: 3px dashed #ccc; border-radius: 15px;
        background: #f9f9f9; display: flex; align-items: center; justify-content: center;
        transition: 0.3s;
        overflow: hidden; /* CLAVE: Evita que se deforme */
    }
    
    .slot-destino.lleno { 
        border-style: solid; border-color: #88B04B; background: #e8f5e9; 
        box-shadow: 0 0 15px rgba(136, 176, 75, 0.2);
    }

    /* ZONA DE OPCIONES */
    .zona-opciones {
        display: flex; flex-wrap: wrap; gap: 15px; justify-content: center;
        width: 100%; padding: 10px;
    }

    /* FICHA ORIGINAL (EN LA LISTA) */
    .ficha-drag {
        background: white; color: #555; border: 2px solid #e0e0e0;
        font-size: 1.3rem; font-weight: 700; text-transform: uppercase;
        padding: 12px 25px; 
        border-radius: 12px;
        cursor: grab;
        box-shadow: 0 5px 0 #ddd; 
        position: relative; 
        min-width: 140px; text-align: center;
    }
    
    /* ESTILO DEL CLON FLOTANTE */
    .ficha-clon-arrastre {
        position: fixed !important; 
        z-index: 999999 !important; 
        pointer-events: none !important; 
        background: white !important; color: #555 !important;
        border: 2px solid #92A8D1 !important;
        box-shadow: 0 20px 40px rgba(0,0,0,0.3) !important;
        opacity: 0.9 !important; margin: 0 !important; transform: none !important;
        font-family: 'Nunito', sans-serif; font-size: 1.3rem; font-weight: 700; 
        text-transform: uppercase; padding: 12px 25px; border-radius: 12px; 
        text-align: center; display: flex; align-items: center; justify-content: center;
    }

    /* ESTADO: FICHA ENCASTRADA (DENTRO DEL HUECO) */
    .ficha-drag.correcta {
        background: #88B04B; color: white; border-color: #6a8f3d; 
        box-shadow: none; pointer-events: none; cursor: default;
        
        /* AJUSTE VISUAL PARA QUE ENTRE BIEN EN EL HUECO */
        width: 100%; height: 100%; 
        min-width: auto; /* Sacamos el ancho mínimo */
        padding: 0; /* Sacamos relleno extra */
        display: flex; align-items: center; justify-content: center;
        border-radius: 0; /* Se adapta al borde del padre */
        border: none;
    }
    
    /* Otros estados */
    .ficha-drag.oculta { opacity: 0.3; }
    .ficha-drag.incorrecta { animation: shake 0.4s; background: #FF6B6B; color: white; border-color: #d32f2f; }
    @keyframes shake { 0%, 100% { transform: translateX(0); } 25% { transform: translateX(-5px); } 75% { transform: translateX(5px); } }
</style>

<div id="lienzo-texto" class="motor-texto"></div>
<audio id="reproductor-fx"></audio>

<script>
(function() {
    const lienzo = document.getElementById('lienzo-texto');
    const datos = <?php echo json_encode($contenido_manual); ?>;
    
    if(datos.length === 0) { lienzo.innerHTML = "<h3>Falta contenido.</h3>"; return; }

    let indice = 0;
    let clon = null;
    let fichaOrigen = null;

    function cargarNivel() {
        if(indice >= datos.length) {
            lienzo.innerHTML = `<div style="text-align:center; padding:50px;"><h1 style="font-size:5rem;">🎉</h1><h2 style="color:#88B04B;">¡Excelente!</h2><button onclick="location.reload()" class="btn-grande">Jugar de nuevo</button><a href="juegos.php" class="btn-grande" style="background:#ccc">Salir</a></div>`;
            return;
        }

        const item = datos[indice];
        const pregunta = item.imagen; 
        const correcta = item.palabra_correcta;
        
        let opciones = [correcta, item.distractor1, item.distractor2, item.distractor3]
                        .filter(t => t && t.trim() !== "")
                        .sort(() => Math.random() - 0.5);

        lienzo.innerHTML = `
            <h3 style="color:#888; margin-bottom:20px;">Arrastra el opuesto:</h3>
            <div class="zona-pregunta">
                <div class="ficha-fija">${pregunta}</div>
                <div class="signo-igual"><i class="fa-solid fa-arrows-left-right"></i></div>
                <div class="slot-destino" id="slot-meta" data-target="${correcta}"></div>
            </div>
            <div class="zona-opciones">
                ${opciones.map(op => `<div class="ficha-drag" data-valor="${op}">${op}</div>`).join('')}
            </div>
        `;

        activarEventos();
    }

    function activarEventos() {
        document.querySelectorAll('.ficha-drag').forEach(f => {
            f.addEventListener('mousedown', iniciarArrastre);
            f.addEventListener('touchstart', iniciarArrastre, {passive: false});
        });
    }

    function iniciarArrastre(e) {
        e.preventDefault();
        fichaOrigen = e.currentTarget;
        const x = e.clientX || e.touches[0].clientX;
        const y = e.clientY || e.touches[0].clientY;

        // Crear clon
        clon = document.createElement('div');
        clon.className = 'ficha-clon-arrastre';
        clon.innerText = fichaOrigen.innerText;
        
        // Copiar dimensiones visuales
        const rect = fichaOrigen.getBoundingClientRect();
        clon.style.width = rect.width + 'px';
        clon.style.height = rect.height + 'px';

        document.body.appendChild(clon);
        actualizarPosicionClon(x, y);
        fichaOrigen.classList.add('oculta');

        document.addEventListener('mousemove', moverArrastre);
        document.addEventListener('touchmove', moverArrastre, {passive: false});
        document.addEventListener('mouseup', finalizarArrastre);
        document.addEventListener('touchend', finalizarArrastre);
    }

    function moverArrastre(e) {
        if (!clon) return;
        e.preventDefault();
        const x = e.clientX || e.touches[0].clientX;
        const y = e.clientY || e.touches[0].clientY;
        actualizarPosicionClon(x, y);
    }

    function actualizarPosicionClon(x, y) {
        const w = parseFloat(clon.style.width);
        const h = parseFloat(clon.style.height);
        clon.style.left = (x - w/2) + 'px';
        clon.style.top = (y - h/2) + 'px';
    }

    function finalizarArrastre(e) {
        if (!clon) return;
        document.removeEventListener('mousemove', moverArrastre);
        document.removeEventListener('touchmove', moverArrastre);
        document.removeEventListener('mouseup', finalizarArrastre);
        document.removeEventListener('touchend', finalizarArrastre);

        const x = e.clientX || (e.changedTouches ? e.changedTouches[0].clientX : 0);
        const y = e.clientY || (e.changedTouches ? e.changedTouches[0].clientY : 0);

        const elementoAbajo = document.elementFromPoint(x, y);
        const slot = elementoAbajo ? elementoAbajo.closest('#slot-meta') : null;

        if (slot && slot.contains(elementoAbajo)) {
            verificar(fichaOrigen, slot);
        } else {
            cancelarArrastre();
        }

        clon.remove();
        clon = null;
        fichaOrigen = null;
    }

    function verificar(ficha, slot) {
        if (ficha.dataset.valor === slot.dataset.target) {
            // CORRECTO
            playFx(true);
            slot.innerHTML = '';
            
            // --- AJUSTE VISUAL AL ENCASTRAR ---
            ficha.classList.remove('oculta');
            // Quitamos estilos de la lista y ponemos estilos de "adentro"
            ficha.classList.add('correcta'); 
            
            slot.appendChild(ficha);
            slot.classList.add('lleno');

            setTimeout(() => { indice++; cargarNivel(); }, 1000);
        } else {
            // INCORRECTO
            cancelarArrastre();
            playFx(false);
            ficha.classList.add('incorrecta');
            setTimeout(() => { ficha.classList.remove('incorrecta'); }, 500);
        }
    }

    function cancelarArrastre() {
        if (fichaOrigen) {
            fichaOrigen.classList.remove('oculta');
            fichaOrigen = null;
        }
    }

    const audioCtx = new (window.AudioContext || window.webkitAudioContext)();
    function playFx(bien) {
        if(audioCtx.state === 'suspended') audioCtx.resume();
        const osc = audioCtx.createOscillator(); const g = audioCtx.createGain();
        osc.connect(g); g.connect(audioCtx.destination);
        osc.frequency.value = bien ? 600 : 150; osc.type = bien ? 'sine' : 'square';
        osc.start(); g.gain.exponentialRampToValueAtTime(0.00001, audioCtx.currentTime + 0.3);
        osc.stop(audioCtx.currentTime + 0.3);
    }

    cargarNivel();
})();
</script>