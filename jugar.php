<?php 
require 'includes/db_connect.php'; 
include 'includes/header.php'; 

// VALIDACIÓN DE SEGURIDAD BÁSICA
if (!isset($_GET['id'])) {
    echo "<div style='padding:2rem; text-align:center;'>Error: Falta el ID del juego.</div>";
    include 'includes/footer.php';
    exit;
}

$game_id = intval($_GET['id']);

// BUSCAMOS EL JUEGO
$sql = "SELECT j.*, m.archivo_base 
        FROM juegos j 
        JOIN motores_juego m ON j.id_motor = m.id 
        WHERE j.id = $game_id";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $juego = $result->fetch_assoc();
    $config_json = $juego['configuracion']; 
} else {
    echo "<div style='padding:2rem; text-align:center;'>Juego no encontrado.</div>";
    include 'includes/footer.php';
    exit;
}
?>

<script>
    // Si no hay JSON válido, usamos un objeto vacío para que no rompa
    const gameConfig = <?php echo ($config_json && $config_json != '') ? $config_json : '{}'; ?>;
    console.log("Configuración cargada:", gameConfig);
</script>

<div class="zona-juego" style="background-color: #f0f0f0; padding: 20px; min-height: 600px; display: flex; flex-direction: column; align-items: center;">
    
    <div style="width: 100%; max-width: 800px; display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
        <h2 style="color: var(--color-primario); margin: 0;"><?php echo $juego['titulo']; ?></h2>
        <a href="juegos.php" class="btn-grande" style="padding: 10px 20px; font-size: 1rem; background-color: #ccc;">
            <i class="fa-solid fa-arrow-left"></i> Volver
        </a>
    </div>

    <div id="game-container" style="position: relative; width: 100%; max-width: 800px; height: 500px; background: white; border-radius: 20px; box-shadow: 0 10px 20px rgba(0,0,0,0.1); overflow: hidden;">
        
        <?php 
            // Cargar el motor del juego
            $archivo_motor = 'motores/' . $juego['archivo_base'];
            
            // Verificación simple para evitar errores feos
            if (file_exists($archivo_motor)) {
                include $archivo_motor;
            } else {
                echo "<div style='padding:20px; color:red;'>Error: No se encuentra el archivo " . $juego['archivo_base'] . "</div>";
            }
        ?>

    </div>
    
    <p style="margin-top: 15px; color: #666; font-style: italic;">
        <?php echo $juego['descripcion']; ?>
    </p>

</div>

<?php include 'includes/footer.php'; ?>