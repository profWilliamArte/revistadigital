-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-03-2025 a las 12:29:12
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `revistadigital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canal`
--

CREATE TABLE `canal` (
  `id` int NOT NULL,
  `idestatus` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ruta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `canal`
--

INSERT INTO `canal` (`id`, `idestatus`, `nombre`, `ruta`) VALUES
(1, 1, 'Neutrality Studies Español', '@NeutralityStudiesES'),
(2, 1, 'Glenn Diesen Español', '@GDiesenES'),
(3, 1, 'SaneVox Español', '@SaneVoxES'),
(4, 1, 'Negocios TV', '@NegociosTV'),
(5, 1, 'Juan Antonio de Castro', '@jcastroares'),
(6, 1, 'El Canal del Coronel', '@geoestratego_oficial'),
(7, 1, 'EKAI Center', '@ekaigroup'),
(8, 1, 'DMP GEOPOLÍTICA', '@dmpgeopolitica'),
(9, 1, 'Santiago Armesilla', '@SantiagoArmesilla'),
(11, 1, 'The Mexican Family', '@TheMexicanFamily'),
(12, 1, 'DW Español', '@dwespanol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int NOT NULL,
  `idcanal` int NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `subtitulo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `idcanal`, `titulo`, `subtitulo`, `codigo`, `fecha`) VALUES
(1, 2, 'Cómo el MIC Destruye el Mundo | Dennis Kucinich', 'Durante una década, los medios de comunicación de EE. UU. y occidentales fingieron estar muy preocupados por los pobres civiles sirios siendo masacrados por su gobierno. La semana pasada, miles de sirios fueron asesinados a quemarropa en ejecuciones masivas por el nuevo régimen terrorista de Al-Qaeda que tomó el control del estado en un golpe de fuerza respaldado por Turquía. Y Occidente permanece en silencio y cómplice en esta catástrofe humanitaria muy predecible. ', '_kBFxSwOAmY', '2025-03-15'),
(2, 1, 'Ucrania en Crisis: ¿El Ejército con la Ultraderecha? | Dr. Nicolai Petro', '[Parte 2 de 2] Existe un riesgo serio de que incluso si el establecimiento político de Ucrania (Parlamento y Gobierno) llegara a la conclusión de que solo una rendición podría salvar al país de la aniquilación total, el ala ultraderechista, con su disposición a matar a su propia gente, podría ser capaz de tomar el poder si el ejército se pone de su lado. Ese es un miedo real que el profesor Nicolai Petro expresa en esta entrevista. Más allá de esto, discutimos el futuro tanto de Rusia como de Ucrania a medida que la guerra llega a su fin. Estoy hablando nuevamente con el Dr. Nicolai Petro, profesor de Ciencias Políticas en la Universidad de Rhode Island y autor del magnífico libro \"La tragedia de Ucrania: Lo que la tragedia griega clásica puede enseñarnos sobre la resolución de conflictos\".', 'HAe3w6qxab4', '2025-03-15'),
(3, 1, 'Lo que Moscú realmente piensa del plan de Trump | Prof. Nicolai Petro', 'La posición de Rusia en el campo de batalla está mejorando cada vez más, pero Estados Unidos sigue insistiendo en que Moscú renuncie a su ventaja para negociar el fin de todo el conflicto. ¿Por qué Trump cree que este enfoque podría funcionar y cuáles son los cálculos rusos para no rechazar completamente esta idea? Para discutir estos puntos, estoy hablando nuevamente con el Dr. Nicolai Petro, profesor de Ciencias Políticas en la Universidad de Rhode Island y autor del magnífico libro \"La tragedia de Ucrania: lo que la tragedia griega clásica puede enseñarnos sobre la resolución de conflictos\".', 'L6E5t7_j8dU', '2025-03-13'),
(4, 1, '¿EE.UU. quiere congelar frentes de guerra perdida? ¿Aceptará Rusia?', 'Estados Unidos negoció con Ucrania un documento bastante notable que los cínicos podrían descartar como un intento descarado de Estados Unidos de congelar la guerra en Ucrania en un momento en que Rusia claramente está ganando. Sin embargo, el documento también establece un claro dominio de Estados Unidos sobre su proxy ucraniano y le da a Estados Unidos un mandato para negociar realmente con Rusia sin los ucranianos en la mesa o los europeos, para el caso. Aquí está mi evaluación de este desarrollo diplomático.', 'PMNb0izob3c', '2025-03-12'),
(5, 2, 'Prof. David Gibbs: Neoconservadurismo y la Arma de los Derechos Humanos', '', 'Ulr7pgFhQpU', '2025-03-15'),
(6, 2, 'Theodore Postol: En busca del Armagedón Nuclear', 'El profesor del MIT y asesor del Pentágono, Ted Postol, presenta la amenaza de una guerra nuclear que se ignora cada vez más.  ', 'YyGRpyirZQg', '2025-03-13'),
(7, 1, '¿Por qué Occidente NO puede vencer a China? | Arnaud Bertrand', '[Parte 2 de 2] Mientras Occidente sigue ocupado hablando mal de China en todo momento, se les ha escapado por completo que China tiene un sistema doméstico imbatible que ni Estados Unidos ni Europa pueden igualar. China tiene uno de los sistemas de política fiscal más descentralizados del mundo y ha construido su estructura nacional en torno a la competencia local más allá de una simple economía de mercado. Ahora compáralo con la creciente centralización en la Unión Europea y tendrás una idea de por qué Bruselas no tiene ninguna posibilidad de producir el mismo tipo de productos con la calidad que China ahora puede ofrecer al mundo a gran escala. Esta es la segunda parte de una entrevista con Arnaud Bertrand, uno de los mejores y más profundos analistas políticos de Twitter/X. Recomiendo a todos suscribirse a Arnaud, ya que realmente da en el clavo cada vez. Hace un análisis fantástico de los asuntos actuales y de datos. ', 'Ip9KYgSkuN8', '2025-02-20'),
(8, 1, '¿La Búsqueda de Hegemonía de EE.UU. Ha Terminado? ¿O No?', 'Hace dos semanas, Brian Berletic de The New Atlas (@TheNewAtlas) presentó un argumento muy importante sobre lo que algunas personas esperan que sea el fin de la búsqueda de Estados Unidos por la dominación global y el nuevo \'amor\' de la administración Trump por asentarse en el orden mundial multipolar: ', 'XP_CnWVJ_dA', '2025-02-25'),
(9, 3, 'Europeos divididos y Trump desata el caos', 'Europeos divididos y Trump desata el caos', 'pjKyU1Hyc1A', '2025-03-12'),
(10, 3, 'Jeffrey Sachs en el Parlamento Europeo - Preguntas y Respuestas', 'Jeffrey Sachs en el Parlamento Europeo - Preguntas y Respuestas', 'FtVOUB97l30', '2025-02-21'),
(11, 3, 'Discurso de Trump, Zelensky necesita intérprete, visita de Shoigu a Pekín', 'Discurso de Trump, Zelensky necesita intérprete, visita de Shoigu a Pekín', 'N8WrKQxtbJs', '2025-03-05'),
(12, 3, 'La Geopolítica de la Paz - Jeffrey Sachs en el Parlamento Europeo', 'La Geopolítica de la Paz - Jeffrey Sachs en el Parlamento Europeo', 'u2mgmb-3UvU', '2025-02-21'),
(13, 3, 'Zelensky llega a EE.UU. Llamada de Putin a Xi Jinping. Minerales raros en juego.', 'Zelensky llega a EE.UU. Llamada de Putin a Xi Jinping. Minerales raros en juego.', 'CVoRlNjbgyE', '2025-02-26'),
(14, 4, 'TODO ES GEOPOLÍTICA: Trump y Putin ponen en jaque a Ucrania, situación límite en Kursk, Europa avisa', 'El presidente de Rusia, Putin sigue firme en sus condiciones para negociar la paz y la tregua con Ucrania a pesar de las negociaciones planteadas por el presidente estadounidense, Donald Trump. El gobierno ruso y el Kremlin siguen con sus reivindicaciones territoriales maximalistas sobre la Ucrania ocupada y partes de la Ucrania no ocupada. Putin ha exigido a Ucrania entregar la totalidad de las provincias de Donetsk, Lugansk, Zaporiyia y Jersón y las zonas que están libres de las fuerzas rusas. ', 'KY6_-Ld_G3M', '2025-03-17'),
(15, 4, 'Trump sabe que Rusia no abandonará sus línea rojas: Europa y Ucrania tendrán que aceptar', 'José Miguel Villarroya, historiador, señala que Europa no tiene la capacidad, ni militar ni económica, para ayudar a Ucrania a sostener la guerra. Villarroya destaca que, por lo tanto, no le quedará más remedio que aceptar lo que se negocie entre Trump y Putin mañana, en caso de que se llegue a un acuerdo. Sin embargo, dicho acuerdo no será definitivo, sino que simplemente establecerá las bases para una futura negociación.', 'GcD_5KgDQT0', '2025-03-17'),
(16, 7, 'Guerra en Ucrania. TRUMP, TREGUA Y TRAMPA', 'Guerra en Ucrania. TRUMP, TREGUA Y TRAMPA', '42zRMgE84aI', '2025-03-17'),
(17, 7, 'Pánico en Wall Street. ¿ESTÁ LA U.E. INTENTANDO COMPRAR A TURQUÍA?', 'Pánico en Wall Street. ¿ESTÁ LA U.E. INTENTANDO COMPRAR A TURQUÍA?', '_UQtZStuah0', '2025-03-17'),
(18, 7, 'Ocaso del Partido Único. UNA OPORTUNIDAD HISTÓRICA PARA EUROPA', 'Ocaso del Partido Único. UNA OPORTUNIDAD HISTÓRICA PARA EUROPA', 'T3sqTatuh3s', '2025-03-16'),
(19, 7, '¿QUE PASÓ EN LA CASA BLANCA?', '¿QUE PASÓ EN LA CASA BLANCA?', 'AC3oBoPrBVA', '2025-03-15'),
(20, 7, 'El caso Khodorkovsky. POR QUÉ EUROPA SE VA A ATRINCHERAR', 'El caso Khodorkovsky. POR QUÉ EUROPA SE VA A ATRINCHERAR', 'FOn3kyAVURE', '2025-03-14'),
(21, 5, 'Yalta 2 0 El Nuevo Orden', 'En el posible camino hacia la paz en Ucrania, la próxima reunión en Arabia Saudí y el futuro encuentro entre Trump y Putin, se proyecta un nuevo equilibrio geopolítico global que podría culminar en el desfile de la victoria del 9 de mayo próximo en Moscú. ¿Estamos ante un Yalta 2.0? Nos adentramos en un equlibrio tripolar, con tres hegemones, cuyas fuerzas de atracción y repulsión recíprocas pudieran soldarlas en un núcleo \"win-win\" con efectos beneficiosos para el progreso económico y la paz global. Un nuevo equilibrio con reparto de influencias geoeconómicas. Para llegar a ello, la única incógnita que queda por resolver es la de una Europa que se siente expulsada del tablero geopolítico y que tiene la tentación de arruinar el dicho proceso, empecinándose en seguir apoyando una tragedia ucraniana y una militarización a ultranza sin sentido.', 'QDrGI8nGqRM', '2025-02-16'),
(22, 5, 'Europa... de rodillas', 'Nuestros dirigentes agachan la cabeza ante el Nuevo Orden Mercantilista que ha puesto en marcha Trump. Europa, de rodillas, habla al aire y solo salen palabras de sometimiento a los dictados del nuevo Presidente Americano. En nuevo \"Anti-Marshall\" ha desplegado un militarismo económico que puede llevarnos, en el medio plazo, a una recesión mundial. Nos jugamos el bienestar de los europeos. No podemos seguir aceptando el comportamiento servil de nuestros dirigentes hacia Estados Unidos. No los elegimos para empobrecernos. Porque la realidad es que Estados Unidos esta dejando de ser nuestro \"socio\", y, a partir de ahí, todo puede ocurrir. Necesitamos una nueva casta de dirigentes valientes, con valores y que piensen en cada una de sus naciones respectivas. Hay espacio e instrumentos para dar la cara ante Trump. Nuestro poder importador y nuestra inrtegración en las cadenas de valor globales, pueden ser usadas como herramientas de represalia si establecemos estrategias claras de defensa. Lo importante es no ser cobardes!', 'gDUOxvBDu9U', '2025-02-04'),
(23, 6, 'Los Riesgos a los que se enfrenta EEUU: Guerra Civil, China, IA...', 'Recientemente, Tucker Carlson entrevistó a Ray Dalio, inversor estadounidense y una de las personas más ricas del mundo. Además de hablar de predicciones del mercado, Dalio expuso las oscuras verdades que pesan sobre EE.UU. y que la mayoría de los estadounidenses se niegan a admitir.\nCon datos fríos y duros, Dalio intentó demostrar que EE.UU. ya estaba inmerso en una guerra civil, analizando metódicamente las fuerzas que estaban destrozando el país. También detalló la rivalidad con China y el impacto determinante de la Inteligencia Artificial en todos los aspectos de la sociedad.\nTerminó ofreciendo fórmulas para protegerse en esta época de cambios e incertidumbre.\nEste es el impactante resumen de las dos horas de entrevista.', '2-ErLow6L8o', '2025-02-04'),
(24, 6, 'CAOS en Siria', 'En esta ocasión contamos con el analista Koldo Salazar, y el doctor sirio Firas, para contarnos la última hora de todo lo que está ocurriendo en Siria.', 'xM-BvmLhm98', '2025-02-12'),
(25, 6, 'Oreshnik, el Punto de Inflexión de la Guerra', 'Juan Antonio Aguilar nos habla del Oréshnik, un misil balístico de alcance intermedio de fabricación rusa con capacidad hipersónica, cuyo desarrollo ha supuesto un punto de inflexión en la guerra de Ucrania.', '-bB-Lmwm5zM', '2025-02-26'),
(26, 8, 'JUAN ANTONIO AGUILAR - DMP CHARLAS 176', 'En esta charla nos acompaña Juan Antonio Aguilar.', 'CJaDnNpAkiI', '2025-03-03'),
(27, 8, 'FERNANDO MORAGÓN - DMP CHARLAS 177', 'En esta charla nos acompaña Fernando Moragón.', 'gd7LjGdjs2I', '2025-03-06'),
(28, 8, 'FERNANDO MORAGÓN - DMP CHARLAS 178', 'En esta charla nos acompaña Fernando Moragón.', 'JRZWMmLzxNo', '2025-03-08'),
(29, 8, 'JUAN ANTONIO AGUILAR - DMP CHARLAS 179', 'En esta charla nos acompaña Juan Antonio Aguilar.', '9RCHLxJJCFA', '2025-03-12'),
(30, 8, 'FERNANDO MORAGÓN - DMP CHARLAS 180', 'En esta charla nos acompaña Fernando Moragón.', '_DEmeWTOUv4', '2025-03-13'),
(31, 8, 'FERNANDO MORAGÓN - DMP CHARLAS 181', 'En esta charla nos acompaña Fernando Moragón.', 'zuLaFegD3dg', '2025-03-15'),
(32, 11, '¡IMPACTO DEVASTADOR! WALMART SE DESPLOMA Y TESLA PUEDE SER EL SIGUIENTE', 'Bienvenidos a nuestro programa completo de las principales noticias. Transmitimos de lunes a viernes en el momento en que las noticias suceden. Suscríbete para que no te pierdas ninguno de nuestros streamings. ', 'Xzx84lPgoZI', '2025-03-15'),
(33, 11, 'Estados Unidos Quiere Destruirnos Canadá Responde a Trump', 'La era Mark Carney comienza en Canadá con un mensaje contundente: Estados Unidos ya no es un aliado, es nuestra mayor amenaza. Tras años de ataques económicos y discursos de anexión, el nuevo primer ministro llega con una estrategia clara para enfrentar a Trump y defender la soberanía canadiense. Canadá ya no ve a EE.UU. como un socio, sino como un enemigo directo.\nEn este episodio analizamos cómo Carney está reestructurando el gobierno, eliminando burocracia y preparando medidas agresivas contra la guerra económica de Trump. El nuevo gabinete tiene un objetivo claro: proteger a Canadá del expansionismo estadounidense. Además, explicamos el impacto de los nuevos aranceles, las represalias comerciales y cómo México también se juega el futuro en este conflicto.', 'JUZoVEI2pBg', '2025-03-15'),
(34, 11, 'Trump Ahora Necesita A México Para Que EEUU No Pase Hambre', 'México lo volvió a hacer. Mientras en Estados Unidos el precio del huevo se dispara y la escasez golpea a millones, Trump no tuvo más opción que recurrir a México para salvar la situación. Irónicamente, el mismo país al que atacó con su muro y aranceles ahora le está dando de comer, dejando claro que la \"autosuficiencia\" de EE.UU. es puro cuento.\nHoy vamos a desenmascarar la hipocresía de Washington. Hablaremos de cómo la crisis de la gripe aviar ha destruido la producción estadounidense y cómo México, sin hacer ruido, se convirtió en su mayor proveedor de huevos. Vamos a ver los números, las cifras y el impacto real en la economía. Pero lo más importante: ¿qué dice esto sobre la relación entre México y EE.UU.?\nLa gran pregunta aquí es ¿cuánto tiempo más seguirán con la mentira de que \"no nos necesitan\"? Porque una vez más, cuando su sistema colapsa, México es el primero en sacarles las papas del fuego. Si crees que esto es un caso aislado, espera a ver los datos que traemos hoy.\n', '6hg59CziRt0', '2025-03-17'),
(35, 11, 'Trump Activa Ley Militar Contra Hispanos en EEUU', 'Donald Trump acaba de hacer algo que podría cambiarlo todo: invocó una ley de guerra de 1798 para deportar inmigrantes sin juicio. En este episodio, analizamos cómo esta movida extrema pone en jaque los derechos civiles y abre la puerta a deportaciones masivas sin precedentes. ¿Es solo el inicio de algo más grande? ¿Cómo reaccionará la justicia ante esta estrategia de guerra ficticia?\nExaminamos en detalle el Alien Enemies Act, la historia detrás de su uso en guerras pasadas y por qué Trump quiere aplicarlo en plena paz. Además, revisamos la respuesta legal y política ante esta amenaza, el impacto en la comunidad latina y las implicaciones de que un presidente se atribuya poderes bélicos sin autorización del Congreso.\nEsto no es una política migratoria común, es un paso hacia un gobierno sin límites. ¿Hasta dónde llegará Trump? ¿Se detendrá aquí o es solo el principio de una purga sin precedentes? Hoy, desmenuzamos esta crisis con datos, análisis y fuentes para entender el peligro real detrás de este decreto.', 'qfgF9osKsVU', '2025-03-17'),
(36, 1, 'La verdad sobre la locura de la UE: ¿Rendición de Ucrania?', 'En su juventud, el Sr. von der Schulenburg escapó del régimen comunista en Alemania del Este, luego estudió en Berlín, Londres y París, tras lo cual comenzó a trabajar para las Naciones Unidas, incluyendo como Secretario General Adjunto de la ONU. Sirvió en muchas de las zonas conflictivas del mundo, como en Haití, Afganistán, Pakistán, Irán, y muchas más.  \nTambién escribió el formidable libro \"Sobre la Construcción de la Paz: Rescatando el Estado-Nación y Salvando a las Naciones Unidas\". Como era de esperar, también es un crítico abierto de las políticas beligerantes en las que la UE y sus estados miembros están actualmente involucrados.', 'IfZRVpGkeo0', '2025-03-18'),
(37, 1, '¿Por qué Trump está dispuesto a dar tanto a Putin? | Emb. Chas Freeman', '¿Por qué Trump está siendo tan complaciente con Rusia? ¿Y por qué Putin está tan ansioso por terminar la guerra a través de acuerdos de paz, contrario a la percepción de la gente de que quiere conquistar Ucrania? Para responder a estas preguntas y obtener información sobre las recientes conversaciones de paz entre Rusia y EE. UU., hoy hablo una vez más con el franco Embajador Chas Freeman, quien, entre muchos otros cargos, se desempeñó como Embajador de EE. UU. en Arabia Saudita y más tarde se convirtió en Secretario Asistente de Defensa en la década de 1990. También fue el principal intérprete de Richard Nixon durante su visita a China en 1972, lo que llevó a la normalización de las relaciones entre EE. UU. y China.', 'blcbs5GEV0k', '2025-03-18'),
(38, 2, 'Jeffrey Sachs: Negociaciones de Paz y el Fin de la OTAN', 'Estados Unidos y Rusia negocian el fin de la guerra por poderes en Ucrania: ¿Qué es realista esperar, cómo se pueden explicar las reacciones belicosas de Europa y es este el fin de la OTAN?  ', '_M0YMcz7XA8', '2025-03-18'),
(39, 6, 'Las GUERRAS de Nuestros Días', 'El contexto geopolítico parece haber entrado en un bucle de locura colectiva. En el caso concreto de Europa, no son pocos los líderes nacionales y comunitarios que parecen deseosos de entrar en una guerra directa con Rusia.\nMientras la paz en Ucrania no acaba de concretarse, en el resto del mundo proliferan los conflictos, y no parece que esta situación vaya a amainar.\nPor no hablar del enfrentamiento geopolítico entre China y EEUU porque cuestiones económicas y tecnológicas. Al tiempo que Donald Trump no deja de echar pimienta a esta situación ya de por sí delicada.\nPara analizar todas estas cuestiones, contamos con José Luis Pontijas, una verdadera eminencia con una dilatadísima experiencia internacional en materia de estrategia y geopolítica. Coronel de Artillería retirado, ha estado destinado en algunos de los principales puestos nacionales e internacionales, lo que, unido a su actual actividad docente, le permite realizar un análisis preciso sobre el momento histórico que estamos viviendo.', 'tklhsus_UBg', '2025-03-18'),
(40, 1, 'Alto al fuego limitado, más negociaciones acordadas, el papel de Oriente Medio crece.', 'El 18 de marzo, Vladimir Putin y Donald Trump mantuvieron una segunda conversación telefónica en la que discutieron la propuesta de alto el fuego de EE. UU. Aunque los líderes europeos intentaron hacer parecer que este era un momento de \"tómalo o déjalo\" para Rusia, ahora entendemos que EE. UU. fue muy realista sobre esta oferta inicial. No fue más que un iniciador de proceso y ahora los dos equipos en Washington y Moscú están trabajando hacia un proceso realista que no solo pondrá fin a la guerra en Ucrania, sino que llevará a una normalización de las relaciones entre EE. UU. y Rusia. ', 'VaxY0zISoWk', '2025-03-19'),
(41, 2, 'Anatol Lieven: ¿Se fragmentará y colapsará Europa tras la guerra en Ucrania?', 'Anatol Lieven es el Director del Programa Eurasia en el Instituto Quincy para la Gobernanza ', 'BcdMF7X3Xro', '2025-03-19'),
(42, 4, 'TODO ES GEOPOLÍTICA: Putin pone en jaque a Trump, dudas con la tregua energética y Europa amenaza', 'Es posible que el presidente de Rusia, Vladímir Putin, y su homólogo de EEUU, Donald Trump, celebren una reunión presencial en Arabia Saudita, según ha informado el enviado especial del presidente estadounidense para Oriente Próximo, Steve Witkoff.', 'aZrtRWEXtkQ', '2025-03-19'),
(43, 8, 'FERNANDO MORAGÓN - DMP CHARLAS 181 EN VIVO', 'En esta charla nos acompaña Fernando Moragón. ¡En vivo! ', 'rYfSpmYofQ0', '2025-03-19'),
(44, 12, 'Un alto el fuego en Ucrania no avanza con la rapidez esperada | A fondo DW', 'Nuestros invitados:\nFrank Priess, politólogo, graduado de la Universidad de Maguncia. Periodista de formación. Representante de la Fundación Konrad Adenauer (FKA) en programas de medios de comunicación, Colombia, Perú, Argentina y México. También ha desempeñado el cargo de director adjunto de asuntos internacionales de la Fundación en Berlín. \nCarmen Valero, corresponsal del diario \"El Mundo\" de España, periodista experta en política europea, seguridad internacional y zonas en conflicto.\n Jesús Núñez Villaverde es codirector del Instituto de Estudios sobre Conflictos y Acción Humanitaria. Experto en relaciones internacionales, seguridad internacional, construcción de la paz y prevención de conflictos violentos.', 'KxgNS76h4L0', '2025-03-20'),
(45, 3, 'Actualización semanal con Alexander y Sofía, 19 de marzo de 2025', 'Actualización semanal con Alexander y Sofía, 19 de marzo de 2025', 'JNu0MTc9y3k', '2025-03-19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canal`
--
ALTER TABLE `canal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canal`
--
ALTER TABLE `canal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
