</main> <style>
    /* ESTILOS DEL FOOTER PRO */
    .footer-pro {
        background-color: #333; /* Gris oscuro elegante */
        color: #ecf0f1;
        padding: 60px 0 20px;
        margin-top: 80px;
        font-size: 0.95rem;
    }

    .footer-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* 4 columnas responsivas */
        gap: 40px;
    }

    .footer-col h3 {
        color: white;
        font-size: 1.2rem;
        margin-bottom: 20px;
        position: relative;
        padding-bottom: 10px;
    }
    /* Línea decorativa bajo los títulos */
    .footer-col h3::after {
        content: ''; position: absolute; left: 0; bottom: 0;
        width: 40px; height: 3px; background: var(--color-titulo, #92A8D1);
        border-radius: 2px;
    }

    .footer-col p { color: #aaa; line-height: 1.6; }

    .footer-links { list-style: none; padding: 0; margin: 0; }
    .footer-links li { margin-bottom: 12px; }
    .footer-links a {
        color: #ccc; text-decoration: none; transition: 0.2s;
        display: flex; align-items: center; gap: 8px;
    }
    .footer-links a:hover { color: var(--color-secundario, #88B04B); padding-left: 5px; }

    /* Redes Sociales en Footer */
    .footer-social { display: flex; gap: 10px; margin-top: 20px; }
    .footer-social a {
        width: 40px; height: 40px; background: rgba(255,255,255,0.1);
        border-radius: 50%; display: flex; align-items: center; justify-content: center;
        color: white; text-decoration: none; transition: 0.3s;
    }
    .footer-social a:hover { background: var(--color-titulo, #92A8D1); transform: rotate(360deg); }

    /* Newsletter Box */
    .newsletter-form { display: flex; margin-top: 15px; }
    .newsletter-form input {
        width: 100%; padding: 10px; border: none; border-radius: 5px 0 0 5px;
        outline: none; font-family: inherit;
    }
    .newsletter-form button {
        background: var(--color-secundario, #88B04B); color: white; border: none;
        padding: 0 15px; border-radius: 0 5px 5px 0; cursor: pointer; font-weight: bold;
    }

    /* Barra inferior */
    .footer-bottom {
        border-top: 1px solid rgba(255,255,255,0.1);
        margin-top: 50px;
        padding-top: 20px;
        text-align: center;
        color: #777;
        font-size: 0.85rem;
    }
    .heart { color: #FF6B6B; animation: latido 1.5s infinite; display: inline-block; }
    @keyframes latido { 0%, 100% {transform: scale(1);} 50% {transform: scale(1.2);} }
</style>

<footer class="footer-pro">
    <div class="footer-container">
        
        <div class="footer-col">
            <h3>Papá de Bauti</h3>
            <p>Una plataforma educativa creada con amor para acompañar el desarrollo de niños con autismo y sus familias. Juegos, recursos y comunidad.</p>
            <div class="footer-social">
                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                <a href="#"><i class="fa-brands fa-youtube"></i></a>
                <a href="mailto:hola@papadebauti.com"><i class="fa-regular fa-envelope"></i></a>
            </div>
        </div>

        <div class="footer-col">
            <h3>Explorar</h3>
            <ul class="footer-links">
                <li><a href="index.php"><i class="fa-solid fa-chevron-right" style="font-size:0.7rem;"></i> Inicio</a></li>
                <li><a href="juegos.php"><i class="fa-solid fa-chevron-right" style="font-size:0.7rem;"></i> Galería de Juegos</a></li>
                <li><a href="padres.php"><i class="fa-solid fa-chevron-right" style="font-size:0.7rem;"></i> Blog para Padres</a></li>
                <li><a href="#"><i class="fa-solid fa-chevron-right" style="font-size:0.7rem;"></i> Sobre Nosotros</a></li>
            </ul>
        </div>

        <div class="footer-col">
            <h3>Recursos Útiles</h3>
            <ul class="footer-links">
                <li><a href="#">Guía de Pictogramas</a></li>
                <li><a href="#">Aplicaciones Recomendadas</a></li>
                <li><a href="#">Material Descargable</a></li>
                <li><a href="panel.php">Acceso Administración</a></li>
            </ul>
        </div>

        <div class="footer-col">
            <h3>Novedades</h3>
            <p>Recibí nuevos juegos y artículos en tu mail (sin spam).</p>
            <form class="newsletter-form" onsubmit="event.preventDefault(); alert('¡Gracias por suscribirte!');">
                <input type="email" placeholder="Tu email...">
                <button type="submit">OK</button>
            </form>
            <p style="font-size: 0.8rem; margin-top: 10px; color: #666;">* Prometemos cuidar tus datos.</p>
        </div>

    </div>

    <div class="footer-bottom">
        &copy; <?php echo date("Y"); ?> Papá de Bauti. Todos los derechos reservados.<br>
        Hecho con <span class="heart">❤</span> por Fede.
    </div>
</footer>

</body>
</html>