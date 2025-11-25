<?php
require 'includes/db_connect.php';
require 'includes/header.php';

// Validar ID
if (!isset($_GET['id']) || empty($_GET['id'])) {
    header("Location: padres.php");
    exit;
}

$id = intval($_GET['id']);

// Consulta segura
$stmt = $conn->prepare("SELECT a.*, c.nombre as categoria_nombre 
                        FROM articulos a 
                        LEFT JOIN categorias_blog c ON a.id_categoria = c.id 
                        WHERE a.id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    echo "<div class='container' style='padding:50px;'><h2>Artículo no encontrado</h2><a href='padres.php' class='btn-grande'>Volver al Blog</a></div>";
    require 'includes/footer.php'; // Si tenés footer
    exit;
}

$articulo = $result->fetch_assoc();

// Corrección de ruta de imagen si es relativa
$img_bg = $articulo['imagen_destacada'];
if (strpos($img_bg, 'http') === false) {
    // Si la ruta ya tiene "assets/", perfecto. Si no, ajustar según tu estructura.
    // Asumimos que en la BD se guarda como "assets/img/..."
}
?>

<style>
    /* Estilos específicos para el artículo */
    .hero-articulo {
        height: 400px;
        background: url('<?php echo $img_bg; ?>') no-repeat center center/cover;
        position: relative;
        display: flex;
        align-items: flex-end; /* Alineamos el contenido abajo */
    }
    .hero-overlay {
        background: linear-gradient(to top, rgba(0,0,0,0.8), transparent);
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0; left: 0;
    }
    .hero-content {
        position: relative;
        z-index: 2;
        width: 100%;
        max-width: 1000px;
        margin: 0 auto;
        padding: 40px 20px;
        color: white;
        text-shadow: 1px 1px 10px rgba(0,0,0,0.5);
    }
    
    .articulo-container {
        max-width: 900px;
        margin: -50px auto 50px; /* Subimos un poco, pero menos agresivo */
        background: white;
        padding: 40px; /* Más espacio interno */
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        position: relative;
        z-index: 3;
    }

    .meta-info {
        font-size: 0.9rem;
        color: #ddd;
        margin-bottom: 10px;
    }
    .categoria-badge {
        background: var(--color-secundario, #88B04B);
        color: white;
        padding: 5px 10px;
        border-radius: 20px;
        font-size: 0.8rem;
        text-transform: uppercase;
        font-weight: bold;
        display: inline-block;
        margin-bottom: 10px;
    }

    .contenido-body img {
        max-width: 100%;
        height: auto;
        border-radius: 10px;
        margin: 20px 0;
    }
    
    .contenido-body {
        font-size: 1.1rem;
        line-height: 1.8;
        color: #444;
    }
</style>

<div class="hero-articulo">
    <div class="hero-overlay"></div>
    <div class="hero-content">
        <?php if($articulo['categoria_nombre']): ?>
            <span class="categoria-badge"><?php echo $articulo['categoria_nombre']; ?></span>
        <?php endif; ?>
        <h1 style="font-size: 2.5rem; margin: 0;"><?php echo $articulo['titulo']; ?></h1>
        <div class="meta-info">
            <i class="fa-regular fa-calendar"></i> <?php echo date("d/m/Y", strtotime($articulo['fecha_publicacion'])); ?> 
            | Por <strong><?php echo $articulo['autor']; ?></strong>
        </div>
    </div>
</div>

<div class="articulo-container">
    
    <a href="padres.php" style="text-decoration: none; color: #888; font-weight: bold; display: inline-block; margin-bottom: 20px;">
        <i class="fa-solid fa-arrow-left"></i> Volver a Recursos
    </a>

    <div class="contenido-body">
        <img src="<?php echo $img_bg; ?>" alt="<?php echo $articulo['titulo']; ?>" style="width: 100%; max-height: 500px; object-fit: cover; margin-bottom: 30px;">
        
        <?php echo $articulo['contenido']; ?>
    </div>

    <hr style="margin: 40px 0; border: 0; border-top: 1px solid #eee;">
    <div style="text-align: center;">
        <h3>¿Te gustó este artículo?</h3>
        <p>Explorá más recursos en nuestra sección para padres.</p>
        <a href="padres.php" class="btn-grande btn-jugar">Ver más artículos</a>
    </div>
</div>

</body>
</html>