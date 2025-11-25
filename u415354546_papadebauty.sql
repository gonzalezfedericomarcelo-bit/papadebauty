-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-11-2025 a las 19:32:21
-- Versión del servidor: 11.8.3-MariaDB-log
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u415354546_papadebauty`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `contenido` text NOT NULL,
  `autor` varchar(100) DEFAULT 'Papá de Bauti',
  `fecha_publicacion` datetime DEFAULT current_timestamp(),
  `imagen_destacada` varchar(100) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `contenido`, `autor`, `fecha_publicacion`, `imagen_destacada`, `id_categoria`) VALUES
(1, 'El Método ABN y Montessori: Cómo enseñar matemáticas manipulativas en casa', '<h3>&iquest;Por qu&eacute; a mi hijo le cuesta la abstracci&oacute;n num&eacute;rica?</h3>\r\n<p>El cerebro de un ni&ntilde;o con autismo suele ser literal y visual. Cuando escribimos el n&uacute;mero \"123\" en un papel, para ellos son solo garabatos. No \"ven\" la cantidad. Por eso, el m&eacute;todo tradicional de memorizar tablas a menudo fracasa o genera ansiedad.</p>\r\n<h3>La Soluci&oacute;n: El C&oacute;digo de Color</h3>\r\n<p>En los materiales que utilizamos en la web, usamos un c&oacute;digo de color estricto para dar peso visual al n&uacute;mero:</p>\r\n<ul>\r\n<li><strong><span style=\"color: #2196f3;\">UNIDADES (Azul):</span></strong> Son cubitos sueltos. Representan el \"1\".</li>\r\n<li><strong><span style=\"color: #f44336;\">DECENAS (Rojo):</span></strong> Son barras verticales. El ni&ntilde;o puede ver f&iacute;sicamente que una barra roja es igual de alta que 10 cubitos azules apilados.</li>\r\n<li><strong><span style=\"color: #4caf50;\">CENTENAS (Verde):</span></strong> Son cuadrados planos grandes. Visualmente, ocupan mucho m&aacute;s espacio.</li>\r\n</ul>\r\n<h3>Actividad Pr&aacute;ctica: \"La Casita de Sumar\"</h3>\r\n<p>Para ense&ntilde;ar la suma con llevada, no usemos solo l&aacute;piz y papel. Usen las plantillas imprimibles:</p>\r\n<ol>\r\n<li>Coloquen las fichas azules en la columna derecha. Si juntan m&aacute;s de 9 fichas azules, <strong>f&iacute;sicamente</strong> c&aacute;mbienlas por una barra roja.</li>\r\n<li>Esa barra roja \"no cabe\" en la habitaci&oacute;n azul, as&iacute; que debe \"subir en ascensor\" al techo de la columna de las decenas.</li>\r\n</ol>\r\n<p>Utilice nuestras herramientas digitales en la secci&oacute;n de Juegos para reforzar esto, pero siempre comb&iacute;nelo con material concreto en la mesa.</p>', 'Papá de Bauti', '2025-11-24 22:48:36', 'assets/img/1764031999_Gemini_Generated_Image_xmz4nnxmz4nnxmz4.png', 2),
(2, 'Lectura Global: Cuando el método silábico falla', '<h3>El Pensamiento Gestalt en el Autismo</h3>\r\n<p>Muchos ni&ntilde;os con TEA son \"aprendices Gestalt\". Esto significa que procesan la informaci&oacute;n en bloques completos en lugar de pedacito por pedacito. El m&eacute;todo tradicional de ense&ntilde;ar \"M con A suena MA\" a veces va en contra de su cableado cerebral natural.</p>\r\n<h3>&iquest;C&oacute;mo aplicar la Lectura Global?</h3>\r\n<p>Este m&eacute;todo se basa en asociar la palabra escrita completa directamente con la imagen. Es como si el ni&ntilde;o sacara una \"foto mental\" de la palabra.</p>\r\n<h4>Fase 1: Asociaci&oacute;n</h4>\r\n<p>Use las tarjetas de nuestros recursos (CASA, PATO, VACA). Muestre la imagen junto con la palabra. Diga la palabra clara y fuerte. No pida al ni&ntilde;o que la lea, solo que la asocie.</p>\r\n<h4>Fase 2: Selecci&oacute;n</h4>\r\n<p>Ponga tres tarjetas en la mesa. Entr&eacute;guele al ni&ntilde;o el cartel que dice \"MESA\" y p&iacute;dale que lo ponga sobre la foto correcta. Aqu&iacute; estamos trabajando discriminaci&oacute;n visual.</p>\r\n<h4>Fase 3: Generalizaci&oacute;n</h4>\r\n<p>Una vez que el ni&ntilde;o \"lee\" (reconoce) la palabra VACA en la tarjeta, escr&iacute;bala en un pizarr&oacute;n. Si la reconoce, &iexcl;ha aprendido a leer esa palabra!</p>', 'Fonoaudiología', '2025-11-24 22:48:36', 'assets/img/1764027904_Gemini_Generated_Image_n7mts5n7mts5n7mt.png', 1),
(3, 'Escritura y Propiocepción: El uso del \"Dedo Espaciador\"', '<h3>&iquest;Por qu&eacute; escribe todo junto?</h3>\r\n<p>Es muy com&uacute;n ver que los ni&ntilde;os escriben oraciones enteras sin espacios (\"lamamanomeama\"). Esto no es siempre un problema de lenguaje, sino de <strong>propiocepci&oacute;n y organizaci&oacute;n espacial</strong>. El ni&ntilde;o no \"siente\" d&oacute;nde termina una palabra y empieza la otra en el espacio blanco del papel.</p>\r\n<h3>Una herramienta simple pero poderosa</h3>\r\n<p>En lugar de borrarle la hoja y frustrarlo, introduzca una herramienta de apoyo f&iacute;sico: <strong>El Dedo Espaciador</strong>.</p>\r\n<h4>C&oacute;mo utilizarlo paso a paso:</h4>\r\n<ul>\r\n<li><strong>Paso 1:</strong> Imprima y recorte el dedo espaciador en cartulina r&iacute;gida.</li>\r\n<li><strong>Paso 2:</strong> P&iacute;dale al ni&ntilde;o que escriba la primera palabra.</li>\r\n<li><strong>Paso 3:</strong> Inmediatamente, que coloque el \"dedo de cart&oacute;n\" al final de la &uacute;ltima letra.</li>\r\n<li><strong>Paso 4:</strong> La siguiente palabra debe empezar <em>despu&eacute;s</em> del dedo.</li>\r\n</ul>\r\n<p>Con el tiempo, el ni&ntilde;o interioriza esta distancia f&iacute;sica y empieza a dejar el espacio visualmente sin necesidad de la herramienta.</p>', 'Terapia Ocupacional', '2025-11-24 22:48:36', 'assets/img/1764030912_Gemini_Generated_Image_63jkja63jkja63jk.png', 4),
(4, 'Historias Sociales: Anticipando situaciones nuevas', '<h3>El miedo a lo desconocido</h3>\r\n<p>Ir al supermercado o a un cumplea&ntilde;os puede ser aterrador para un ni&ntilde;o con rigidez cognitiva. Las <strong>Historias Sociales</strong> son cuentos cortos que explican una situaci&oacute;n social antes de que ocurra.</p>\r\n<h3>An&aacute;lisis del Cuento: \"Antonia va al Supermercado\"</h3>\r\n<p>En este cuento, no solo narramos un hecho, modelamos conducta:</p>\r\n<ul>\r\n<li><strong>Estructura:</strong> Antonia lleva una lista (ayuda a la funci&oacute;n ejecutiva de planificaci&oacute;n).</li>\r\n<li><strong>Intereses Restringidos:</strong> El cuento valida que Antonia vaya directo a los tomates (su inter&eacute;s). Usar los intereses del ni&ntilde;o como ancla emocional es clave.</li>\r\n<li><strong>Recompensa:</strong> El helado al final marca el cierre de la actividad. Saber cu&aacute;ndo termina algo reduce la ansiedad.</li>\r\n</ul>\r\n<h3>Actividad para padres</h3>\r\n<p>Antes de su pr&oacute;xima salida, lean el cuento. Luego, preg&uacute;ntele a su hijo: <em>\"&iquest;Qu&eacute; vamos a comprar nosotros?\"</em> y armen su propia lista visual.</p>', 'Psicología', '2025-11-24 22:48:36', 'assets/img/1764034947_Gemini_Generated_Image_dul87sdul87sdul8.png', 3),
(5, 'Conducta es Comunicación: El Llavero de Peticiones', '<h3>El colapso no es un berrinche</h3>\r\n<p>Cuando un ni&ntilde;o autista entra en crisis, a menudo ha perdido la capacidad de acceder al lenguaje verbal debido al estr&eacute;s.</p>\r\n<h3>El Llavero como V&aacute;lvula de Escape</h3>\r\n<p>El llavero de comunicaci&oacute;n contiene pictogramas vitales para la supervivencia emocional:</p>\r\n<h4>Tarjetas Cr&iacute;ticas:</h4>\r\n<ul>\r\n<li><strong>\"HAY MUCHO RUIDO\":</strong> Valida el dolor sensorial auditivo. Ens&eacute;&ntilde;ele a mostrar esta tarjeta y ofrezca inmediatamente auriculares o una salida.</li>\r\n<li><strong>\"NECESITO UN ESPACIO SEGURO\":</strong> A veces el ni&ntilde;o solo necesita 5 minutos dentro de una carpa para reorganizarse.</li>\r\n<li><strong>\"ESTOY CANSADO\":</strong> Muchos ni&ntilde;os tienen baja interocepci&oacute;n y no notan su fatiga hasta que colapsan. Esta tarjeta ayuda a ponerle nombre a la sensaci&oacute;n.</li>\r\n</ul>', 'Terapia', '2025-11-24 22:48:36', 'assets/img/1764032417_Gemini_Generated_Image_ws7xfmws7xfmws7x.png', 4),
(6, 'Ecolalia: ¿Por qué mi hijo repite todo lo que digo?', '<h3>No es solo repetici&oacute;n, es comunicaci&oacute;n</h3>\r\n<p>La ecolalia (repetir palabras o frases) a menudo se malinterpreta como un comportamiento sin sentido. Sin embargo, en el autismo, es una fase crucial del desarrollo del lenguaje.</p>\r\n<h4>Tipos de Ecolalia:</h4>\r\n<ul>\r\n<li><strong>Inmediata:</strong> El ni&ntilde;o repite lo que acabas de decir. A veces lo usa para procesar la informaci&oacute;n auditiva o para decir \"s&iacute;\" (afirmar).</li>\r\n<li><strong>Diferida:</strong> Repite frases de pel&iacute;culas o comerciales fuera de contexto. A menudo, estas frases tienen una asociaci&oacute;n emocional (\"&iexcl;Al infinito y m&aacute;s all&aacute;!\" puede significar \"quiero irme\" o \"estoy emocionado\").</li>\r\n</ul>\r\n<h3>Estrategia para padres:</h3>\r\n<p>No intentes extinguirla. Intenta descubrir la <strong>intenci&oacute;n comunicativa</strong> detr&aacute;s. Si repite \"&iquest;Quieres galleta?\", probablemente est&aacute; pidiendo una. Modela la frase correcta: \"Di: Quiero galleta\".</p>', 'Fonoaudiología', '2025-11-24 23:02:51', 'assets/img/1764026831_Gemini_Generated_Image_nkbuu2nkbuu2nkbu.png', 5),
(7, 'Sistemas SAAC: Mitos y Realidades sobre los pictogramas', '<h3>&iquest;El uso de im&aacute;genes frena el habla?</h3>\r\n<p>Este es el mito m&aacute;s com&uacute;n entre los padres. \"Si le doy una tablet o un cuaderno de comunicaci&oacute;n, no se esforzar&aacute; por hablar\". La evidencia cient&iacute;fica dice lo contrario.</p>\r\n<p>El uso de Sistemas Aumentativos y Alternativos de Comunicaci&oacute;n (SAAC) <strong>reduce la ansiedad</strong>. Al tener una forma de comunicarse, el ni&ntilde;o se relaja y, a menudo, esto facilita la aparici&oacute;n del lenguaje verbal.</p>\r\n<h3>Cu&aacute;ndo implementarlo:</h3>\r\n<p>Si su hijo tiene m&aacute;s de 3 a&ntilde;os y no tiene lenguaje verbal funcional, o si su habla es ininteligible, consulte con su fonoaudi&oacute;logo para iniciar un SAAC (PECS, Proloquo, o tableros simples).</p>', 'Fonoaudiología', '2025-11-24 23:02:51', 'assets/img/1764026887_Gemini_Generated_Image_xwnnkhxwnnkhxwnn.png', 5),
(8, 'Pragmática del Lenguaje: Entendiendo el doble sentido', '<h3>La literalidad en el autismo</h3>\r\n<p>El lenguaje no es solo palabras y gram&aacute;tica; es uso social (pragm&aacute;tica). Los ni&ntilde;os con TEA suelen tener un pensamiento literal. Frases como \"me muero de hambre\" o \"est&aacute; lloviendo a c&aacute;ntaros\" pueden causar confusi&oacute;n o miedo real.</p>\r\n<h3>C&oacute;mo trabajar las met&aacute;foras:</h3>\r\n<ul>\r\n<li><strong>Explique el significado:</strong> No asuma que lo entiende. Diga: \"Cuando digo que llueven c&aacute;ntaros, quiero decir que llueve muy fuerte, no que caen objetos\".</li>\r\n<li><strong>Use apoyos visuales:</strong> Dibuje la met&aacute;fora vs. la realidad. El humor gr&aacute;fico ayuda mucho a entender estos conceptos abstractos.</li>\r\n</ul>', 'Fonoaudiología', '2025-11-24 23:02:51', 'assets/img/1764027022_Gemini_Generated_Image_hv9aewhv9aewhv9a.png', 5),
(9, 'Estimulación del Lenguaje en casa: Rutinas diarias', '<h3>Aprovechando el ba&ntilde;o y la comida</h3>\r\n<p>No necesitas sentarte en una mesa para hacer terapia. Los mejores momentos son los naturales.</p>\r\n<h4>Estrategias de Estimulaci&oacute;n:</h4>\r\n<ul>\r\n<li><strong>Narraci&oacute;n paralela:</strong> Describe lo que el ni&ntilde;o est&aacute; haciendo mientras lo hace. \"Oh, est&aacute;s agarrando el auto rojo. El auto va r&aacute;pido\". Sin pedirle que repita.</li>\r\n<li><strong>Expansi&oacute;n:</strong> Si el ni&ntilde;o dice \"Agua\", t&uacute; devu&eacute;lvele una frase un poco m&aacute;s larga: \"Si, quieres agua fr&iacute;a. Toma el agua\".</li>\r\n<li><strong>Espera estructurada:</strong> Ofrece algo que le guste pero no se lo des inmediatamente. Espera 5 segundos mir&aacute;ndolo para fomentar una mirada o un sonido de petici&oacute;n.</li>\r\n</ul>', 'Fonoaudiología', '2025-11-24 23:02:51', 'assets/img/1764027516_Gemini_Generated_Image_c27m8ac27m8ac27m.png', 5),
(10, 'Dieta Sensorial: No es sobre comida', '<h3>&iquest;Qu&eacute; es una Dieta Sensorial?</h3>\r\n<p>Es un plan personalizado de actividades f&iacute;sicas y sensoriales dise&ntilde;ado para ayudar a un ni&ntilde;o a regular su nivel de alerta. As&iacute; como comemos para nutrir el cuerpo, necesitamos est&iacute;mulos para \"nutrir\" el sistema nervioso.</p>\r\n<h4>Ejemplos de Actividades \"Nutritivas\":</h4>\r\n<ul>\r\n<li><strong>Para calmar (Ni&ntilde;o muy agitado):</strong> Presi&oacute;n profunda (abrazos de oso), luces tenues, movimientos r&iacute;tmicos y lentos (mecedora), masticar cosas duras.</li>\r\n<li><strong>Para alertar (Ni&ntilde;o muy pasivo):</strong> Saltos en trampol&iacute;n, cosquillas, luces brillantes, m&uacute;sica r&aacute;pida, texturas fr&iacute;as.</li>\r\n</ul>\r\n<p>Consulte con su Terapista Ocupacional para dise&ntilde;ar el men&uacute; adecuado para su hijo.</p>', 'Terapia Ocupacional', '2025-11-24 23:02:51', 'assets/img/1764027920_Gemini_Generated_Image_n7mts5n7mts5n7mt (1).png', 8),
(11, 'El Sistema Vestibular y el equilibrio', '<h3>M&aacute;s all&aacute; de los 5 sentidos</h3>\r\n<p>El sistema vestibular se encuentra en el o&iacute;do interno y nos dice d&oacute;nde est&aacute; nuestro cuerpo en el espacio, si nos movemos, y qu&eacute; tan r&aacute;pido vamos. Muchos ni&ntilde;os con TEA buscan girar, saltar o balancearse porque su sistema vestibular est&aacute; \"hiporreactivo\" (necesita mucha intensidad).</p>\r\n<h3>Actividades para casa:</h3>\r\n<p>El uso de hamacas, pelotas de yoga y columpios es fundamental. Permitir el movimiento no es \"malcriar\", es permitir que su cerebro se organice para luego poder prestar atenci&oacute;n en tareas quietas.</p>', 'Terapia Ocupacional', '2025-11-24 23:02:51', 'assets/img/1764030451_Gemini_Generated_Image_tbu1ndtbu1ndtbu1.png', 8),
(12, 'Selectividad Alimentaria: Texturas y Colores', '<h3>No es capricho, es defensa sensorial</h3>\r\n<p>Comer es una de las actividades sensoriales m&aacute;s complejas: implica olor, vista, tacto (en la boca), gusto y propiocepci&oacute;n (masticar). Si un ni&ntilde;o rechaza alimentos, suele ser por una hipersensibilidad a la textura.</p>\r\n<h4>Estrategias de acercamiento (Food Chaining):</h4>\r\n<p>No obligue a comer. Empiece por tolerar el alimento en el plato. Luego tocarlo con la mano. Luego olerlo. Luego besarlo. Y finalmente, probarlo. Es un proceso de desensibilizaci&oacute;n sistem&aacute;tica que requiere mucha paciencia.</p>', 'Terapia Ocupacional', '2025-11-24 23:02:51', 'assets/img/1764030563_Gemini_Generated_Image_qk539uqk539uqk53 (1).png', 8),
(13, 'Propiocepción: El sentido del cuerpo', '<h3>Buscadores de Choque</h3>\r\n<p>&iquest;Su hijo choca contra las paredes, camina fuerte o rompe cosas al agarrarlas? Puede tener una baja percepci&oacute;n propioceptiva. Necesita sentir sus m&uacute;sculos y articulaciones.</p>\r\n<h3>Actividades de Trabajo Pesado (Heavy Work):</h3>\r\n<p>Estas actividades son calmantes y organizadoras:</p>\r\n<ul>\r\n<li>Llevar la mochila con libros.</li>\r\n<li>Empujar el carrito del supermercado.</li>\r\n<li>Ayudar a mover muebles.</li>\r\n<li>Juegos de tracci&oacute;n (tirar de la cuerda).</li>\r\n</ul>', 'Terapia Ocupacional', '2025-11-24 23:02:51', 'assets/img/1764030741_Gemini_Generated_Image_ubgh3uubgh3uubgh.png', 8),
(14, 'Corte de Pelo y Uñas: Estrategias de supervivencia', '<h3>Hipersensibilidad T&aacute;ctil</h3>\r\n<p>Para un ni&ntilde;o con defensa t&aacute;ctil, un corte de pelo puede sentirse f&iacute;sicamente doloroso. La vibraci&oacute;n de la m&aacute;quina o el contacto de las tijeras dispara una respuesta de lucha o huida.</p>\r\n<h4>Tips para padres:</h4>\r\n<ul>\r\n<li>Use apoyos visuales (historias sociales) d&iacute;as antes.</li>\r\n<li>Haga presi&oacute;n profunda (masajes en los hombros) antes y durante el corte para calmar el sistema nervioso.</li>\r\n<li>Permita el uso de tapones de o&iacute;dos si el ruido molesta.</li>\r\n<li>Corte las u&ntilde;as despu&eacute;s del ba&ntilde;o cuando est&aacute;n m&aacute;s blandas.</li>\r\n</ul>', 'Terapia Ocupacional', '2025-11-24 23:02:51', 'assets/img/1764035565_Gemini_Generated_Image_52jgsc52jgsc52jg.png', 8),
(15, 'Teoría de la Mente: Entender qué piensa el otro', '<h3>La ceguera mental</h3>\r\n<p>La Teor&iacute;a de la Mente es la capacidad de atribuir pensamientos, intenciones y emociones a otras personas. En el autismo, esto suele estar afectado. Les cuesta entender que \"yo s&eacute; algo que t&uacute; no sabes\".</p>\r\n<h3>C&oacute;mo trabajarlo:</h3>\r\n<p>Juegos de enga&ntilde;o simple o esconder objetos ayudan. \"Yo escond&iacute; la pelota aqu&iacute;, pero mam&aacute; no lo vio. &iquest;D&oacute;nde buscar&aacute; mam&aacute;?\". Explicar expl&iacute;citamente las intenciones de los personajes en las pel&iacute;culas tambi&eacute;n es una excelente pr&aacute;ctica.</p>', 'Psicología', '2025-11-24 23:02:51', 'assets/img/1764031122_Gemini_Generated_Image_59pfwx59pfwx59pf.png', 6),
(16, 'Regulación Emocional: El semáforo de la ira', '<h3>Visualizar las emociones</h3>\r\n<p>Los conceptos emocionales son abstractos. El \"Sem&aacute;foro de la Conducta\" o de las emociones ayuda a concretarlos.</p>\r\n<ul>\r\n<li><strong>Verde:</strong> Estoy tranquilo, puedo jugar y aprender.</li>\r\n<li><strong>Amarillo:</strong> Me estoy poniendo nervioso. Empiezo a sentir calor o moverme mucho. Necesito una estrategia (respirar, tomar agua).</li>\r\n<li><strong>Rojo:</strong> Perd&iacute; el control (Crisis). Necesito seguridad y poco lenguaje.</li>\r\n</ul>\r\n<p>Trabajar el reconocimiento de la fase \"Amarilla\" es clave para prevenir las crisis.</p>', 'Psicología', '2025-11-24 23:02:51', 'assets/img/1764031274_Gemini_Generated_Image_sca6ygsca6ygsca6.png', 6),
(17, 'Hermanos de niños con TEA: Apoyo y comprensión', '<h3>El rol de los hermanos</h3>\r\n<p>Los hermanos de ni&ntilde;os con autismo a menudo desarrollan una gran empat&iacute;a, pero tambi&eacute;n pueden sentir celos por la atenci&oacute;n que requiere su hermano o frustraci&oacute;n por no poder jugar de forma convencional.</p>\r\n<h3>Consejos:</h3>\r\n<ul>\r\n<li>Dedique tiempo exclusivo para el hermano neurot&iacute;pico sin hablar de autismo.</li>\r\n<li>Explique el autismo con palabras simples: \"Su cerebro funciona diferente, por eso le molestan los ruidos\".</li>\r\n<li>Busque actividades donde puedan conectar (videojuegos, cosquillas, bloques) sin necesidad de mucha interacci&oacute;n verbal.</li>\r\n</ul>', 'Psicología', '2025-11-24 23:02:51', 'assets/img/1764031329_Gemini_Generated_Image_f3p9n7f3p9n7f3p9.png', 6),
(18, 'Ansiedad y Autismo: Un dúo frecuente', '<h3>&iquest;Por qu&eacute; tanta ansiedad?</h3>\r\n<p>El mundo es un lugar ca&oacute;tico e impredecible. Para un cerebro que busca patrones y predictibilidad, la vida diaria es una fuente constante de estr&eacute;s. La ansiedad en el TEA a menudo se manifiesta como rigidez (\"tengo que hacer esto as&iacute; o pasa algo malo\").</p>\r\n<p>La mejor herramienta contra la ansiedad es la <strong>ANTICIPACI&Oacute;N</strong>. El uso de agendas visuales y rutinas claras baja los niveles de cortisol y permite el aprendizaje.</p>', 'Psicología', '2025-11-24 23:02:51', 'assets/img/1764031407_Gemini_Generated_Image_l7jv84l7jv84l7jv.png', 6),
(19, 'Adaptaciones Curriculares: Acceso al aprendizaje', '<h3>Igualdad de oportunidades</h3>\r\n<p>Un ni&ntilde;o con TEA puede aprender los mismos contenidos que sus compa&ntilde;eros si se adapta el formato. No se trata de bajar el nivel, sino de cambiar la v&iacute;a de entrada.</p>\r\n<h4>Adaptaciones comunes:</h4>\r\n<ul>\r\n<li><strong>Ex&aacute;menes visuales:</strong> Menos texto, m&aacute;s opciones m&uacute;ltiples o unir con flechas.</li>\r\n<li><strong>Tiempo extra:</strong> Para procesar la informaci&oacute;n.</li>\r\n<li><strong>Entorno:</strong> Permitir rendir en un lugar silencioso o usar auriculares.</li>\r\n<li><strong>Segmentaci&oacute;n:</strong> Dividir una tarea larga en 4 pasos peque&ntilde;os y concretos.</li>\r\n</ul>', 'Psicopedagogía', '2025-11-24 23:02:51', 'assets/img/1764031782_Gemini_Generated_Image_2q93tm2q93tm2q93 (1).png', 7),
(20, 'Funciones Ejecutivas: Planificar y Organizar', '<h3>El director de orquesta del cerebro</h3>\r\n<p>Las funciones ejecutivas nos permiten planificar, iniciar una tarea, y monitorear nuestro progreso. En el TEA, esto suele fallar (Disfunci&oacute;n Ejecutiva).</p>\r\n<p>El ni&ntilde;o puede querer hacer la tarea, pero no saber por d&oacute;nde empezar (\"par&aacute;lisis\").</p>\r\n<h3>Apoyos externos:</h3>\r\n<p>Necesitamos ser su l&oacute;bulo frontal externo hasta que ellos desarrollen estrategias. Use listas de chequeo (Checklists) visuales para la rutina de la ma&ntilde;ana: 1. Lavar dientes, 2. Vestirse, 3. Mochila.</p>', 'Psicopedagogía', '2025-11-24 23:02:51', 'assets/img/1764031838_Gemini_Generated_Image_ke2hwzke2hwzke2h.png', 7),
(21, 'Recreos Estructurados: Cuando el tiempo libre es estrés', '<h3>El desaf&iacute;o del recreo</h3>\r\n<p>El recreo escolar es el momento m&aacute;s dif&iacute;cil. No hay reglas claras, hay mucho ruido y alta demanda social. Muchos ni&ntilde;os con TEA deambulan solos o se refugian en la biblioteca.</p>\r\n<h3>Intervenci&oacute;n:</h3>\r\n<p>Los colegios deben ofrecer \"Patios Din&aacute;micos\" o recreos estructurados, donde se organizan juegos con reglas claras y roles definidos, facilitando la inclusi&oacute;n sin la presi&oacute;n de \"socializar espont&aacute;neamente\".</p>', 'Psicopedagogía', '2025-11-24 23:02:51', 'assets/img/1764031891_Gemini_Generated_Image_zg7mvqzg7mvqzg7m.png', 7),
(22, 'Musicoterapia y Autismo: Conexión sin palabras', '<h3>El ritmo como organizador</h3>\r\n<p>La m&uacute;sica procesa en &aacute;reas del cerebro diferentes al lenguaje. Muchos ni&ntilde;os que no hablan pueden cantar. La musicoterapia utiliza esta fortaleza para trabajar objetivos no musicales.</p>\r\n<ul>\r\n<li><strong>Anticipaci&oacute;n:</strong> Canciones de \"Hola\" y \"Chau\" marcan claramente el inicio y fin de actividades.</li>\r\n<li><strong>Regulaci&oacute;n:</strong> El ritmo constante (como el latido del coraz&oacute;n) ayuda a calmar un sistema nervioso desregulado.</li>\r\n<li><strong>Toma de turnos:</strong> Tocar un tambor y pasar el turno al terapeuta es un di&aacute;logo pre-verbal b&aacute;sico.</li>\r\n</ul>', 'Musicoterapia', '2025-11-24 23:02:51', 'assets/img/1764035533_Gemini_Generated_Image_tb5ecatb5ecatb5e.png', 9),
(23, 'Canciones para Rutinas: Facilitando transiciones', '<h3>\"A guardar, a guardar...\"</h3>\r\n<p>Las transiciones (cambiar de una actividad a otra) son momentos de crisis frecuentes. Usar una \"Canci&oacute;n de Transici&oacute;n\" siempre la misma, avisa al cerebro de forma amable que algo va a cambiar.</p>\r\n<p>No use canciones complejas. Invente melod&iacute;as simples para \"Hora de comer\", \"Hora de ba&ntilde;o\" o \"Ir al auto\". La melod&iacute;a es m&aacute;s f&aacute;cil de procesar que la orden verbal seca.</p>', 'Musicoterapia', '2025-11-24 23:02:51', 'assets/img/1764035467_Gemini_Generated_Image_cbvjzecbvjzecbvj.png', 9),
(24, 'Equinoterapia: Beneficios Físicos y Emocionales', '<h3>El paso del caballo</h3>\r\n<p>El movimiento tridimensional del caballo al caminar es casi id&eacute;ntico al movimiento de la marcha humana. Para ni&ntilde;os con hipoton&iacute;a (tono muscular bajo) o problemas de equilibrio, montar a caballo env&iacute;a est&iacute;mulos constantes al cerebro para ajustar la postura.</p>\r\n<h3>Beneficios Emocionales:</h3>\r\n<p>El caballo es un ser no juzgador. No exige contacto visual ni palabras. El v&iacute;nculo que se crea con el animal y el cuidado (cepillado, alimentaci&oacute;n) fomenta la empat&iacute;a y la responsabilidad de una manera no amenazante.</p>', 'Equinoterapia', '2025-11-24 23:02:51', 'assets/img/1764034557_Gemini_Generated_Image_h8zmqyh8zmqyh8zm.png', 10),
(25, 'Hipoterapia vs. Equitación Adaptada', '<h3>Diferencias Clave</h3>\r\n<p>Es importante distinguir:</p>\r\n<ul>\r\n<li><strong>Hipoterapia:</strong> Es un tratamiento m&eacute;dico/kin&eacute;sico. El ni&ntilde;o no \"aprende a montar\", sino que el movimiento del caballo se usa como herramienta de rehabilitaci&oacute;n f&iacute;sica y sensorial. Lo dirige un kinesi&oacute;logo o T.O.</li>\r\n<li><strong>Equitaci&oacute;n Adaptada:</strong> Es un deporte. El objetivo es aprender a montar a caballo, con las adaptaciones necesarias seg&uacute;n el perfil del ni&ntilde;o. Fomenta la autoestima y el ocio.</li>\r\n</ul>', 'Equinoterapia', '2025-11-24 23:02:51', 'assets/img/1764035368_Gemini_Generated_Image_lpp3oslpp3oslpp3.png', 10),
(26, 'El Juego Simbólico: Más allá de alinear autos', '<h3>Desarrollando la imaginaci&oacute;n</h3>\r\n<p>Los ni&ntilde;os con TEA suelen tener un juego repetitivo o de alineaci&oacute;n. El juego simb&oacute;lico (hacer como si la banana fuera un tel&eacute;fono) es un hito clave del desarrollo cognitivo.</p>\r\n<h3>C&oacute;mo fomentarlo:</h3>\r\n<p>Empiece imitando lo que el ni&ntilde;o hace, y agregue UN paso peque&ntilde;o. Si alinea autos, usted alinee tambi&eacute;n, pero haga que su auto \"choque\" suavemente o vaya a cargar gasolina. Modele acciones simples de la vida diaria con mu&ntilde;ecos (comer, dormir, ba&ntilde;arse).</p>', 'Psicología', '2025-11-24 23:02:51', 'assets/img/1764031459_Gemini_Generated_Image_8seluf8seluf8sel.png', 3),
(27, 'Integración Auditiva: Hipersensibilidad', '<h3>Cuando el mundo suena demasiado fuerte</h3>\r\n<p>La hiperacusia es com&uacute;n en el autismo. Sonidos que nosotros ignoramos (el zumbido de la heladera, luces fluorescentes) pueden ser dolorosos para ellos.</p>\r\n<h4>Estrategias:</h4>\r\n<ul>\r\n<li>Anticipar ruidos fuertes (licuadora, aspiradora).</li>\r\n<li>Crear \"zonas libres de ruido\" en casa.</li>\r\n<li>Uso de auriculares de cancelaci&oacute;n de ruido en ambientes p&uacute;blicos (centros comerciales, cumplea&ntilde;os).</li>\r\n</ul>', 'Fonoaudiología', '2025-11-24 23:02:51', 'assets/img/1764035251_Gemini_Generated_Image_faryppfaryppfary.png', 5),
(28, 'Entrenamiento de esfínteres en TEA', '<h3>Un desaf&iacute;o sensorial y comunicativo</h3>\r\n<p>Dejar el pa&ntilde;al es complejo porque requiere: interocepci&oacute;n (sentir ganas), comunicaci&oacute;n (pedir ir) y planificaci&oacute;n (ir al ba&ntilde;o, bajarse la ropa).</p>\r\n<h4>Consejos:</h4>\r\n<ul>\r\n<li>No se gu&iacute;e por la edad cronol&oacute;gica, sino por las se&ntilde;ales de preparaci&oacute;n.</li>\r\n<li>Use apoyos visuales en el ba&ntilde;o (secuencia de lavado de manos, uso del inodoro).</li>\r\n<li>Aseg&uacute;rese de que el ni&ntilde;o se sienta f&iacute;sicamente seguro en el inodoro (pies apoyados, reductor si es necesario). El miedo a caerse bloquea la relajaci&oacute;n necesaria.</li>\r\n</ul>', 'Terapia Ocupacional', '2025-11-24 23:02:51', 'assets/img/1764035196_Gemini_Generated_Image_p7ay9lp7ay9lp7ay.png', 8),
(29, 'El uso de la tecnología: ¿Aliado o enemigo?', '<h3>Encontrar el equilibrio</h3>\r\n<p>Los ni&ntilde;os con TEA tienen una afinidad natural por la tecnolog&iacute;a. Es predecible, visual y responde inmediatamente. Las tablets pueden ser excelentes herramientas de aprendizaje y comunicaci&oacute;n.</p>\r\n<p><strong>El riesgo:</strong> El hiperfoco y el aislamiento. Use la tecnolog&iacute;a como herramienta compartida (\"mira lo que hago\", turnarse) y no solo como \"chupete electr&oacute;nico\". Establezca l&iacute;mites claros de tiempo usando temporizadores visuales.</p>', 'Psicopedagogía', '2025-11-24 23:02:51', 'assets/img/1764035141_Gemini_Generated_Image_beodytbeodytbeod.png', 7),
(30, 'Adolescencia y Autismo: Cambios y desafíos', '<h3>Pubertad y comprensi&oacute;n social</h3>\r\n<p>La adolescencia trae cambios hormonales y una mayor demanda social. La brecha con los pares neurot&iacute;picos puede hacerse m&aacute;s evidente.</p>\r\n<h3>Temas a abordar:</h3>\r\n<ul>\r\n<li><strong>Higiene personal:</strong> Crear nuevas rutinas visuales para desodorante, ducha diaria, afeitado/depilaci&oacute;n.</li>\r\n<li><strong>Educaci&oacute;n sexual:</strong> Explicar los cambios del cuerpo de forma expl&iacute;cita, cient&iacute;fica y visual. Conceptos de p&uacute;blico vs. privado son fundamentales.</li>\r\n</ul>', 'Psicología', '2025-11-24 23:02:51', 'assets/img/1764035049_Gemini_Generated_Image_a029n2a029n2a029.png', 6),
(31, 'Vestirse Solo: Análisis de Tarea', '<h3>👕 Desglosar para Avanzar: El Secreto para que tu Hijo se Vista Solo</h3>\r\n<p>Vestirse no es solo \"ponerse ropa\". &iexcl;Es una <strong>ha...za...&ntilde;a</strong> de la ingenier&iacute;a cerebral y motriz! 🧠💪</p>\r\n<p>Para nuestros ni&ntilde;os con autismo, esta tarea es particularmente exigente, ya que requiere: <strong>Coordinaci&oacute;n, planificaci&oacute;n de secuencias y uso corporal preciso</strong>. Si tu hijo se frustra o t&uacute; terminas haci&eacute;ndolo todo, &iexcl;es completamente normal!</p>\r\n<p>Tenemos una t&eacute;cnica probada que convierte este desaf&iacute;o en un juego de peque&ntilde;os logros: el <strong>Encadenamiento hacia Atr&aacute;s.</strong> &iexcl;Vamos a desglosarlo con lupa!</p>\r\n<h2>🧩 <span style=\"text-decoration: underline;\"><strong>La Estrategia Definitiva: Encadenamiento hacia Atr&aacute;s Meticulosamente Desglosada</strong></span></h2>\r\n<p>El Encadenamiento hacia Atr&aacute;s (Backward Chaining) invierte el orden de ense&ntilde;anza. En lugar de empezar por el paso 1 (el m&aacute;s dif&iacute;cil), empezamos por el &uacute;ltimo paso (el m&aacute;s f&aacute;cil y gratificante).</p>\r\n<p>➡️ <strong>Paso Cero: La Preparaci&oacute;n y el Desglose (La Base de todo)</strong></p>\r\n<p>Antes de mover un solo calcet&iacute;n, necesitamos un plan escrito.</p>\r\n<h4><strong>1. An&aacute;lisis de la Tarea </strong>(Task Analysis):</h4>\r\n<p><strong>Definici&oacute;n</strong>: Dividir la habilidad (Ej. Ponerse un pantal&oacute;n) en la lista m&aacute;s m&iacute;nima y secuencial de pasos. Ning&uacute;n paso es demasiado obvio.</p>\r\n<p><strong>Ejemplo Detallado (Ponerse un Pantal&oacute;n):</strong></p>\r\n<ul>\r\n<li>Paso 1: Recoger el pantal&oacute;n de la cama.</li>\r\n<li>Paso 2: Agarrar el pantal&oacute;n por la cintura.</li>\r\n<li>Paso 3: Introducir el pie derecho en la abertura.</li>\r\n<li>Paso 4: Introducir el pie izquierdo en la otra abertura.</li>\r\n<li>Paso 5: Subir el pantal&oacute;n hasta las rodillas.</li>\r\n<li>Paso 6 (El &Uacute;LTIMO PASO CLAVE): Subir el pantal&oacute;n desde las rodillas hasta la cintura.</li>\r\n</ul>\r\n<h3>🥇 Paso 1: El Adulto Modela (T&uacute; Haces Casi Todo)</h3>\r\n<ul>\r\n<li>Acci&oacute;n: Como padre/madre, t&uacute; realizas todos los pasos de la tarea, desde el Paso 1 hasta el <strong>pen&uacute;ltimo</strong> (Paso 5). T&uacute; haces el 99% del trabajo dif&iacute;cil.</li>\r\n<li>Prop&oacute;sito: Le muestras al ni&ntilde;o el proceso completo sin generar frustraci&oacute;n. El ni&ntilde;o sabe que la meta est&aacute; a un solo paso de distancia.</li>\r\n<li>En la Pr&aacute;ctica: Para el pantal&oacute;n, lo pones, le ayudas con los pies, y lo dejas subido hasta las rodillas. La tarea est&aacute; \"pre-cargada\" para el &eacute;xito.</li>\r\n</ul>\r\n<h3>🎯 Paso 2: La Oportunidad de &Eacute;xito (&iexcl;El Ni&ntilde;o Termina!)</h3>\r\n<ul>\r\n<li>Acci&oacute;n: Dejas que tu hijo realice &uacute;nicamente el &uacute;ltimo paso de la cadena (el Paso 6: subir de las rodillas a la cintura).</li>\r\n<li>Motivo de la Selecci&oacute;n: Es el paso m&aacute;s cercano a la finalizaci&oacute;n y, por lo general, el m&aacute;s sencillo a nivel motriz. El cerebro asocia: \"Mi acci&oacute;n = Tarea terminada\".</li>\r\n<li>Tu Rol: Ofrece una instrucci&oacute;n simple (\"&iexcl;Sube el pantal&oacute;n!\") y ofrece la m&iacute;nima ayuda necesaria (un toque suave, una gu&iacute;a) para asegurarte de que lo logre. &Eacute;l debe terminar el movimiento.</li>\r\n</ul>\r\n<h3>🎉 Paso 3: El Refuerzo Inmediato (&iexcl;La Celebraci&oacute;n!)</h3>\r\n<ul>\r\n<li>Acci&oacute;n: En cuanto el ni&ntilde;o completa el paso, debe recibir una recompensa inmediata y potente.</li>\r\n<li>Importancia: La terminaci&oacute;n de la tarea (el pantal&oacute;n est&aacute; puesto) es la recompensa natural, y t&uacute; la magnificas. Esto es crucial para anclar la motivaci&oacute;n.</li>\r\n<li>Ejemplo: Un abrazo, un gran \"&iexcl;Lo lograste! &iexcl;Qu&eacute; campe&oacute;n!\", un choca esos cinco, o un punto en su tablero de recompensas. La clave es que el &eacute;xito y la alegr&iacute;a se asocien al final de la secuencia.</li>\r\n</ul>\r\n<h3>🔄 Paso 4: La Expansi&oacute;n Constante (Sumando Pasos)</h3>\r\n<p>Una vez que el &uacute;ltimo paso est&aacute; dominado por completo:</p>\r\n<ul>\r\n<li>Acci&oacute;n: Cedes el pen&uacute;ltimo paso al ni&ntilde;o, adem&aacute;s del &uacute;ltimo.</li>\r\n<li>La Nueva Cadena: Ahora el ni&ntilde;o debe completar los Pasos 5 y 6 (subir hasta las rodillas, y luego subir hasta la cintura). T&uacute; realizas todos los anteriores.</li>\r\n<li>Progresi&oacute;n: Contin&uacute;as \"subiendo\" un paso en la cadena (cedes el antepen&uacute;ltimo, luego el anterior, etc.) hasta que el ni&ntilde;o pueda iniciar la tarea (Paso 1) y completarla por s&iacute; mismo.</li>\r\n</ul>\r\n<p>💡 Lo obvio, explicado: Ense&ntilde;amos el final primero porque es el m&aacute;s gratificante. El ni&ntilde;o siempre termina sintiendo: \"&iexcl;Yo lo hice!\", lo cual construye confianza, autonom&iacute;a y memoria muscular para toda la habilidad.</p>\r\n<p>🎨 Apoyos Visuales: La Receta del Vestir Perfecto</p>\r\n<p>Los ni&ntilde;os con autismo son pensadores visuales 🖼️. Vestirse debe ser una secuencia de im&aacute;genes, no una lista de palabras confusas.</p>\r\n<p>👉 C&oacute;mo Usar Apoyos Visuales Basados en Secuencias:</p>\r\n<p>Elabora un Mapa Visual: Crea una lista vertical con fotos o pictogramas de las prendas en el orden exacto para vestirse.</p>\r\n<p>🩲 Ropa Interior</p>\r\n<p>👚 Remera/Camisa</p>\r\n<p>👖 Pantal&oacute;n/Jumper</p>\r\n<p>🧦 Calcetines</p>\r\n<p>👟 Zapatos</p>\r\n<p>Planificaci&oacute;n Motora en Acci&oacute;n: P&iacute;dele a tu hijo que coloque f&iacute;sicamente la ropa sobre la cama o el suelo siguiendo el orden del mapa visual.</p>\r\n<p>✅ Anticipaci&oacute;n: Sabe qu&eacute; viene.</p>\r\n<p>✅ Orden Ejecutivo: Practica ordenar y planificar antes de mover el cuerpo.</p>\r\n<p>Sistema de \"Hecho\": Si usas tarjetas laminadas, coloca velcro en el reverso. A medida que se pone la prenda, la quita de la pared y la pone en una caja de \"&iexcl;Logrado! ✅\". &iexcl;Esto da un refuerzo t&aacute;ctil y visual de que el paso est&aacute; completado!</p>\r\n<p>❤️ Mensaje de &Aacute;nimo para los Padres</p>\r\n<p><strong>Recuerda</strong>: esta es una marat&oacute;n, no una carrera r&aacute;pida. Habr&aacute; d&iacute;as de avances y d&iacute;as de retrocesos. &iexcl;Es normal!</p>\r\n<p>S&eacute; paciente y constante: Usa la misma t&eacute;cnica y los mismos apoyos visuales siempre. La predictibilidad es tu mejor amiga.</p>\r\n<p>Celebra los esfuerzos: Si solo logra ponerse la prenda hasta el tobillo, &iexcl;es un gran avance! Celebra los esfuerzos (lo bien que lo intent&oacute;), no solo el resultado final.</p>\r\n<p>No te rindas&nbsp;en el &uacute;ltimo paso: Ese peque&ntilde;o movimiento de subir el pantal&oacute;n es la llave que abre la puerta a la independencia.</p>\r\n<p>&iexcl;Tienes en tus manos la herramienta para construir una habilidad fundamental para toda la vida de tu hijo! &iexcl;Adelante! 🚀</p>', 'Terapia Ocupacional', '2025-11-24 23:05:13', 'assets/img/1764032615_Gemini_Generated_Image_6tkffb6tkffb6tkf.png', 8),
(32, 'Higiene Personal: La secuencia del lavado de manos', '<h3>Estructura Visual en el Ba&ntilde;o</h3>\r\n<p>El ba&ntilde;o es un lugar lleno de est&iacute;mulos sensoriales (agua, olores, eco). Para fomentar la independencia, pegamos la secuencia visual en el espejo:</p>\r\n<ol>\r\n<li>Abrir grifo.</li>\r\n<li>Mojar manos.</li>\r\n<li>Poner jab&oacute;n.</li>\r\n<li>Frotar (contar hasta 10).</li>\r\n<li>Enjuagar.</li>\r\n<li>Secar.</li>\r\n</ol>\r\n<p>Esta estructura reduce la ansiedad y evita que el ni&ntilde;o se quede jugando con el agua o se olvide del jab&oacute;n.</p>', 'Terapia Ocupacional', '2025-11-24 23:05:13', 'assets/img/1764032476_Gemini_Generated_Image_5dop8q5dop8q5dop.png', 8),
(33, 'Control de Esfínteres: Señales y Anticipación', '<h3>M&aacute;s all&aacute; del pa&ntilde;al</h3>\r\n<p>Dejar el pa&ntilde;al requiere madurez fisiol&oacute;gica y comunicativa. Muchos ni&ntilde;os no avisan porque no \"sienten\" las ganas hasta que es tarde (interocepci&oacute;n).</p>\r\n<h4>Estrategias:</h4>\r\n<ul>\r\n<li><strong>Agenda de Ba&ntilde;o:</strong> Llevar al ni&ntilde;o al ba&ntilde;o cada 90 minutos sin preguntar si tiene ganas.</li>\r\n<li><strong>Apoyo Visual:</strong> Usar la tarjeta de \"Ba&ntilde;o\" del llavero de comunicaci&oacute;n [cite: 3221] para que pueda pedirlo sin hablar.</li>\r\n<li><strong>Ropa C&oacute;moda:</strong> Pantalones con el&aacute;stico, sin botones ni cierres, para evitar accidentes por motricidad fina.</li>\r\n</ul>', 'Terapia Ocupacional', '2025-11-24 23:05:13', 'assets/img/1764030994_Gemini_Generated_Image_9kocf9kocf9kocf9.png', 8),
(34, 'Juego Funcional vs. Juego Repetitivo', '<h3>Ampliar intereses</h3>\r\n<p>Si su ni&ntilde;o alinea autos o gira las ruedas, est&aacute; explorando sensorialmente, pero no funcionalmente. Nuestro objetivo es expandir ese juego sin prohibirlo.</p>\r\n<h3>T&eacute;cnica de la Imitaci&oacute;n y Expansi&oacute;n:</h3>\r\n<p>1. &Uacute;nase al juego del ni&ntilde;o (alinee autos con &eacute;l).<br>2. Introduzca una variaci&oacute;n peque&ntilde;a: \"&iexcl;Oh! El auto choc&oacute;\" o \"El auto va a cargar gasolina\".<br>3. Si el ni&ntilde;o acepta la variaci&oacute;n, hemos transformado una estereotipia en un juego simb&oacute;lico incipiente.</p>', 'Psicología', '2025-11-24 23:05:13', 'assets/img/1764032352_Gemini_Generated_Image_etumvletumvletum.png', 6),
(35, 'Turnos y Espera: \"A ti te toca, a mí me toca\"', '<h3>La base de la interacci&oacute;n social</h3>\r\n<p>Aprender a esperar es dif&iacute;cil. Usamos juegos de mesa simples o pelotas para practicar el \"Turno\".</p>\r\n<h4>Apoyo Visual de Turno:</h4>\r\n<p>Utilice un objeto f&iacute;sico (como un micr&oacute;fono o una ficha) que tenga quien est&aacute; hablando o jugando. Solo quien tiene el objeto puede actuar. Esto hace concreto un concepto social abstracto.</p>\r\n<p>En nuestras historias como \"El Parque\"[cite: 580], vemos c&oacute;mo los amigos comparten actividades. Usar estos cuentos como ejemplo ayuda a modelar.</p>', 'Psicopedagogía', '2025-11-24 23:05:13', 'assets/img/1764032667_Gemini_Generated_Image_jlkokujlkokujlko.png', 7),
(36, 'Comprendiendo las Emociones Ajenas', '<h3>Teor&iacute;a de la Mente</h3>\r\n<p>Identificar por qu&eacute; otro ni&ntilde;o llora o se r&iacute;e es un desaf&iacute;o. Usamos tarjetas de emociones (Feliz, Triste, Enojado, Asustado) para ense&ntilde;ar a leer rostros.</p>\r\n<p><strong>Actividad con Espejo:</strong> \"Vamos a poner cara de enojados\". Imitar gestos ayuda a sentir la emoci&oacute;n en el propio cuerpo y reconocerla luego en otros.</p>\r\n<p>En el cuento de \"Mildred Vuela\"[cite: 632], analizamos c&oacute;mo se sent&iacute;a Mildred (miedo) y c&oacute;mo se sinti&oacute; despu&eacute;s (orgullosa). Preguntar sobre los sentimientos de los personajes es un gran ejercicio.</p>', 'Psicología', '2025-11-24 23:05:13', 'assets/img/1764032723_Gemini_Generated_Image_28vypx28vypx28vy.png', 6),
(37, 'Geometría Vivencial: Formas en el entorno', '<p>&iexcl;Hola a todos! Hoy vamos a jugar a ser detectives de formas. &iquest;Sab&iacute;as que las formas geom&eacute;tricas no solo est&aacute;n en los libros o en la computadora? &iexcl;Est&aacute;n en todas partes a nuestro alrededor! La \"Geometr&iacute;a Vivencial\" significa aprender sobre las formas toc&aacute;ndolas, movi&eacute;ndolas y vi&eacute;ndolas en el mundo real. Esto es especialmente &uacute;til para nuestros ni&ntilde;os, porque a veces les cuesta un poco entender las cosas que solo ven en dibujos. &iexcl;Vamos a hacer que la geometr&iacute;a sea divertida y tangible!</p>\r\n<p><strong><span style=\"text-decoration: underline;\">&iquest;Por qu&eacute; la Geometr&iacute;a Vivencial es Genial para Ni&ntilde;os con Autismo?</span></strong>**</p>\r\n<p>&nbsp;</p>\r\n<p>Conexi&oacute;n Concreta:** A muchos ni&ntilde;os con autismo les va mejor cuando las ideas son muy concretas y reales. Tocar un c&iacute;rculo, sentirlo en la mano, es mucho m&aacute;s f&aacute;cil de entender que solo ver un c&iacute;rculo dibujado.</p>\r\n<p>Estimulaci&oacute;n Sensorial:** Explorar las formas con las manos (tocar, apilar, rodar) es una excelente manera de estimular los sentidos. &iexcl;A muchos ni&ntilde;os les encanta la exploraci&oacute;n sensorial!</p>\r\n<p>Reducci&oacute;n de la Abstracci&oacute;n:** A veces, los dibujos y las pantallas pueden ser confusos. La Geometr&iacute;a Vivencial reduce la abstracci&oacute;n, haciendo que el aprendizaje sea m&aacute;s claro y directo.</p>\r\n<p>Promueve la Atenci&oacute;n y el Enfoque:** Manipular objetos concretos puede ayudar a los ni&ntilde;os a enfocarse y mantener la atenci&oacute;n por m&aacute;s tiempo.</p>\r\n<p>Aprendizaje Divertido:** &iexcl;A qui&eacute;n no le gusta jugar! Aprender a trav&eacute;s del juego es mucho m&aacute;s motivador y divertido.</p>\r\n<p>&nbsp;</p>\r\n<p>**&iexcl;Descubramos las Formas \"Con Manzanitas\"!**</p>\r\n<p>&nbsp;</p>\r\n<p>**1\\. El C&iacute;rculo: &iexcl;Redondo y Rodante!**</p>\r\n<p>&nbsp;</p>\r\n<p>* **Ejemplos:**</p>\r\n<p>&nbsp; &nbsp; * **Platos:** Busca platos redondos en la cocina. &iexcl;D&eacute;jalos tocar!</p>\r\n<p>&nbsp; &nbsp; * **Ruedas:** Mira las ruedas de un coche de juguete o de una bicicleta.</p>\r\n<p>&nbsp; &nbsp; * **Tapas:** Las tapas de los frascos son circulares.</p>\r\n<p>&nbsp; &nbsp; * **Pelotas:** Una pelota es casi una esfera, pero puedes rodarla en el suelo como un c&iacute;rculo.</p>\r\n<p>* **Actividades:**</p>\r\n<p>&nbsp; &nbsp; * **Rodar Objetos:** Rodar una pelota, una lata o una tapa en el suelo. Observar c&oacute;mo se mueve.</p>\r\n<p>&nbsp; &nbsp; * **Dibujar C&iacute;rculos en el Aire:** Usar el dedo para dibujar c&iacute;rculos grandes y peque&ntilde;os en el aire.</p>\r\n<p>&nbsp; &nbsp; * **Hacer un Collage de C&iacute;rculos:** Recortar c&iacute;rculos de diferentes tama&ntilde;os y colores de revistas y pegarlos en una hoja de papel.</p>\r\n<p>* **Tips Adicionales:**</p>\r\n<p>&nbsp; &nbsp; * **Usar Palabras Clave:** \"Redondo\", \"rueda\", \"rodar\".</p>\r\n<p>&nbsp; &nbsp; * **Repetir:** Repetir las actividades varias veces para reforzar el aprendizaje.</p>\r\n<p>&nbsp; &nbsp; * **Adaptar:** Adaptar las actividades a los intereses del ni&ntilde;o. Si le gustan los coches, usar ruedas de coches de juguete.</p>\r\n<p>&nbsp;</p>\r\n<p>**2\\. El Cuadrado: &iexcl;Con Esquinas y Lados Iguales!**</p>\r\n<p>&nbsp;</p>\r\n<p>* **Ejemplos:**</p>\r\n<p>&nbsp; &nbsp; * **Cajas:** Busca cajas de cart&oacute;n cuadradas. &iexcl;D&eacute;jalas tocar y explorar!</p>\r\n<p>&nbsp; &nbsp; * **Mesas:** Algunas mesas tienen forma cuadrada.</p>\r\n<p>&nbsp; &nbsp; * **Baldosas:** Las baldosas del suelo a menudo son cuadradas.</p>\r\n<p>&nbsp; &nbsp; * **Libros:** Algunos libros tienen forma cuadrada.</p>\r\n<p>* **Actividades:**</p>\r\n<p>&nbsp; &nbsp; * **Apilar Cajas:** Apilar cajas cuadradas para construir una torre.</p>\r\n<p>&nbsp; &nbsp; * **Contar los Lados:** Contar los lados de un cuadrado y mostrar que todos son iguales.</p>\r\n<p>&nbsp; &nbsp; * **Crear un Cuadrado con Palitos:** Usar palitos de helado o pajitas para construir un cuadrado.</p>\r\n<p>* **Tips Adicionales:**</p>\r\n<p>&nbsp; &nbsp; * **Usar Palabras Clave:** \"Cuadrado\", \"esquina\", \"lado\".</p>\r\n<p>&nbsp; &nbsp; * **Resaltar las Esquinas:** Se&ntilde;alar las esquinas de los cuadrados.</p>\r\n<p>&nbsp; &nbsp; * **Ofrecer Apoyo Visual:** Mostrar im&aacute;genes de cuadrados en la vida real (ventanas, cuadros, etc.).</p>\r\n<p>&nbsp;</p>\r\n<p>**3\\. Otros Pol&iacute;gonos: Explorando M&aacute;s All&aacute;**</p>\r\n<p>&nbsp;</p>\r\n<p>* **Tri&aacute;ngulo:** Un trozo de pizza, se&ntilde;ales de tr&aacute;fico.</p>\r\n<p>&nbsp; &nbsp; * Actividad: Reconocerlos en fotos, armarlos con ramas.</p>\r\n<p>* **Rect&aacute;ngulo:** Puertas, ventanas, libros.</p>\r\n<p>&nbsp; &nbsp; * Actividad: Identificarlos en casa, dibujar rect&aacute;ngulos grandes y peque&ntilde;os.</p>\r\n<p>&nbsp;</p>\r\n<p>**Del Papel a la Realidad (Paso a Paso):**</p>\r\n<p>&nbsp;</p>\r\n<p>1. **Primero, la Experiencia Real:** &iexcl;Siempre empezar con los objetos reales! Tocar, manipular, explorar.</p>\r\n<p>2. **Despu&eacute;s, las Im&aacute;genes:** Una vez que el ni&ntilde;o ha experimentado la forma, mostrarle im&aacute;genes de esa forma en diferentes contextos.</p>\r\n<p>3. **Finalmente, el Papel o la Pantalla:** Solo cuando el ni&ntilde;o comprenda la forma en el mundo real y en las im&aacute;genes, pasar a las fichas, dibujos o actividades en la pantalla.</p>\r\n<p>&nbsp;</p>\r\n<p>**Conclusi&oacute;n:**</p>\r\n<p>&nbsp;</p>\r\n<p>La Geometr&iacute;a Vivencial es una forma fant&aacute;stica de ayudar a los ni&ntilde;os con autismo a comprender las formas geom&eacute;tricas de una manera concreta, sensorial y divertida. &iexcl;An&iacute;mate a probar estas actividades y a explorar el mundo de las formas junto a tu hijo! Recuerda ser paciente, adaptable y celebrar cada peque&ntilde;o logro. &iexcl;El aprendizaje puede ser una aventura emocionante!</p>\r\n<p>&nbsp;</p>\r\n<p>**Recursos Adicionales:**</p>\r\n<p>&nbsp;</p>\r\n<p>* **Libros de Texturas:** Libros que contienen diferentes texturas que representan las formas geom&eacute;tricas.</p>\r\n<p>* **Juegos de Construcci&oacute;n:** Juegos de construcci&oacute;n con bloques de diferentes formas y tama&ntilde;os.</p>\r\n<p>* **Aplicaciones Interactivas:** Aplicaciones para tablets o smartphones que ense&ntilde;an geometr&iacute;a de forma visual y auditiva.</p>\r\n<p>&nbsp;</p>\r\n<p>**Consideraciones Finales:**</p>\r\n<p>&nbsp;</p>\r\n<p>* **Ritmo Individual:** Cada ni&ntilde;o aprende a su propio ritmo. No te preocupes si tu hijo necesita m&aacute;s tiempo para comprender una forma.</p>\r\n<p>* **Refuerzo Positivo:** &iexcl;Celebrar cada logro, por peque&ntilde;o que sea!</p>\r\n<p>* **Consultar con Profesionales:** Si tienes dudas o necesitas apoyo, consulta con un terapeuta ocupacional o un educador especializado.</p>', 'Matemáticas', '2025-11-24 23:05:13', 'assets/img/1764033073_Gemini_Generated_Image_564slt564slt564s.png', 2),
(38, 'Resolución de Problemas: Más allá del cálculo', '<h3>Matem&aacute;tica en la vida real</h3>\r\n<p>Usamos situaciones cotidianas como problemas matem&aacute;ticos, similar a los cuentos de \"Nayan sale de compras\"[cite: 520].</p>\r\n<p><em>\"Si tenemos que comprar 3 helados y somos 4 personas, &iquest;cu&aacute;ntos faltan?\"</em></p>\r\n<p>Esto da sentido a la operaci&oacute;n de resta, sac&aacute;ndola de la hoja de papel y llev&aacute;ndola a una necesidad real del ni&ntilde;o.</p>', 'Matemáticas', '2025-11-24 23:05:13', 'assets/img/1764033349_Gemini_Generated_Image_9ol8fc9ol8fc9ol8.png', 2),
(39, 'Series y Patrones: El inicio de la lógica', '<h3>Pensamiento predictivo</h3>\r\n<p>Completar series (Rojo - Azul - Rojo - ...?) ayuda al cerebro a predecir qu&eacute; viene despu&eacute;s. Esta habilidad es la base de la l&oacute;gica matem&aacute;tica y tambi&eacute;n de la seguridad emocional (rutinas).</p>\r\n<p>Podemos practicar con bloques de colores Montessori o con objetos de la cocina (Tenedor - Cuchara - Tenedor...).</p>', 'Matemáticas', '2025-11-24 23:05:13', 'assets/img/1764033409_Gemini_Generated_Image_dt1xsrdt1xsrdt1x.png', 2),
(40, 'El concepto del Tiempo: Relojes visuales', '<h3>&iquest;Cu&aacute;nto falta?</h3>\r\n<p>El tiempo es abstracto. \"5 minutos\" no significa nada para un ni&ntilde;o. Usamos:</p>\r\n<ul>\r\n<li><strong>Time Timer:</strong> Un reloj que muestra visualmente (en rojo) cu&aacute;nto tiempo queda y c&oacute;mo desaparece.</li>\r\n<li><strong>Reloj de Arena:</strong> Para turnos cortos.</li>\r\n<li><strong>Canciones:</strong> Duran un tiempo exacto y predecible.</li>\r\n</ul>', 'Terapia', '2025-11-24 23:05:13', 'assets/img/1764033585_Gemini_Generated_Image_gt7qb7gt7qb7gt7q.png', 4),
(41, 'Conciencia Fonológica: Jugando con sonidos', '<h3>Antes de leer, hay que escuchar</h3>\r\n<p>La conciencia fonol&oacute;gica es la capacidad de reconocer que las palabras est&aacute;n formadas por sonidos. Ejercicios:</p>\r\n<ul>\r\n<li><strong>Rimas:</strong> \"Gato, Pato, Zapato\". &iquest;Cu&aacute;l suena igual?</li>\r\n<li><strong>Veo Veo:</strong> \"Veo algo que empieza con A...\".</li>\r\n<li><strong>Palmadas:</strong> Separar s&iacute;labas aplaudiendo. \"CA-BA-LLO\" (3 aplausos).</li>\r\n</ul>\r\n<p>Estas actividades previas son fundamentales antes de exigir la lectura de letras.</p>', 'Fonoaudiología', '2025-11-24 23:05:13', 'assets/img/1764027815_Gemini_Generated_Image_ladql1ladql1ladq.png', 5),
(42, 'Comprensión Lectora: Las 3 preguntas clave', '<h3>Estrategia de \"Mis Lecturitas\"</h3>\r\n<p>Como vemos en las fichas de trabajo, para asegurar que el ni&ntilde;o no solo \"decodifica\" sino que \"entiende\", siempre hacemos tres preguntas al final:</p>\r\n<ol>\r\n<li><strong>Literal:</strong> &iquest;De qu&eacute; color era la mochila? (Est&aacute; en el texto).</li>\r\n<li><strong>Inferencial:</strong> &iquest;Por qu&eacute; estaba feliz? (Hay que deducirlo).</li>\r\n<li><strong>Personal:</strong> &iquest;A ti te gusta esa mochila? (Conexi&oacute;n con la vida propia).</li>\r\n</ol>', 'Psicopedagogía', '2025-11-24 23:05:13', 'assets/img/1764033750_Gemini_Generated_Image_7ro397ro397ro397.png', 7);
INSERT INTO `articulos` (`id`, `titulo`, `contenido`, `autor`, `fecha_publicacion`, `imagen_destacada`, `id_categoria`) VALUES
(43, 'Vocabulario: Categorización Semántica', '<h3>Ordenando el mundo</h3>\r\n<p>El cerebro guarda las palabras en \"cajones\" (categor&iacute;as). Ayudamos al ni&ntilde;o a organizar su mente clasificando:</p>\r\n<ul>\r\n<li><strong>Animales:</strong> Granja vs. Selva.</li>\r\n<li><strong>Ropa:</strong> Invierno vs. Verano.</li>\r\n<li><strong>Comida:</strong> Frutas vs. Verduras.</li>\r\n</ul>\r\n<p>Usamos las tarjetas de lectura global para hacer juegos de clasificaci&oacute;n en la mesa.</p>', 'Fonoaudiología', '2025-11-24 23:05:13', 'assets/img/1764027835_Gemini_Generated_Image_ladql1ladql1ladq (1).png', 5),
(44, 'Economía de Fichas: Refuerzo Positivo', '<h3>Motivaci&oacute;n visual</h3>\r\n<p>Para instaurar h&aacute;bitos (como lavarse los dientes), usamos un tablero de puntos o fichas.</p>\r\n<p>Cada vez que realiza la conducta deseada, gana una ficha (sticker, carita feliz). Al juntar 5 fichas, obtiene un reforzador pactado (jugar tablet, ir al parque).</p>\r\n<p><strong>Clave:</strong> El premio debe ser inmediato al principio e irse espaciando con el tiempo.</p>', 'Psicología', '2025-11-24 23:05:13', 'assets/img/1764033865_Gemini_Generated_Image_yyvhiyyvhiyyvhiy.png', 6),
(45, 'Historias de \"Alto Riesgo\": Seguridad Vial', '<h3>Ense&ntilde;ando l&iacute;mites de seguridad</h3>\r\n<p>Los ni&ntilde;os con TEA a menudo no perciben el peligro social o f&iacute;sico. Creamos historias sociales espec&iacute;ficas para:</p>\r\n<ul>\r\n<li>Cruzar la calle (Mirar, Esperar, Cruzar).</li>\r\n<li>No irse con desconocidos.</li>\r\n<li>Qu&eacute; hacer si me pierdo (Buscar un polic&iacute;a o guardia).</li>\r\n</ul>\r\n<p>Estas historias deben leerse repetidamente antes de salir de casa.</p>', 'Psicología', '2025-11-24 23:05:13', 'assets/img/1764034018_Gemini_Generated_Image_rxgup1rxgup1rxgu.png', 6),
(46, 'Manejo de la Frustración: La técnica de la Tortuga', '<h3>Ense&ntilde;ar a parar</h3>\r\n<p>Cuando sentimos que vamos a \"explotar\", ense&ntilde;amos al ni&ntilde;o a:</p>\r\n<ol>\r\n<li><strong>Parar:</strong> Reconocer la emoci&oacute;n (Sem&aacute;foro Rojo).</li>\r\n<li><strong>Meterse en el caparaz&oacute;n:</strong> Cruzar brazos, respirar hondo, cerrar los ojos.</li>\r\n<li><strong>Salir:</strong> Cuando el sem&aacute;foro est&aacute; en verde, buscar una soluci&oacute;n.</li>\r\n</ol>', 'Psicología', '2025-11-24 23:05:13', 'assets/img/1764031511_Gemini_Generated_Image_j56325j56325j563.png', 6),
(47, 'Musicoterapia Activa vs. Receptiva', '<h3>Dos formas de trabajar</h3>\r\n<ul>\r\n<li><strong>Receptiva:</strong> Escuchar m&uacute;sica para regular el estado de &aacute;nimo (calmar o activar). Usamos playlists espec&iacute;ficas.</li>\r\n<li><strong>Activa:</strong> Tocar instrumentos, cantar, improvisar. Esto trabaja la motricidad, la imitaci&oacute;n y la toma de turnos social.</li>\r\n</ul>', 'Musicoterapia', '2025-11-24 23:05:13', 'assets/img/1764034342_Gemini_Generated_Image_ahwpimahwpimahwp.png', 9),
(48, 'Arte Terapia: Expresión sin palabras', '<h3>Cuando pintar es hablar</h3>\r\n<p>Para ni&ntilde;os no verbales o con dificultad emocional, el dibujo libre o la pintura con dedos es una v&iacute;a de descarga. No importa el resultado est&eacute;tico, importa el proceso sensorial y la elecci&oacute;n de colores como reflejo del estado interno.</p>\r\n<p>Nuestro juego de \"Pintura Libre\" en la web busca ofrecer este espacio digitalmente.</p>', 'Terapia Ocupacional', '2025-11-24 23:05:13', 'assets/img/1764032232_Gemini_Generated_Image_mxdwbwmxdwbwmxdw.png', 8),
(49, 'Beneficios del Agua: Hidroterapia', '<h3>El medio acu&aacute;tico</h3>\r\n<p>El agua ofrece presi&oacute;n uniforme (calmante) y resistencia suave (fortalecimiento). Para muchos ni&ntilde;os con TEA, la piscina es el lugar donde mejor se regulan sensorialmente y donde m&aacute;s conectan con el terapeuta.</p>', 'Terapia Ocupacional', '2025-11-24 23:05:13', 'assets/img/1764031062_Gemini_Generated_Image_865y6r865y6r865y.png', 8),
(50, 'Deportes Inclusivos: ¿Cuál elegir?', '<h3>Deportes individuales en entorno grupal</h3>\r\n<p>Los deportes de equipo complejos (f&uacute;tbol) pueden ser estresantes por las reglas sociales r&aacute;pidas. Se recomiendan deportes individuales que se practican en grupo:</p>\r\n<ul>\r\n<li>Nataci&oacute;n</li>\r\n<li>Artes Marciales (Estructura, respeto, secuencias claras)</li>\r\n<li>Atletismo</li>\r\n<li>Equitaci&oacute;n</li>\r\n</ul>', 'Psicopedagogía', '2025-11-24 23:05:13', 'assets/img/1764034728_Gemini_Generated_Image_a9t14ba9t14ba9t1.png', 7),
(51, 'El Duelo del Diagnóstico: Carta a los padres', '<h3>Es normal sentir tristeza</h3>\r\n<p>Recibir un diagn&oacute;stico de TEA es un cambio de paradigma. Pasamos por etapas de negaci&oacute;n, enojo, tristeza y finalmente aceptaci&oacute;n.</p>\r\n<p>Perm&iacute;tase sentir. Busque tribu (otros padres). Y recuerde: su hijo sigue ser el mismo ni&ntilde;o maravilloso de ayer, solo que ahora tiene un mapa para entenderlo mejor.</p>', 'Psicología', '2025-11-24 23:05:13', 'assets/img/1764031574_Gemini_Generated_Image_4xeg5o4xeg5o4xeg.png', 6),
(52, 'Preparando la Adolescencia: Higiene y Privacidad', '<h3>Cambios del cuerpo</h3>\r\n<p>La pubertad llega con cambios f&iacute;sicos que pueden asustar si no se anticipan. Usamos historias sociales para explicar:</p>\r\n<ul>\r\n<li>El uso de desodorante (Rutina diaria).</li>\r\n<li>La menstruaci&oacute;n (en ni&ntilde;as) o poluciones (en ni&ntilde;os) como algo natural.</li>\r\n<li>El concepto de \"Privado\" (ba&ntilde;o, habitaci&oacute;n) vs \"P&uacute;blico\".</li>\r\n</ul>', 'Psicología', '2025-11-24 23:05:13', 'assets/img/1764031636_Gemini_Generated_Image_ip8gfoip8gfoip8g.png', 6),
(53, 'Selectividad Alimentaria Severa: ¿Cuándo preocuparse?', '<h3>Diferencia entre \"ma&ntilde;oso\" y rigidez</h3>\r\n<p>Si el ni&ntilde;o come menos de 10 alimentos, o si elimina grupos enteros (ej: nada de frutas), o si tiene reacciones de v&oacute;mito ante texturas, necesitamos intervenci&oacute;n profesional.</p>\r\n<p>No fuerce. Juegue con la comida. El objetivo inicial es que tolera la presencia del alimento en la mesa, no que se lo coma.</p>', 'Fonoaudiología', '2025-11-24 23:05:13', 'assets/img/1764034846_Gemini_Generated_Image_zer8k7zer8k7zer8.png', 5),
(54, 'El uso de Tablets y Pantallas: Guía de uso', '<h3>Herramienta vs. Aislamiento</h3>\r\n<p>Las pantallas no son malas, son herramientas. Apps de causa-efecto, puzles o comunicadores son excelentes.</p>\r\n<p><strong>Regla de oro:</strong> La pantalla no debe reemplazar la interacci&oacute;n humana. &Uacute;sela JUNTOS. Comente lo que pasa en el juego. T&uacute;rnense.</p>', 'Psicopedagogía', '2025-11-24 23:05:13', 'assets/img/1764034711_Gemini_Generated_Image_n9pa88n9pa88n9pa.png', 7),
(55, 'La importancia de la Red de Apoyo', '<h3>No est&aacute;n solos</h3>\r\n<p>Criar a un ni&ntilde;o neurodivergente es un camino que requiere compa&ntilde;&iacute;a. Busque asociaciones de padres, grupos de Facebook locales o talleres.</p>\r\n<p>Compartir experiencias con quienes viven lo mismo valida sus sentimientos y ofrece estrategias pr&aacute;cticas que ning&uacute;n libro ense&ntilde;a.</p>', 'Psicología', '2025-11-24 23:05:13', 'assets/img/1764031694_Gemini_Generated_Image_t36g72t36g72t36g.png', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_blog`
--

