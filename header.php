<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Papá de Bauti | Recursos y Juegos</title>
    <link rel="stylesheet" href="assets/css/estilos.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700;800&display=swap" rel="stylesheet">
    
    <style>
        /* ESTILOS ESPECÍFICOS DEL HEADER PRO */
        body { font-family: 'Nunito', sans-serif; margin: 0; padding-top: 80px; /* Espacio para el header fijo */ }

        .header-pro {
            background: white;
            height: 80px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 40px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.05);
            position: fixed; /* Header Fijo */
            top: 0; left: 0; width: 100%;
            z-index: 1000;
            box-sizing: border-box;
        }

        /* 1. IZQUIERDA: LOGO */
        .logo-area {
            flex: 1; /* Ocupa espacio para equilibrar */
            display: flex;
            align-items: center;
        }
        .logo-link {
            font-size: 1.5rem;
            font-weight: 800;
            color: #333;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .logo-icon {
            color: var(--color-primario, #FF6B6B); /* Si no está definida la variable, usa fallback */
            font-size: 1.8rem;
        }

        /* 2. CENTRO: NAVEGACIÓN */
        .nav-center {
            flex: 2;
            display: flex;
            justify-content: center;
        }
        .menu-pro {
            display: flex;
            list-style: none;
            margin: 0; padding: 0;
            gap: 30px;
            background: #f8f9fa;
            padding: 10px 30px;
            border-radius: 50px; /* Forma de píldora */
        }
        .menu-link {
            text-decoration: none;
            color: #555;
            font-weight: 700;
            font-size: 1rem;
            position: relative;
            transition: color 0.3s;
        }
        .menu-link:hover, .menu-link.activo {
            color: var(--color-secundario, #88B04B);
        }
        /* Efecto de puntito abajo al pasar el mouse */
        .menu-link::after {
            content: ''; position: absolute; bottom: -5px; left: 50%;
            width: 0; height: 3px; background: var(--color-secundario, #88B04B);
            transition: width 0.3s, left 0.3s; transform: translateX(-50%); border-radius: 2px;
        }
        .menu-link:hover::after { width: 100%; }

        /* 3. DERECHA: HERRAMIENTAS */
        .tools-right {
            flex: 1;
            display: flex;
            justify-content: flex-end;
            align-items: center;
            gap: 15px;
        }

        /* Iconos sociales circulares */
        .social-btn {
            width: 35px; height: 35px;
            border-radius: 50%;
            background: #f0f2f5;
            color: #555;
            display: flex; align-items: center; justify-content: center;
            text-decoration: none;
            transition: transform 0.2s, background 0.2s, color 0.2s;
        }
        .social-btn:hover { transform: translateY(-3px); }
        .social-ig:hover { background: #E1306C; color: white; }
        .social-yt:hover { background: #FF0000; color: white; }

        /* Buscador icono */
        .search-trigger {
            background: none; border: none; cursor: pointer;
            font-size: 1.2rem; color: #555; padding: 5px;
        }
        
        /* Botón Admin */
        .admin-link {
            color: #92A8D1; font-size: 1.1rem;
            text-decoration: none;
        }

        /* Botón CTA Destacado */
        .btn-contacto {
            background: var(--color-titulo, #92A8D1);
            color: white;
            padding: 8px 20px;
            border-radius: 20px;
            text-decoration: none;
            font-weight: bold;
            font-size: 0.9rem;
            box-shadow: 0 4px 10px rgba(146, 168, 209, 0.4);
            transition: 0.2s;
        }
        .btn-contacto:hover { transform: scale(1.05); }

        /* HAMBURGESA (Solo móvil) */
        .hamburger { display: none; font-size: 1.5rem; background: none; border: none; cursor: pointer; }

        /* RESPONSIVE */
        @media (max-width: 900px) {
            .nav-center, .tools-right { display: none; } /* Ocultamos menú desktop */
            .hamburger { display: block; } /* Mostramos hamburguesa */
            .header-pro { justify-content: space-between; padding: 0 20px; }
            
            /* Menú Móvil desplegable (Básico para que funcione) */
            .mobile-menu {
                display: none; position: absolute; top: 80px; left: 0; width: 100%;
                background: white; border-bottom: 1px solid #eee; padding: 20px;
                box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            }
            .mobile-menu.active { display: block; }
            .mobile-menu a { display: block; padding: 15px; border-bottom: 1px solid #f9f9f9; text-decoration: none; color: #333; font-weight: bold; }
        }
    </style>
</head>
<body>

<header class="header-pro">
    
    <div class="logo-area">
        <a href="index.php" class="logo-link">
            <i class="fa-solid fa-puzzle-piece logo-icon"></i>
            <span>Papá de Bauti</span>
        </a>
    </div>

    <div class="nav-center">
        <nav>
            <ul class="menu-pro">
                <li><a href="index.php" class="menu-link">Inicio</a></li>
                <li><a href="juegos.php" class="menu-link">Juegos</a></li>
                <li><a href="padres.php" class="menu-link">Blog & Recursos</a></li>
            </ul>
        </nav>
    </div>

    <div class="tools-right">
        
        <a href="#" class="social-btn social-ig" title="Instagram"><i class="fa-brands fa-instagram"></i></a>
        <a href="#" class="social-btn social-yt" title="YouTube"><i class="fa-brands fa-youtube"></i></a>
        
        <div style="width: 1px; height: 20px; background: #ddd; margin: 0 10px;"></div> <a href="padres.php" class="search-trigger" title="Buscar"><i class="fa-solid fa-magnifying-glass"></i></a>
        
        <?php if(isset($_SESSION['usuario_id'])): ?>
            <a href="panel.php" class="admin-link" title="Ir al Panel"><i class="fa-solid fa-gear"></i></a>
        <?php else: ?>
            <a href="index.php" class="admin-link" title="Acceso Papá"><i class="fa-regular fa-user"></i></a>
        <?php endif; ?>

        <a href="#" class="btn-contacto">Contacto</a>
    </div>

    <button class="hamburger" onclick="toggleMenu()">
        <i class="fa-solid fa-bars"></i>
    </button>
</header>



<script>
    function toggleMenu() {
        document.getElementById('mobile-menu').classList.toggle('active');
    }
</script>

<main>