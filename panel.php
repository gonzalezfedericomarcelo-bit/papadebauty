<?php
session_start();
// Seguridad: Si no está logueado, fuera.
if (!isset($_SESSION['usuario_id'])) {
    header("Location: index.php");
    exit;
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administración</title>
    <link rel="stylesheet" href="../assets/css/estilos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* Estilos específicos para el encabezado del panel */
        .admin-header {
            background-color: #333;
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap; /* Permite que baje si no hay espacio */
        }
        .user-info { font-size: 0.9rem; }
        .user-info a { color: #ccc; margin-left: 10px; }
        
        @media (max-width: 600px) {
            .admin-header { flex-direction: column; text-align: center; gap: 10px; }
        }
    </style>
</head>
<body>

<div class="admin-header">
    <div style="font-weight: bold; font-size: 1.1rem;">
        <i class="fa-solid fa-gear"></i> Panel de Papá
    </div>
    <div class="user-info">
        Hola, <strong><?php echo $_SESSION['nombre']; ?></strong> | 
        <a href="logout.php">Cerrar Sesión</a>
    </div>
</div>

<div style="max-width: 1000px; margin: 40px auto; padding: 20px;">
    
    <div class="panel-grid">
        <a href="listar_articulos.php" class="panel-card">
            <i class="fa-regular fa-newspaper"></i>
            <h3>Artículos</h3>
            <p style="color:#666; font-size:0.9rem;">Escribir o editar notas para padres.</p>
        </a>

        <a href="listar_juegos.php" class="panel-card">
            <i class="fa-solid fa-gamepad"></i>
            <h3>Juegos</h3>
            <p style="color:#666; font-size:0.9rem;">Agregar juegos o cambiar imágenes.</p>
        </a>

        <a href="../index.php" target="_blank" class="panel-card">
            <i class="fa-solid fa-rocket"></i>
            <h3>Ver Web</h3>
            <p style="color:#666; font-size:0.9rem;">Ir al sitio público.</p>
        </a>
    </div>

</div>

</body>
</html>
