<?php include 'includes/header.php'; ?>

<section style="background: linear-gradient(135deg, #fdfbf7 0%, #e6f0ff 100%); padding: 5rem 1rem; text-align: center; border-bottom-left-radius: 50px; border-bottom-right-radius: 50px;">
    <div style="max-width: 800px; margin: 0 auto;">
        <h1 style="color: var(--color-secundario); font-size: 3rem; margin-bottom: 1rem; font-weight: 800;">
            Aprender es una aventura
        </h1>
        <p style="font-size: 1.3rem; color: #555; margin-bottom: 2.5rem; line-height: 1.6;">
            Una plataforma educativa pensada para Bauti y para todos los niños. 
            Juegos didácticos, recursos adaptados y mucho amor en cada clic.
        </p>
        
        <div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap;">
            <a href="juegos.php" class="btn-grande btn-jugar" style="padding: 15px 40px; font-size: 1.2rem; box-shadow: 0 10px 20px rgba(136, 176, 75, 0.3);">
                <i class="fa-solid fa-rocket"></i> EMPEZAR A JUGAR
            </a>
            <a href="padres.php" class="btn-grande btn-padres" style="padding: 15px 40px; font-size: 1.2rem; box-shadow: 0 10px 20px rgba(146, 168, 209, 0.3);">
                <i class="fa-solid fa-heart"></i> SOY PAPÁ/MAMÁ
            </a>
        </div>
    </div>
</section>

<section style="padding: 5rem 1rem; background: white;">
    <div style="max-width: 1000px; margin: 0 auto; display: flex; align-items: center; gap: 50px; flex-wrap: wrap;">
        
        <div style="flex: 1; min-width: 300px; position: relative;">
            <div style="position: absolute; width: 100%; height: 100%; background: #F7CAC9; border-radius: 20px; top: 15px; left: -15px; z-index: 0; opacity: 0.3;"></div>
            <img src="assets/img/papaybau.jpg" 
                 style="position: relative; z-index: 1; width: 100%; border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); transform: rotate(-2deg);">
        </div>

        <div style="flex: 1; min-width: 300px;">
            <span style="background: #e6f0ff; color: var(--color-secundario); padding: 5px 15px; border-radius: 20px; font-weight: bold; font-size: 0.9rem; margin-bottom: 15px; display: inline-block;">NUESTRA HISTORIA</span>
            <h2 style="color: var(--color-primario); font-size: 2.2rem; margin-bottom: 20px; line-height: 1.2;">
                Hola, soy Federico <br><span style="font-size: 1.5rem; color: #888; font-weight: normal;">(el papá de Bauti)</span>
            </h2>
            <p style="font-size: 1.1rem; color: #666; line-height: 1.8; margin-bottom: 20px;">
                Creé este espacio porque creo que la tecnología puede ser un puente increíble para el desarrollo. 
                Mi hijo Bauti, que tiene autismo, es mi gran inspiración para buscar nuevas formas de conectar y aprender.
            </p>
            <p style="font-size: 1.1rem; color: #666; line-height: 1.8;">
                Aquí encontrarás juegos libres de distracciones, diseñados específicamente para trabajar:
            </p>
            <ul style="list-style: none; margin-top: 20px; display: grid; grid-template-columns: 1fr 1fr; gap: 15px;">
                <li style="display: flex; align-items: center; gap: 10px; color: #555;"><i class="fa-solid fa-check-circle" style="color: var(--color-primario); font-size: 1.2rem;"></i> Integración Sensorial</li>
                <li style="display: flex; align-items: center; gap: 10px; color: #555;"><i class="fa-solid fa-check-circle" style="color: var(--color-primario); font-size: 1.2rem;"></i> Historia y Geografía</li>
                <li style="display: flex; align-items: center; gap: 10px; color: #555;"><i class="fa-solid fa-check-circle" style="color: var(--color-primario); font-size: 1.2rem;"></i> Lógica Matemática</li>
                <li style="display: flex; align-items: center; gap: 10px; color: #555;"><i class="fa-solid fa-check-circle" style="color: var(--color-primario); font-size: 1.2rem;"></i> Gestión de Emociones</li>
            </ul>
        </div>

    </div>