CREATE TABLE `categorias_blog` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_blog`
--

INSERT INTO `categorias_blog` (`id`, `nombre`) VALUES
(1, 'Lenguaje y Comunicación'),
(2, 'Matemáticas y Lógica'),
(3, 'Cuentos e Historias'),
(4, 'Terapia y Recursos'),
(5, 'Fonoaudiología'),
(6, 'Psicología'),
(7, 'Psicopedagogía'),
(8, 'Terapia Ocupacional'),
(9, 'Musicoterapia'),
(10, 'Equinoterapia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_edad`
--

CREATE TABLE `categorias_edad` (
  `id` int(11) NOT NULL,
  `rango` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `orden` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_edad`
--

INSERT INTO `categorias_edad` (`id`, `rango`, `descripcion`, `orden`) VALUES
(1, '1 a 3 años', 'Estimulación sensorial, causa-efecto y sonidos suaves.', 1),
(2, '3 a 6 años', 'Asociación, formas, colores y primeras palabras.', 2),
(3, '6 a 10 años', 'Lógica, memoria secuencial, emociones y matemáticas básicas.', 3),
(4, 'Más de 10 años', 'Retos cognitivos, creatividad avanzada y reglas sociales.', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_motor` int(11) NOT NULL,
  `imagen_portada` varchar(100) DEFAULT 'default.jpg',
  `configuracion` text DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id`, `titulo`, `descripcion`, `id_categoria`, `id_motor`, `imagen_portada`, `configuracion`, `activo`) VALUES
(1, 'Aprender a Contar', 'Asociar números con cantidad.', 1, 1, 'https://placehold.co/400x300/88B04B/FFF?text=Contar', '{\"operacion\":\"contar\", \"nivel_max\":5}', 1),
(2, 'Sumas en la Casita', 'Sumas verticales con llevada.', 3, 1, 'https://placehold.co/400x300/FF6B6B/FFF?text=Sumas', '{\"operacion\":\"suma_vertical\", \"nivel_max\":10}', 1),
(3, 'Restas Visuales', 'Aprender a quitar elementos.', 3, 1, 'https://placehold.co/400x300/4ECDC4/FFF?text=Restas', '{\"operacion\":\"resta_visual\", \"nivel_max\":10}', 1),
(4, 'Tablas de Multiplicar', 'Aprendizaje visual de grupos.', 3, 1, 'https://placehold.co/400x300/FFD700/FFF?text=Multiplicar', '{\"operacion\":\"multiplicacion\", \"nivel_max\":10}', 1),
(5, 'Repartir y Dividir', 'Concepto de división equitativa.', 3, 1, 'https://placehold.co/400x300/92A8D1/FFF?text=Dividir', '{\"operacion\":\"division_reparto\", \"nivel_max\":10}', 1),
(6, 'Explorando Argentina', 'Toca las provincias para conocerlas.', 3, 2, 'https://placehold.co/400x300/75AADB/FFF?text=Argentina', '{\"mapa\":\"argentina\"}', 1),
(7, 'Línea de Tiempo: 1810', 'Historia de la Revolución de Mayo.', 3, 3, 'https://placehold.co/400x300/A3E4D7/FFF?text=1810', '{\"epoca\":\"1810\"}', 1),
(8, 'Constructor de Frases', 'Pictogramas para armar oraciones.', 1, 4, 'https://placehold.co/400x300/FFD700/FFF?text=Frases', NULL, 1),
(9, 'Lectura Global: Palabras', 'Asocia la imagen con la palabra (Casa, Mesa, Sapo).', 1, 4, 'https://placehold.co/400x300/FFD700/FFF?text=Lectura', '{}', 1),
(10, 'Lectura Global: Animales', 'Asocia la palabra con la foto (Vaca, Gato, Pato, Sapo). Basado en fichas de lectura.', 2, 4, '', '{\"tipo\": \"lectura_global\", \"grupo\": \"animales\"}', 1),
(11, 'Lectura Global: Casa', 'Palabras del hogar (Mesa, Cama, Sofá, Vaso).', 2, 4, '', '{\"tipo\": \"lectura_global\", \"grupo\": \"casa\"}', 1),
(12, 'Opuestos (Antónimos)', 'Grande/Chico, Rápido/Lento, Sucio/Limpio. Fichas de conceptos.', 3, 4, '', '{\"tipo\": \"antonimos\"}', 1),
(13, 'Matemática: Valor Posicional', 'Unidades (Azul), Decenas (Rojo), Centenas (Verde). Método Montessori.', 3, 1, '', '{\"operacion\": \"valor_posicional\"}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motores_juego`
--

CREATE TABLE `motores_juego` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `archivo_base` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `motores_juego`
--

INSERT INTO `motores_juego` (`id`, `nombre`, `archivo_base`) VALUES
(1, 'Matemática Universal', 'motor_matematica.php'),
(2, 'Geografía Interactiva', 'motor_geografia.php'),
(3, 'Historia Narrativa', 'motor_historia.php'),
(4, 'Lenguaje / Fonética', 'motor_lenguaje.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `id_juego` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `opcion_a` varchar(255) NOT NULL,
  `opcion_b` varchar(255) NOT NULL,
  `opcion_c` varchar(255) NOT NULL,
  `correcta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `id_juego`, `pregunta`, `imagen`, `opcion_a`, `opcion_b`, `opcion_c`, `correcta`) VALUES
(1, 13, '¿En qué año se declaró la Independencia Argentina?', NULL, '1810', '1816', '1853', 'b'),
(2, 13, '¿Quién creó la Bandera Nacional?', NULL, 'Manuel Belgrano', 'José de San Martín', 'Domingo Sarmiento', 'a'),
(3, 13, '¿Dónde se encuentra la Casa Histórica de la Independencia?', NULL, 'Buenos Aires', 'Córdoba', 'Tucumán', 'c'),
(4, 13, '¿Qué se celebra el 25 de Mayo?', NULL, 'La Revolución de Mayo', 'La Independencia', 'La muerte de San Martín', 'a'),
(5, 13, '¿Quién cruzó los Andes para liberar Chile y Perú?', NULL, 'Belgrano', 'San Martín', 'Güemes', 'b'),
(6, 14, '¿Cuánto es 8 x 7?', NULL, '54', '56', '62', 'b'),
(7, 14, 'Si tengo 100 y gasto 45, ¿cuánto me queda?', NULL, '55', '65', '45', 'a'),
(8, 14, '¿Cuál es la mitad de 150?', NULL, '70', '75', '80', 'b'),
(9, 14, '¿Qué número sigue? 2, 4, 8, 16...', NULL, '24', '30', '32', 'c'),
(10, 14, '120 dividido 4 es igual a...', NULL, '20', '30', '40', 'b'),
(11, 15, '¿En qué provincia están las Cataratas del Iguazú?', NULL, 'Corrientes', 'Misiones', 'Entre Ríos', 'b'),
(12, 15, '¿Cuál es la capital de la provincia de Buenos Aires?', NULL, 'CABA', 'Mar del Plata', 'La Plata', 'c'),
(13, 15, '¿Qué provincia tiene forma de \"bota\"?', NULL, 'Santa Fe', 'Jujuy', 'Neuquén', 'a'),
(14, 15, '¿Dónde queda el Glaciar Perito Moreno?', NULL, 'Santa Cruz', 'Chubut', 'Tierra del Fuego', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `archivo` varchar(200) NOT NULL,
  `tipo` enum('padres','terapeutas','niños') DEFAULT 'padres',
  `icono` varchar(50) DEFAULT 'fa-file-pdf'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id`, `titulo`, `descripcion`, `archivo`, `tipo`, `icono`) VALUES
(1, 'Plantillas de Sumas Manipulativas', 'Método de colores para aprender a sumar (C-V, D-R, U-A).', 'plantilla-sumas.pdf', 'niños', 'fa-file-pdf'),
(2, 'Llavero de Comunicación', 'Pictogramas para expresar necesidades básicas y emociones.', 'llavero-comunicacion.pdf', 'padres', 'fa-file-pdf'),
(3, 'Lectura Global: Fichas', 'Tarjetas de asociación Palabra-Imagen.', 'lectura-global.pdf', 'terapeutas', 'fa-file-pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_admin`
--

CREATE TABLE `usuarios_admin` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios_admin`
--

INSERT INTO `usuarios_admin` (`id`, `usuario`, `password`, `nombre`) VALUES
(2, 'admin', '$2y$10$arpFrmFo6We9M9Uu9H770urIn3mRYOoitnvn718xBTlxO6fWQp4Fm', 'Papá de Bauti');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_blog`
--
ALTER TABLE `categorias_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_edad`
--
ALTER TABLE `categorias_edad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `motores_juego`
--
ALTER TABLE `motores_juego`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_admin`
--
ALTER TABLE `usuarios_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `categorias_blog`
--
ALTER TABLE `categorias_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categorias_edad`
--
ALTER TABLE `categorias_edad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `motores_juego`
--
ALTER TABLE `motores_juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios_admin`
--
ALTER TABLE `usuarios_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
