<?php
session_start();
require '../includes/db_connect.php';
if (!isset($_SESSION['usuario_id'])) { header("Location: index.php"); exit; }
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestionar Juegos</title>
    <link rel="stylesheet" href="../assets/css/estilos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body { background: #f4f4f4; display: block; padding-top: 20px; }
        .container { max-width: 1000px; margin: 0 auto; padding: 20px; }
        .header-tools { display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; }
        table { width: 100%; background: white; border-radius: 10px; border-collapse: collapse; overflow: hidden; box-shadow: 0 5px 15px rgba(0,0,0,0.05); }
        th, td { padding: 15px; text-align: left; border-bottom: 1px solid #eee; }
        th { background: #333; color: white; }
        .badge { padding: 5px 10px; border-radius: 10px; font-size: 0.8rem; font-weight: bold; }
        .badge-ok { background: #d4edda; color: #155724; }
        .badge-no { background: #f8d7da; color: #721c24; }
        .btn-mini { padding: 5px 10px; border-radius: 5px; text-decoration: none; color: white; font-size: 0.9rem; }
        .btn-edit { background: #88B04B; }
    </style>
</head>
<body>

<div class="container">
    <div class="header-tools">
        <a href="panel.php" class="btn-grande" style="background: #999; font-size: 1rem; padding: 10px 20px;">
            <i class="fa-solid fa-arrow-left"></i> Volver
        </a>
        <h2 style="color: #333;">Mis Juegos</h2>
        <div style="width: 50px;"></div> 
    </div>

    <table>
        <thead>
            <tr>
                <th>Portada</th>
                <th>Nombre</th>
                <th>Categoría (Edad)</th>
                <th>Estado</th>
                <th>Acción</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Traemos los juegos junto con el nombre de su categoría
            $sql = "SELECT j.*, c.rango as categoria 
                    FROM juegos j 
                    JOIN categorias_edad c ON j.id_categoria = c.id 
                    ORDER BY j.id_categoria ASC";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    
                    // Corrección de ruta para verla en admin
                    $ruta_img = $row['imagen_portada'];
                    if (strpos($ruta_img, 'http') === false) {
                        $ruta_img = "../" . $ruta_img;
                    }

                    echo "<tr>";
                    echo "<td style='width: 80px;'><img src='".$ruta_img."' style='width:50px; height:50px; object-fit:cover; border-radius:5px;'></td>";
                    echo "<td><strong>".$row['titulo']."</strong><br><span style='font-size:0.8rem; color:#888;'>".$row['descripcion']."</span></td>";
                    echo "<td>".$row['categoria']."</td>";
                    
                    echo "<td>";
                    if ($row['activo'] == 1) echo "<span class='badge badge-ok'>Activo</span>";
                    else echo "<span class='badge badge-no'>Oculto</span>";
                    echo "</td>";

                    echo "<td>";
                    echo "<a href='editar_juego.php?id=".$row['id']."' class='btn-mini btn-edit'><i class='fa-solid fa-pen'></i> Editar</a>";
                    echo "</td>";
                    echo "</tr>";
                }
            }
            ?>
        </tbody>
    </table>
</div>

</body>
</html>