</section>

<section style="padding: 5rem 1rem; background-color: #FDFBF7;">
    <div style="max-width: 1200px; margin: 0 auto; text-align: center;">
        <h2 style="color: #4A4A4A; font-size: 2rem; margin-bottom: 1rem;">¿Por qué nuestra plataforma?</h2>
        <p style="max-width: 600px; margin: 0 auto 4rem auto; color: #777; line-height: 1.6;">
            Diseñamos cada actividad pensando en la neurodiversidad, priorizando la calma y la claridad sobre el ruido.
        </p>

        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 30px;">
            
            <div style="background: white; padding: 40px 30px; border-radius: 20px; box-shadow: 0 5px 20px rgba(0,0,0,0.03); border: 1px solid #eee;">
                <div style="width: 70px; height: 70px; background: #eef9f0; border-radius: 50%; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px auto;">
                    <i class="fa-solid fa-eye-slash" style="font-size: 1.8rem; color: var(--color-primario);"></i>
                </div>
                <h3 style="color: #444; margin-bottom: 15px;">Sin Distracciones</h3>
                <p style="color: #666; font-size: 0.95rem; line-height: 1.6;">
                    Interfaces limpias, sin pop-ups, anuncios ni luces parpadeantes que puedan generar sobrecarga sensorial.
                </p>
            </div>

            <div style="background: white; padding: 40px 30px; border-radius: 20px; box-shadow: 0 5px 20px rgba(0,0,0,0.03); border: 1px solid #eee;">
                <div style="width: 70px; height: 70px; background: #f2f6fc; border-radius: 50%; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px auto;">
                    <i class="fa-solid fa-star" style="font-size: 1.8rem; color: var(--color-secundario);"></i>
                </div>
                <h3 style="color: #444; margin-bottom: 15px;">Refuerzo Positivo</h3>
                <p style="color: #666; font-size: 0.95rem; line-height: 1.6;">
                    Celebramos cada logro. El error no se castiga, se ve como una nueva oportunidad para intentarlo.
                </p>
            </div>

            <div style="background: white; padding: 40px 30px; border-radius: 20px; box-shadow: 0 5px 20px rgba(0,0,0,0.03); border: 1px solid #eee;">
                <div style="width: 70px; height: 70px; background: #fff5eb; border-radius: 50%; display: flex; align-items: center; justify-content: center; margin: 0 auto 20px auto;">
                    <i class="fa-solid fa-clock" style="font-size: 1.8rem; color: #FFB347;"></i>
                </div>
                <h3 style="color: #444; margin-bottom: 15px;">A su Propio Ritmo</h3>
                <p style="color: #666; font-size: 0.95rem; line-height: 1.6;">
                    Sin cronómetros estresantes. Cada niño tiene su tiempo para procesar y responder.
                </p>
            </div>

        </div>
    </div>
</section>

