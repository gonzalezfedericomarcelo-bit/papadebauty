<?php 
// ACTIVAR ERRORES PARA DEBUG
ini_set('display_errors', 1); error_reporting(E_ALL);

require 'includes/db_connect.php'; 
require 'includes/header.php'; 

if (!isset($_GET['id'])) {
    echo "<div style='padding:2rem; text-align:center;'>Falta ID. <a href='juegos.php'>Volver</a></div>";
    require 'includes/footer.php'; exit;
}
$game_id = intval($_GET['id']);

// 1. Obtener datos básicos del juego
$sql = "SELECT * FROM juegos WHERE id = $game_id";
$juego = $conn->query($sql)->fetch_assoc();

if (!$juego) {
    echo "Juego no encontrado."; require 'includes/footer.php'; exit;
}

// 2. BUSCAR CONTENIDO MANUAL (La nueva tabla)
$sql_contenido = "SELECT imagen, palabra_correcta, distractor1, distractor2, distractor3, audio 
                  FROM juegos_contenido WHERE id_juego = $game_id ORDER BY id ASC";
$res_contenido = $conn->query($sql_contenido);
$contenido_manual = [];
while($row = $res_contenido->fetch_assoc()){
    $contenido_manual[] = $row;
}

// Preparar configuración antigua por si acaso
$config_json = $juego['configuracion'] ?: '{}';
?>

<script>
    // Esta es la clave: Pasamos el contenido manual al motor
    const contenidoJuego = <?php echo json_encode($contenido_manual); ?>;
    const gameConfig = <?php echo $config_json; ?>; 
    
    // IMPORTANTE: Forzamos el tipo de juego desde PHP para que JS lo reciba bien
    const tipoJuego = "<?php echo $juego['tipo_juego']; ?>";
    
    console.log("Juego:", "<?php echo $juego['titulo']; ?>");
    console.log("Tipo:", tipoJuego);
    console.log("Contenido cargado:", contenidoJuego.length + " items");
</script>

<style>
    .game-wrapper { padding: 20px; min-height: 80vh; background: #f4f7f6; display: flex; justify-content: center; }
    .game-card { width: 100%; max-width: 900px; background: white; border-radius: 25px; box-shadow: 0 10px 30px rgba(0,0,0,0.08); overflow: hidden; }
    .game-header { padding: 15px 30px; background: #f8f9fa; border-bottom: 2px solid #eee; display: flex; justify-content: space-between; align-items: center; }
    .game-area { padding: 20px; min-height: 500px; display: flex; justify-content: center; }
</style>

<div class="game-wrapper">
    <div class="game-card">
        <div class="game-header">
            <h2 style="margin:0; color:var(--color-secundario);"><i class="fa-solid fa-gamepad"></i> <?php echo $juego['titulo']; ?></h2>
            <a href="juegos.php" class="btn-grande" style="padding:8px 20px; background:#ddd; color:#555!important;">Salir</a>
        </div>

        <div class="game-area" id="contenedor-juego">
            <?php 
                // LÓGICA DE SELECCIÓN DE MOTOR
                if ($juego['tipo_juego'] == 'texto_drag') {
                    include 'motores/motor_texto_drag.php';
                } else {
                    // Para todo lo demás (imágenes, memoria, etc), usamos el universal
                    include 'motores/motor_universal.php';
                }
            ?>
        </div>
    </div>
</div>

<?php require 'includes/footer.php'; ?>