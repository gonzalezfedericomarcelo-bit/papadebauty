<?php
require 'includes/db_connect.php';
require 'includes/header.php';

// --- LÓGICA DE BÚSQUEDA ---
$where = "WHERE 1=1";
$busqueda = "";

if (isset($_GET['busqueda']) && !empty($_GET['busqueda'])) {
    $busqueda = $conn->real_escape_string($_GET['busqueda']);
    $where .= " AND (titulo LIKE '%$busqueda%' OR contenido LIKE '%$busqueda%')";
}

if (isset($_GET['cat']) && !empty($_GET['cat'])) {
    $cat_id = intval($_GET['cat']);
    $where .= " AND id_categoria = $cat_id";
}

$sql = "SELECT a.*, c.nombre as categoria_nombre 
        FROM articulos a 
        LEFT JOIN categorias_blog c ON a.id_categoria = c.id 
        $where 
        ORDER BY fecha_publicacion DESC";
$result = $conn->query($sql);
?>

<style>
    /* VARIABLES DE COLOR (Tu paleta) */
    :root {
        --color-titulo: #92A8D1; /* El Celeste/Lila de tu foto */
        --color-subtitulo: #7f8c8d;
        --fondo-body: #fdfdfd;
        --color-verde: #88B04B;
    }

    body { background-color: var(--fondo-body); }

    /* --- 1. ENCABEZADO EXACTO A LA FOTO --- */
    .header-blog-top {
        text-align: center;
        padding-top: 60px;
        padding-bottom: 40px;
        background-color: #fff; /* Fondo blanco puro */
        width: 100%;
        margin-bottom: 50px; /* Espacio antes de los artículos */
    }

    .header-blog-top h1 {
        color: var(--color-titulo); /* Color exacto de la imagen */
        font-size: 2.5rem;
        font-weight: 800; /* Letra bien gruesa */
        margin: 0 0 10px 0;
        letter-spacing: 0.5px;
    }

    .header-blog-top p {
        color: var(--color-subtitulo); /* Gris suave */
        font-size: 1.1rem;
        margin: 0;
        font-weight: 400;
    }

    /* --- 2. ESTRUCTURA DE 3 COLUMNAS --- */
    .contenedor-principal {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
        display: flex;
        gap: 40px;
        align-items: flex-start;
    }

    /* GRILLA DE ARTÍCULOS */
    .grid-articulos {
        flex: 3; /* Ocupa la mayor parte */
        display: grid;
        grid-template-columns: repeat(3, 1fr); /* 3 COLUMNAS SIEMPRE */
        gap: 30px;
    }

    .card-post {
        background: white;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0,0.05);
        transition: transform 0.2s;
        display: flex;
        flex-direction: column;
        border: 1px solid #f0f0f0;
    }
    .card-post:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0,0,0,0.1);
    }

    .card-img {
        width: 100%;
        height: 180px;
        object-fit: cover;
    }

    .card-content {
        padding: 20px;
        display: flex;
        flex-direction: column;
        flex-grow: 1;
    }

    .card-cat {
        font-size: 0.75rem;
        text-transform: uppercase;
        color: var(--color-titulo);
        font-weight: bold;
        margin-bottom: 8px;
    }

    .card-titulo {
        font-size: 1.1rem;
        margin: 0 0 10px 0;
        color: #333;
        line-height: 1.4;
        font-weight: 700;
    }

    .card-link {
        margin-top: auto;
        color: var(--color-verde);
        font-weight: bold;
        text-decoration: none;
        font-size: 0.9rem;
    }

    /* SIDEBAR (Derecha) */
    .sidebar {
        flex: 1;
        min-width: 280px;
    }

    .widget {
        background: white;
        padding: 25px;
        border-radius: 15px;
        margin-bottom: 30px;
        box-shadow: 0 5px 15px rgba(0,0,0,0.03);
        border: 1px solid #f0f0f0;
    }
    .widget h3 {
        margin-top: 0;
        color: #555;
        font-size: 1.1rem;
        margin-bottom: 15px;
        font-weight: 700;
        border-bottom: 2px solid #f5f5f5;
        padding-bottom: 10px;
    }

    /* Buscador */
    .form-busqueda { display: flex; }
    .form-busqueda input {
        width: 100%; padding: 10px;
        border: 1px solid #ddd; border-radius: 8px 0 0 8px;
        outline: none; background: #fdfdfd;
    }
    .form-busqueda button {
        padding: 0 15px; background: var(--color-titulo);
        color: white; border: none; border-radius: 0 8px 8px 0; cursor: pointer;
    }

    /* Botones de Categoría */
    .lista-cats { display: flex; flex-wrap: wrap; gap: 8px; }
    .btn-cat {
        padding: 6px 12px;
        background: #f4f4f4;
        color: #666;
        text-decoration: none;
        border-radius: 20px;
        font-size: 0.85rem;
        transition: 0.2s;
    }
    .btn-cat:hover, .btn-cat.active {
        background: var(--color-verde);
        color: white;
    }

    /* RESPONSIVE */
    @media (max-width: 900px) {
        .grid-articulos { grid-template-columns: repeat(2, 1fr); }
    }
    @media (max-width: 700px) {
        .contenedor-principal { flex-direction: column; }
        .grid-articulos { grid-template-columns: 1fr; }
    }
</style>

<div class="header-blog-top">
    <h1>Blog y Recursos</h1>
    <p>Herramientas terapéuticas y guías para la familia.</p>
</div>

<div class="contenedor-principal">

    <div class="grid-articulos">
        <?php if ($result->num_rows > 0): ?>
            <?php while($row = $result->fetch_assoc()): ?>
                <div class="card-post">
                    <a href="articulo.php?id=<?php echo $row['id']; ?>">
                        <img src="<?php echo $row['imagen_destacada']; ?>" class="card-img" alt="Imagen">
                    </a>
                    <div class="card-content">
                        <span class="card-cat"><?php echo $row['categoria_nombre']; ?></span>
                        <h3 class="card-titulo">
                            <a href="articulo.php?id=<?php echo $row['id']; ?>" style="text-decoration:none; color:inherit;">
                                <?php echo $row['titulo']; ?>
                            </a>
                        </h3>
                        <a href="articulo.php?id=<?php echo $row['id']; ?>" class="card-link">Leer nota completa →</a>
                    </div>
                </div>
            <?php endwhile; ?>
        <?php else: ?>
            <div style="grid-column: 1 / -1; text-align: center; color: #999; padding: 40px;">
                <h3>No hay artículos aquí.</h3>
                <a href="padres.php" style="color: var(--color-titulo);">Ver todos</a>
            </div>
        <?php endif; ?>
    </div>

    <aside class="sidebar">
        
        <div class="widget">
            <h3>Buscar</h3>
            <form action="padres.php" method="GET" class="form-busqueda">
                <input type="text" name="busqueda" placeholder="Buscar..." value="<?php echo htmlspecialchars($busqueda); ?>">
                <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
        </div>

        <div class="widget">
            <h3>Temas</h3>
            <div class="lista-cats">
                <a href="padres.php" class="btn-cat">Todos</a>
                <?php
                $cats = $conn->query("SELECT * FROM categorias_blog");
                while($c = $cats->fetch_assoc()) {
                    $active = (isset($_GET['cat']) && $_GET['cat'] == $c['id']) ? 'active' : '';
                    echo "<a href='padres.php?cat=".$c['id']."' class='btn-cat $active'>".$c['nombre']."</a>";
                }
                ?>
            </div>
        </div>

    </aside>

</div>

<div style="height: 50px;"></div>

<?php require 'includes/footer.php'; ?>