<section style="padding: 4rem 1rem; background: white;">
    <div style="max-width: 1200px; margin: 0 auto;">
        <div style="text-align: center; margin-bottom: 3rem;">
            <h2 style="color: #4A4A4A; font-size: 2rem;">¿Qué quieres aprender hoy?</h2>
            <p style="color: #888;">Explora nuestras áreas temáticas principales</p>
        </div>
        
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 25px;">
            
            <a href="juegos.php" style="text-decoration: none;">
                <div style="background: #FDFBF7; padding: 30px; border-radius: 15px; border: 2px solid #fff; box-shadow: 0 5px 15px rgba(0,0,0,0.05); transition: transform 0.3s; text-align: center; height: 100%;">
                    <i class="fa-solid fa-shapes" style="font-size: 3rem; color: #FFB347; margin-bottom: 15px;"></i>
                    <h3 style="margin-bottom: 10px; color: #444;">Lógica y Formas</h3>
                    <p style="color: #888; font-size: 0.9rem;">Emparejamiento, secuencias y reconocimiento visual.</p>
                </div>
            </a>

            <a href="juegos.php" style="text-decoration: none;">
                <div style="background: #FDFBF7; padding: 30px; border-radius: 15px; border: 2px solid #fff; box-shadow: 0 5px 15px rgba(0,0,0,0.05); transition: transform 0.3s; text-align: center; height: 100%;">
                    <i class="fa-solid fa-palette" style="font-size: 3rem; color: #F7CAC9; margin-bottom: 15px;"></i>
                    <h3 style="margin-bottom: 10px; color: #444;">Arte y Pintura</h3>
                    <p style="color: #888; font-size: 0.9rem;">Lienzo libre para trabajar la motricidad fina y creatividad.</p>
                </div>
            </a>

            <a href="juegos.php" style="text-decoration: none;">
                <div style="background: #FDFBF7; padding: 30px; border-radius: 15px; border: 2px solid #fff; box-shadow: 0 5px 15px rgba(0,0,0,0.05); transition: transform 0.3s; text-align: center; height: 100%;">
                    <i class="fa-solid fa-earth-americas" style="font-size: 3rem; color: var(--color-secundario); margin-bottom: 15px;"></i>
                    <h3 style="margin-bottom: 10px; color: #444;">Historia y Geo</h3>
                    <p style="color: #888; font-size: 0.9rem;">Descubre el mundo con datos curiosos y mapas interactivos.</p>
                </div>
            </a>

            <a href="juegos.php" style="text-decoration: none;">
                <div style="background: #FDFBF7; padding: 30px; border-radius: 15px; border: 2px solid #fff; box-shadow: 0 5px 15px rgba(0,0,0,0.05); transition: transform 0.3s; text-align: center; height: 100%;">
                    <i class="fa-solid fa-face-smile" style="font-size: 3rem; color: var(--color-primario); margin-bottom: 15px;"></i>
                    <h3 style="margin-bottom: 10px; color: #444;">Emociones</h3>
                    <p style="color: #888; font-size: 0.9rem;">Identificar y comprender expresiones faciales.</p>
                </div>
            </a>

        </div>
    </div>
</section>

<section style="background: var(--color-secundario); padding: 3rem 1rem;">
    <div style="max-width: 900px; margin: 0 auto; text-align: center; color: white;">
        <i class="fa-solid fa-shield-heart" style="font-size: 3rem; margin-bottom: 20px; opacity: 0.9;"></i>
        <h2 style="font-size: 2rem; margin-bottom: 15px;">Un espacio 100% Seguro</h2>
        <p style="font-size: 1.1rem; line-height: 1.6; opacity: 0.9;">
            Sabemos lo importante que es la seguridad en internet. 
            Esta plataforma es completamente gratuita, <strong>sin anuncios, sin rastreadores y sin enlaces externos peligrosos</strong>. 
            Hecho por un papá, para tu tranquilidad.
        </p>
    </div>
</section>

<section style="padding: 5rem 1rem; text-align: center; background: url('assets/img/patron-suave.png');"> 
    <div style="max-width: 600px; margin: 0 auto;">
        <h2 style="color: #444; margin-bottom: 20px;">¿Listo para empezar?</h2>
        <p style="color: #666; margin-bottom: 30px; font-size: 1.1rem;">
            Explora los recursos para padres o salta directamente a la diversión.
        </p>
        <div style="display: flex; justify-content: center; gap: 15px; flex-wrap: wrap;">
            <a href="juegos.php" class="btn-grande btn-jugar">Ver todos los juegos</a>
            <a href="padres.php" style="display: inline-block; padding: 15px 30px; border-radius: 50px; color: #555; border: 2px solid #ddd; font-weight: bold; transition: 0.3s;">Leer el Blog</a>
        </div>
    </div>
</section>

<?php include 'includes/footer.php'; ?>
