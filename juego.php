<?php
// =========================================================================
// juego.php - VERSIÓN DE EMERGENCIA: TODOS LOS ARCHIVOS ESTÁN EN LA RAÍZ
// =========================================================================

// --- REQUISITOS CRÍTICOS (Ahora sin la ruta 'includes/') ---
require 'header.php'; 
require 'juegos_data.php'; 

// 1. CAPTURAR QUÉ JUEGO ES
$id = isset($_GET['id']) ? intval($_GET['id']) : null;

// VERIFICACIÓN DEL JUEGO SELECCIONADO
if (!$id || !isset($biblioteca_juegos[$id])) {
    echo "<div class='zona-juego' style='text-align:center; padding: 50px;'>
            <h2>¡Oops! Juego no encontrado. </h2>
            <a href='juegos.php' class='btn-grande btn-jugar' style='margin-top: 20px;'>
                <i class='fa-solid fa-arrow-left'></i> Ir al Menú de Juegos
            </a>
          </div>";
    if (file_exists('footer.php')) require 'footer.php';
    exit;
}

$juego = $biblioteca_juegos[$id]; 
?>

<div class="zona-juego" style="padding-top: 20px;">
    <div class="barra-control" style="display: flex; justify-content: space-between; align-items: center; width: 100%; max-width: 900px; margin: 0 auto 10px;">
        <a href="juegos.php" style="color: #999; font-weight: bold; font-size: 1.1rem; display: flex; align-items: center; gap: 5px;">
            <i class="fa-solid fa-arrow-left"></i> Volver
        </a>
        <h2 style="margin: 0; color: var(--color-secundario);"><?php echo $juego['titulo']; ?></h2>
        <div style="width: 80px;"></div>
    </div>

    <div id="game-container" style="width: 100%; max-width: 900px; background: #fff; padding: 20px; border-radius: 15px; box-shadow: 0 5px 15px rgba(0,0,0,0.05);">
        <?php
        // 3. Carga el motor correspondiente
        
        $motor_name = 'motor_' . $juego['tipo'] . '.php'; 
        //  RUTA MÁS SENCILLA: Asume que el motor está en la RAÍZ (junto a juego.php)
        $ruta_motor = $motor_name; 

        if (file_exists($ruta_motor)) {
            
            // Si hay config o data, la pasamos a JavaScript
            if (isset($juego['config']) || isset($juego['data'])) {
                $config_data = isset($juego['config']) ? $juego['config'] : $juego['data'];
                $config_key = 'gameConfig'; // Usamos un nombre genérico
                if ($juego['tipo'] == 'lenguaje') $config_key = 'palabrasConfig';
                if ($juego['tipo'] == 'secuencia') $config_key = 'secuenciaConfig';
                if ($juego['tipo'] == 'clasificacion') $config_key = 'datosJuego';

                echo "<script>const " . $config_key . " = " . json_encode($config_data ?? []) . ";</script>";
            }

            // Incluimos el motor (Ej: motor_lenguaje.php)
            include $ruta_motor;
            
        } else {
            // MENSAJE DE ERROR
            echo "<div style='padding:50px; text-align:center;'>
                    <h3>Motor de juego no encontrado: " . htmlspecialchars($ruta_motor) . " </h3>
                    <p>Verifica que el archivo <strong>" . htmlspecialchars($motor_name) . "</strong> esté en la carpeta RAÍZ.</p>
                  </div>";
        }
        ?>
    </div>
    
</div>

<?php require 'footer.php'; ?> 
