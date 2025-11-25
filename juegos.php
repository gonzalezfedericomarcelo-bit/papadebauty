<?php 
// Asegurate de que header.php exista en includes/
require 'includes/header.php'; 
// Asegurate de que juegos_data.php exista en includes/
require 'includes/juegos_data.php'; 
?>

<div class="zona-juego" style="padding-top: 40px;">
    
    <div style="text-align: center; margin-bottom: 40px;">
        <h1 style="color: var(--color-primario); font-size: 2.5rem;">Biblioteca de Juegos</h1>
        <p style="color: #666; font-size: 1.2rem;">Elige una actividad para empezar a aprender</p>
    </div>

    <div style="display:flex; justify-content:center; gap:10px; margin-bottom:30px; flex-wrap:wrap;">
        <a href="juegos.php" class="btn-grande" style="background:#eee; color:#555!important; font-size:0.9rem;">Todos</a>
        <a href="juegos.php?filtro=lenguaje" class="btn-grande" style="background:#F7CAC9; color:#fff!important; font-size:0.9rem;">Palabras</a>
        <a href="juegos.php?filtro=mate" class="btn-grande" style="background:#92A8D1; color:#fff!important; font-size:0.9rem;">Números</a>
        <a href="juegos.php?filtro=memoria" class="btn-grande" style="background:#88B04B; color:#fff!important; font-size:0.9rem;">Memoria</a>
    </div>

    <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(220px, 1fr)); gap: 25px; max-width: 1200px; width: 100%; padding: 0 20px;">
        
        <?php 
        $filtro = isset($_GET['filtro']) ? $_GET['filtro'] : null;

        foreach ($biblioteca_juegos as $id => $juego): 
            // Filtrado simple
            if($filtro && strpos($juego['tipo'], $filtro) === false && strpos($juego['categoria'] ?? '', $filtro) === false) continue;
            
            // Icono según tipo de juego
            $icono = 'fa-gamepad';
            $color = 'var(--color-primario)';
            
            if(strpos($juego['tipo'], 'lenguaje') !== false) { $icono = 'fa-font'; $color = '#F7CAC9'; }
            if(strpos($juego['tipo'], 'mate') !== false) { $icono = 'fa-calculator'; $color = '#92A8D1'; }
            if(strpos($juego['tipo'], 'memoria') !== false) { $icono = 'fa-brain'; $color = '#88B04B'; }
            if(strpos($juego['tipo'], 'puzzle') !== false) { $icono = 'fa-puzzle-piece'; $color = '#FFB347'; }
        ?>
        
            <a href="juego.php?id=<?php echo $id; ?>" style="text-decoration: none;">
                <div style="background: white; border-radius: 20px; padding: 25px; text-align: center; box-shadow: 0 5px 15px rgba(0,0,0,0.05); transition: transform 0.2s; border: 2px solid transparent; height: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center;">
                    <div style="width: 70px; height: 70px; background: <?php echo $color; ?>; border-radius: 50%; display: flex; align-items: center; justify-content: center; margin-bottom: 15px; color: white; font-size: 2rem;">
                        <i class="fa-solid <?php echo $icono; ?>"></i>
                    </div>
                    <h3 style="color: #555; font-size: 1.1rem; margin: 0;"><?php echo $juego['titulo']; ?></h3>
                </div>
            </a>

        <?php endforeach; ?>

    </div>
</div>

<?php require 'includes/footer.php'; ?>
