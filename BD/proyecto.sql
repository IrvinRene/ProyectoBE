-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2017 a las 23:34:16
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agno_ac`
--

CREATE TABLE `agno_ac` (
  `id_agno_ac` int(11) NOT NULL,
  `agno_ac` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `agno_ac`
--

INSERT INTO `agno_ac` (`id_agno_ac`, `agno_ac`) VALUES
(1, 'I'),
(2, 'I'),
(3, 'I'),
(4, 'I'),
(5, 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler_casillero`
--

CREATE TABLE `alquiler_casillero` (
  `id_alq_cas` int(11) NOT NULL,
  `num_cas` int(11) DEFAULT NULL,
  `cedula` varchar(15) DEFAULT NULL,
  `nombre` int(11) DEFAULT NULL,
  `agno` int(11) DEFAULT NULL,
  `carrera_id_carrera` int(11) NOT NULL,
  `periodo_academico_id_periodo_ac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_laboral`
--

CREATE TABLE `area_laboral` (
  `id_arlabo_ac` int(11) NOT NULL,
  `area_laboral` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area_laboral`
--

INSERT INTO `area_laboral` (`id_arlabo_ac`, `area_laboral`) VALUES
(1, 'Biblioteca UTP'),
(2, 'Cafetería UTP'),
(3, 'Cafetín UTP'),
(4, 'Rancho'),
(5, 'Sala de Estudio Eléctrica'),
(6, 'Salones UTP'),
(7, 'Biblioteca'),
(8, 'Casa'),
(9, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_presupuestaria`
--

CREATE TABLE `asignacion_presupuestaria` (
  `id_asig_pres` int(11) NOT NULL,
  `agno` int(11) DEFAULT NULL,
  `programa_id_programa` int(11) NOT NULL,
  `presupuesto_anual` double DEFAULT NULL,
  `presupuesto_isemestre` double DEFAULT NULL,
  `presupuesto_iisemestre` double DEFAULT NULL,
  `consumido` double DEFAULT NULL,
  `sobrante` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `asignacion_presupuestaria`
--

INSERT INTO `asignacion_presupuestaria` (`id_asig_pres`, `agno`, `programa_id_programa`, `presupuesto_anual`, `presupuesto_isemestre`, `presupuesto_iisemestre`, `consumido`, `sobrante`) VALUES
(1, 2017, 9, 2000, 1000, 1000, NULL, NULL),
(2, 2017, 10, 7500, 3750, 3750, NULL, NULL),
(3, 2017, 14, 450, 225, 225, NULL, NULL),
(4, 2017, 15, 200, 100, 100, NULL, NULL),
(5, 2017, 18, 200, 100, 100, NULL, NULL),
(6, 2017, 20, 150, 75, 75, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asigxform`
--

CREATE TABLE `asigxform` (
  `id_asigxform` int(11) NOT NULL,
  `agno` int(11) DEFAULT NULL,
  `programa_id_programa` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspecto_familiar`
--

CREATE TABLE `aspecto_familiar` (
  `id_aspfamiliar` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `con_quien_reside` varchar(45) DEFAULT NULL,
  `motivo_novivir_progenitor` varchar(85) DEFAULT NULL,
  `Rango_rd_rango` int(11) NOT NULL,
  `autoridad_hogar` varchar(45) DEFAULT NULL,
  `comentario_adic` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayuda_alimenticia`
--

CREATE TABLE `ayuda_alimenticia` (
  `id_ay_alim` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `num_boletos` varchar(150) DEFAULT NULL,
  `total_entregados` int(11) DEFAULT NULL,
  `total_consumidos` int(11) DEFAULT NULL,
  `bol_por_con` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco_de_libros`
--

CREATE TABLE `banco_de_libros` (
  `id_libro` int(11) NOT NULL,
  `autor del libro` varchar(60) DEFAULT NULL,
  `titulo_libro` varchar(85) DEFAULT NULL,
  `edición` varchar(45) DEFAULT NULL,
  `editorial` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banco_de_libros`
--

INSERT INTO `banco_de_libros` (`id_libro`, `autor del libro`, `titulo_libro`, `edición`, `editorial`, `codigo`) VALUES
(1, 'Universidad Tecnológica de Panamá', 'Elemento de Mecánica para Ing. Tomo1', '1985', '6.50', '531.2 AM 19 E.4'),
(2, 'Universidad tecnológica de Panamá', 'Elemento de Mecánica para In. Tomo 1', '1985', '6.50', '531.2 AM 19 E.5'),
(3, 'Rigg James', 'Sistema de Producción', '1era', '14.24', ' 658.5 R 449 E.1'),
(4, 'Pinzón Alvaro', 'Cálculo Diferencial 1', '1era', '10.50', '513.33 P 36 E.1'),
(5, 'Pinzón Alvaro', 'Cálculo Diferencial 1', '1era', '10.50', '515.33 P 36 E.2'),
(6, 'Pinzón Alvaro', 'Cálculo Diferencial 1', '1era', '10.50', '515.33 P 36 E.3'),
(7, 'Pinzón Alvaro', 'Cálculo Diferencial 1', '1era', '10.50', '515.33 P 36 E.4'),
(8, 'Pinzón Alvaro', 'Cálculo Integral 2', '3era', '10.05', '515.43 P 36 E.1'),
(9, 'Pinzón Alvaro', 'Cálculo Integral 2', '3era', '10.05', '515.43 P 36 E. 2'),
(10, 'Pinzón Alvaro ', 'Cálculo Integral 2', '3era', '10.05', '515.43 P 36 E.2'),
(11, 'Pinzón Alvaro', 'Cálculo Integral 2 ', '3era', '10.05', '515.43 P 36 E.4'),
(12, 'McCormac Jack C.', 'Análisis Estructural', '3era', '8.44', '624.171 M 134 E.1'),
(13, 'McCormac Jack C. ', 'Análisis Estructural', '3era', '8.44', '624.171 M 134 E.2'),
(14, 'Giesecke Frederick y Otros', 'Dibujo Téc. Tomo 1', '5ta', '17.39', '604.2 SP 33 E.1'),
(15, 'Giesecke Frederick y Otros ', 'Dibujo Téc. Tomo 1', '6ta', '17.39', '604.2 SP 33 E.2 B.E.'),
(16, 'Geofrey Leblond y Ford', 'Como usar Lotus Tomo 11', '2da', '8.97', '001.642 L 49 E.1'),
(17, 'Hayt William y Kemmerly, NM Jack', 'Análisis de Circuitos en Ing.', '4ta', '13.97', '621.394 H 334'),
(18, 'Swokowski Earl-W', 'Álgebra y Trigonometría con Geometría Analítica', '2da', '8.00', '512.1 SW 73 E.2'),
(19, 'Swokowski Earl - W', 'Álgebra y Trigonometría con Geometría Analítica', '2da', '8.47', '512.1 SW 73 E.2'),
(20, 'Kreys Ing. Erwin', 'Matemáticas Avanzadas para Ing. Tomo 1', '5ta', '9.94', '519 K 886 E.1'),
(21, 'Kreys Ing. Ewrin', 'Matemáticas Avanzadas para Ing. Tomo 1', '5ta', '9.94', '519 K 886 E.2'),
(22, 'Boylestad Robert ', 'Electrónica Teoría de Circuitos', '4ta', '9.06', '621.38 B 697 E.1'),
(23, 'Boylestad Robert', 'Electrónica Teoría de Circuitos', '4ta', '9.06', '621.38 B 697 E.2'),
(24, 'Mileaf Harry', 'Electricidad Volumen 1', '1era', '6.30', '537 M E.1'),
(25, 'Mileaf Harry', 'Electricidad Volumen 2', '1era', '6.30', '537 M E.2'),
(26, 'Mileaf Harry ', 'Electricidad Volumen 3', '1era', '6.30', '537 M E.3'),
(27, 'Williams Arthur B.', 'circuitos Lógicos y Conversión de A/D tomo 1', '1era', '5.19', '621.3813 2 W 687 E.1'),
(28, 'Wark Kenneh', 'Termodinámica', '4ta', '9.80', '536.7 W 233 E.1'),
(29, 'Wark Kenneth', 'Termodinámica', '4ta', '9.80', '536.7 W 233 E.2'),
(30, 'White - Frank', 'Mecánica de Fluidos', '1era', '7.44', '536.7 W 583 E.1'),
(31, 'White - Frank', 'Mecánica de los Fluidos', '1era', '7.44', '536.7 W 583 E.2'),
(32, 'Horwinz Henry', 'Soldadura', '1era', '11.68', '671.52 H 78 E.1'),
(33, 'Chapman Stephen', '', '1era', '13.77', '621.313 ST 44 E.1'),
(34, 'Blank Leland y Tarquin Anthony', 'Ingenieria Económica', '2da', '8.29', '330.3611 E.1'),
(35, 'Blank Leland y Tarquin Anthony', 'Ingeniería Económica', '2da', '8.29', '330.3611 E.2'),
(36, 'Long Larry', 'Introducción a las Computadoras', '2da', '6.61', '001.64 L 84 E.1'),
(37, 'Long Larry', 'Introducción a las Computadoras', '2da', '6.61', '001.64 L 84 E.2'),
(38, 'Long Larry', 'Introducción a las Computadoras ', '2da', '6.61', '001.64 L 84 E.3'),
(39, 'Long Larry ', 'Introducción a las Computadoras ', '2da', '6.61', '001.64 L 84 E.4'),
(40, 'Long Larry', 'Introducción a las Computadoras', '2da', '6.61', '001.64 L 84 E.5'),
(41, 'Fabrega Jorge y Otros', 'Código de Trabajo', '1era', '23.35', '348.23 M 6J E.1'),
(42, 'Fabrega Jorge y Otros', 'Código de Trabajo', '1era', '23.35', '348.23 M 6J E.2'),
(43, 'Jensen', 'Dibujo y Diseño de Ing.', '1era', '10.00', '604.2 J 453 E.1 B.E.'),
(44, 'Universidad Tecnológica de Panamá', 'Elemento de Mecánica para In. Tomo 1', '1985', '6.50', '531.2 AM 19 E.1'),
(45, 'Universidad Tecnológica de Panamá', 'Elemento de Mecánica para In. Tomo 1', '1985', '6.50', '531.2 AM 19 E.2'),
(46, 'Universidad Tecnológica de Panamá', 'Elemento de Mecánica para In. Tomo 1', '1985', '6.50', '531.2 AM 19 E.3'),
(47, 'Bueche, Frederick', 'Física General', '3era', '7.14', '530 B 86 T E.1'),
(48, 'Shamblin James', 'Investigación de Operaciones', '1era', '7.51', '658.57 SH 17 E.1'),
(49, 'Auner Syney ', 'Introducción a la Metalurgía Física', '2da', '8.43', '669.9 AV 68 E.1'),
(50, 'Auner Syney ', 'Introducción a la Metalurgía Física', '2da', '8.43', '669.9 AV 68 E.2'),
(51, 'Niebel Benjamin', 'Ing. Industrial - Métodos, Tiempo y Movimiento Tomo', '3era', '13.33', '621.8 N 55 E.1 '),
(52, 'Piskunov N. ', 'Cálculo Diferencial e Integral Tomo 1', '5ta', '7.50', '515.33 P 675 E.1'),
(53, 'Piskunov N. ', 'Cálculo Diferencial e Integral Tomo 1', '5ta', '7.50', '515.33 P 675 E.2'),
(54, 'Piskunov N. ', 'Cálculo Diferencial e Integral Tomo 2', '5ta', '7.50', '515.43 P 675 E.1'),
(55, 'Piskunov N. ', 'Cálculo Diferencial e Integral Tomo 2', '5ta', '7.50', '515.43 P 675 E.2'),
(56, 'Leithold Louis', 'Cálculo con Geometría Analítica', '5ta', '15.30', '515 L 536 E.1 B.E'),
(57, 'Senn James', 'Análisis y Diseño de Sistemas de Información ', '1era', '9.26', '001.61 Se 1 E.1'),
(58, 'Trojan Flinn ', 'Materiales de Ingeniería y sus Aplicaciones', '3era', '7.46', '620.11 E.1'),
(59, 'Stahton Williams, Futrell Charles', 'Fundamentos de Mercado Técnica', '3era', '14.48', '658.8 ST 26 E.1 B.E.'),
(60, 'Stahton Williams, Futrell Charles', 'Fundamentos de Mercado Técnica', '3era', '14.48', '658.8 ST 26 E.2 B.E.'),
(61, 'Gieck Kurt', 'Manual de Fórmulas Técnicas', '18va', '4.61', '510 E.1'),
(62, 'Breck Brown, McCowan', 'Química para Ciencia e Ingeniería', '2da', '6.75', '540 B 742 E.1'),
(63, 'Breck Brown, McCowan', 'Química para Ciencia e Ingeniería', '2da', '6.75', '540 B 742 E.2'),
(64, 'Bueche Frederick', 'Física para estudiantes de Ciencia e Ing. Tomo 1', '4ta', '6.25', '530 1378 E.1'),
(65, 'Bueche Frederick', 'Física para estudiantes de Ciencia e Ing. Tomo 1', '4ta', '6.25', '530 1378 E.2'),
(66, 'Spiegel Murria', 'Ecuaciones Diferenciales', '1era', '8.50', '515.35 SP 43 E.1'),
(67, 'Spiegel Murria', 'Ecuaciones Diferenciales', '1era', '8.50', '515.35 SP 43 E.2'),
(68, 'Bavaresco Aura', 'Las Técnicas de la Investigación', '6ta', '4.57', '001.42 P 833 E.1'),
(69, 'Beer - Jhonson', 'Mecánica Vectoral para Ing. - Dinámica', '5ta', '7.80', '620.104 B 392 E.1'),
(70, 'Beer - Jhonson', 'Mecánica Vectoral para Ing. - Dinámica', '5ta', '7.80', '620.104 B 392 E.2'),
(71, 'Morris, Bridge', 'Teoría de Aprendizaje para Maestros', '1era', '8.92', '370.15 B 483 E.1'),
(72, 'Morris, Bridge', 'Teoría de Aprendizaje para Maestros', '1era', '8.92', '370.15 B 483 E.2'),
(73, 'Kramer Arthur D.', 'Fundamentos de Matemáticas', '1era', '5.44', '510 K 86 E.1'),
(74, 'Kramer Arthur D.', 'Fundamentos de Matemáticas', '1era', '5.44', '510 K 86 E.2'),
(75, 'Kramer Arthur D.', 'Fundamentos de Matemáticas', '1era', '5.44', '510 K 86 E.3'),
(76, 'Kramer Arthur D.', 'Fundamentos de Matemáticas', '1era', '5.44', '510 K 86 E.4'),
(77, 'Beer - Jhonson', 'Mecánica Vectorial para Ing. Estática', '5ta', '7.99', '620.103 D 392 E.1'),
(78, 'Beer - Jhonson', 'Mecánica Vectorial para Ing. Estática', '5ta', '7.99', '620.103 D 392 E.2'),
(79, 'Beer - Jhonson', 'Mecánica Vectorial para Ing. Estática', '5ta', '7.99', '620.103 D 392 E.3'),
(80, 'Beer - Jhonson', 'Mecánica Vectorial para Ing. Estática', '5ta', '7.99', '620.103 D 392 E.4'),
(81, 'Bueche, Frederick', 'Física General', '3era', '7.14', '530 B 86 T E.2'),
(82, 'Pender, James', 'Soldadura', '3era', '6.92', '671.52 P 373 E.1'),
(83, 'L. S Barbrow', 'Análisis de Circuitos Eléctricos', '1era', '10.46', '621.3192 B 63 E.1'),
(84, 'Morris Clemente y Otros', 'Economía', '3era', '5.27', '338.5 C 45 E. 1'),
(85, 'Selby, Peter', 'Geometría y Trigonometría', '1era', '7.85', '516 SC 48 E.1'),
(86, 'Selby, Peter', 'Geometría y Trigonometría', '1era', '7.85', '516 SC 48 E.2'),
(87, 'Gerrish, Howard', 'Experimentos de Electricidad', '1era', '5.19', '537 G 321 E.1'),
(88, 'Gerrish, Howard', 'Experimentos de Electricidad', '1era', '5.19', '537 G 321 E.2'),
(89, NULL, 'Manual de Tratamiento de Aguas Negras Dep. de Sanidad de NY', '1era', '4.05', '627 D 44 E.1'),
(90, NULL, 'Manual de Tratamiento de Aguas Negras Dep. de Sanidad de NY', '1era', '4.05', '627 D 44 E.2'),
(91, NULL, 'Manual de Tratamiento de Aguas Negras Dep. de Sanidad de NY', '1era', '4.89', '628.3 D 441 E.1'),
(92, 'Granet, Irving', 'Termodinámica', '3era', '11.25', '536.7 G 767 E.1'),
(93, 'Granet, Irving', 'Termodinámica', '3era', '11.25', '536.7 G 767 E.2'),
(94, 'Gingrich - Harold', 'Máquinas Eléctricas', '1era', '6.07', '621.310 G 433 E.1'),
(95, 'Gingrich - Harold', 'Máquinas Eléctricas', '1era', '6.07', '621.310 G 433 E.2'),
(96, 'Goldstein Larry y Otros', 'Cálculo y sus Aplicaciones', '4ta', '8.89', '515 G 578 E.1'),
(97, 'McKelvey John', 'Física para Ciencia e Ing.', '1era', '8.24', '530 MC 193 E.1'),
(98, 'McKelvey John', 'Física para Ciencia e Ing.', '1era', '8.24', '530 MC 193 E.2'),
(99, 'Kibbe Richard', 'Manual de Fresadora', '1era', '4.73', '621.9 K 533 E.1'),
(100, 'Hoffman, Eduard', 'Instrumento Básico de Medición', '1era', '4.63', '620.0044 H 675 E.1'),
(101, 'Murdoch, D, C', 'Geometría Analítica', '1era', '5.65', '604.2 G 364 E.1'),
(102, 'Osgood William ', 'Métodos de Planificación de Negocios', '1era', '4.51', '658.04 OS 3'),
(103, 'Oficina Interamericana de Trabajo', 'Introducción al Estudio del Trabajo', '1era', '18.50', '658.34 OT 13 E.1'),
(104, 'Giesecke Frederick', 'Dibujo Técnico', '6ta', '19.94', '604.2 SP 33 E.3'),
(105, 'Giesecke Frederick', 'Dibujo Técnico', '6ta', '19.94', '604.2 SP 33 E.4'),
(106, 'Kreuszig - Erwin', 'Matemática Avanzada para Ing. Tomo 2', '5ta', '9.94', '519 K 886 E.1'),
(107, 'Kreuszig - Erwin', 'Matemática Avanzada para Ing. Tomo 2', '5ta', '9.94', '519 K 886 E.2'),
(108, 'Larson Rolan E. y Otros', 'Cálculo y Geometría Analítica', '1989', '9.82', '515.15 L 329 E.1'),
(109, 'Edwards Jr', 'Ecuaciones Diferenciales Elem. con Aplicaciones', '1986', '7.84', '515.35 ED 92 E.1'),
(110, 'Deprtamento de Matemáticas', 'Fundamento de Cálculo Diferencial e Integral', '1993', '7.35', '515 SO 45 E.1'),
(111, 'Deprtamento de Matemáticas', 'Fundamento de Cálculo Diferencial e Integral', '1993', '7.35', '515 SO 45 E.2'),
(112, 'Grosman Stanley', 'Álgebra Lineal', '1991', '10.26', '512.5 G 914 E.1'),
(113, 'Beck, Brown y McConar', 'Química para Ciencias e Ing.', '1987', '6.75', '540 B 742 E.2'),
(114, 'Murray Spigel', 'Análisis Vectorial', '1969', '10.00', '515.63 SP 43 E.1'),
(115, 'Jr. Ayres Frank', 'Ecuaciones Diferenciales', '1969', '10.00', NULL),
(116, 'Grosman Stanley', 'Álgebra Lineal', '1991', '8.00', '512.5 G 914 E.2'),
(117, 'Howard John', 'Física para Ciencias e Ing.', '4ta', '6.25', '530 MC 193 E.1'),
(118, NULL, 'Manual de Tratamiento de Aguas Negras Dep. de Sanidad de NY', '1era', '4.89', '628.3 D 441 E.2'),
(119, NULL, 'Sistemas de Microondas MO-B1', NULL, NULL, '621.380413 IN 1 E.1'),
(120, 'Bruce, Cohen', 'Introducción a la Sociología', '1era', NULL, '516.3 K567 E.1'),
(121, 'Griossman Stanley', 'Álgebra Lineal', '2da', NULL, '512.33 G 914 E.3'),
(122, 'Piskunovn', 'Cálculo Diferencial e Integral Tomo 1', '5ta', '7.50', '515 P 675 E.3'),
(123, 'Bueche Frederick', 'Física para estudiantes de Ciencias e Ing. Tomo 1', '4ta', '6.25', '530 1386 E.3'),
(124, 'Kndle Joseph', 'Geometría Analítica', '1era', NULL, NULL),
(125, 'Murray Spigel', 'Manual de Fórmulas y Tablas Matemáticas', '1era', '11.95', '621.31 4E 1EO E.1'),
(126, 'Miller Irwin', 'Probabilidad y Estadística para Ingenieros', '4ta', '15.02', '519.2 M 632 E.1'),
(127, 'Senn james', 'Análisis y Diseño de Sistemas de Información', '2da', '10.46', '001.61 Se 1ª E.2'),
(128, 'Arnold Chistopher', 'Configuración y Diseño Sísmico de Edificios', '2da', '10.36', '690 AR 1'),
(129, 'Martín Francisco', 'Clipper 5: Referencia Rápida', '1991', '18.32', '001.6425 M 337'),
(130, 'García José J.', 'Clipper 5.2 A su Alcance', '2da', '18.41', '001.6425 G 165 E.1'),
(131, 'Beer, Ferdinand', 'Mecánica Vectorial para Ing. Estática', '5ta', '7.99', '620.103 B 392 E.5'),
(132, 'Maskew, Gordon', 'Purificación de Aguas y Tratamiento de Aguas Residuales v-2', '9na', '23.76', '628.1 F 15 E.1'),
(133, 'Wright Paul', 'Ingeniería de Carreteras', '1era', '25.13', '625.7 W 935 E.1'),
(134, 'Morrison Tirso', 'Dicc. de Sinónimos y Antónimos', '1era', '21.16', '463.31 M 83 E.1'),
(135, 'Alcalde Eduardo', 'Introducción a los Sistemas Operativos', '1992', '15.55', '001.6424 AL 16 E.1'),
(136, 'Schuman Hans ', 'Turbo Pascal', '1995', '15.56', '001.6424 SCH 86 E.1'),
(137, 'Freedman Myuch A. ', 'Control de la Contaminación del Agua y del Aire', '1era', '6.91', '628.5 F 875 E.1'),
(138, 'Boiles, Josephe', 'Diseño de Acero Estructural', '1era 1984', '14.91', '624.18 B 68 E.1'),
(139, 'Silversten Albert', 'Comunicación Humana', '1era 1985', '7.14', '302.2 SI 38 E.1'),
(140, 'White', 'Introducción a los Conceptos de Análisis y Diseño Tomo 1', '1era 1976 ', '6.11', '624.171 W 582 E.1'),
(141, 'Rosemberg', 'Reparación de Motores Tomo 1', '7ma', '27.62', '621.313 R 723 E.1'),
(142, 'Rosemberg - Robert', 'Reparación de Motores Tomo 2', '7ma', '27.62', '621.313 R 723 E.1'),
(143, 'Lopez Leobando', 'Programación Estructurada', '1era', '12.22', '001.6423 L 871 E.1'),
(144, 'While - Tercel y Sexmeth', 'Estructura Estáticamente Indeterminada', '1era', '6.37', '624.171 W 582 v.2 E.1'),
(145, 'Gottifriend, Byron', 'Programación en C', '1era', '10.07', '001.142 4 E G 713'),
(146, 'Harold Koontz, Keinz Weihric', 'Admon - Una Perspectiva Global', '10ma', '15.79', '658.04 K 037 E.1'),
(147, 'Harold Koontz, Keinz Weihric', 'Admon - Una Perspectiva Global', '10ma', '15.79', '658.04 K 037 E.2'),
(148, 'Glieck, Hurt', 'Manual de Fórmulas Técnicas', '18va', '4.61', '510 E.2'),
(149, 'McCormac', 'Diseño de Estructuras de Acero', '1era', '15.90', '624.18 M 136 E.1'),
(150, 'Black - Earl ', 'Dibujo Técnico', '1era', NULL, '604.2 B 561 E.1'),
(151, 'Timings RL.', 'Tecnología de la Fabricación', '1era', '6.79', '621.9 T 484 E.1'),
(152, 'Geyer - Fair', 'Purificación - Trat- y Remoción de Aguas Residuales v.2', '1996', '15.79', '628.1 F 15 E.1'),
(153, 'Hibbler C. ', 'Ing. Mec. Dinámica', '7ma', '14.79', '620.104 H 521 E.3'),
(154, 'Montes de OCa Miguel', 'Topografía', '4ta', '11.62', '526.9 M 765 E.1'),
(155, 'Hackett Robbins', 'Manual de Seguridad y Primeros Auxilios', '1era', '10.17', '350.1622 H 116 E.1'),
(156, 'Spiegel Murria', 'Manual de Fórmulas y Tablas Matemáticas', '1era', '9.81', '510.021 SP 43 E.2'),
(157, 'Hibbler R. C.', 'Ing. Mec. Estática', '7ma', '10.22', '620.103 H 521 E.1'),
(158, 'Spencer Dygdon', 'Dibujo Técnico Básico', '1era', '16.11', '604.2 SP 33 E.1'),
(159, 'McCormac Elling', 'Análisis de Estructuras', '1era', '18.81', '624.171 M 134 E.3'),
(160, 'Stoner Freeman Gilbert', 'Administración', '6ta', '17.18', '658.04 ST 71 E.1'),
(161, 'Timo Shenko Young', 'Elementos de Resistencia de Materiales', '1era', '9.32', '620.112 T 486 E.1'),
(162, 'Baca Urbina Gabriel', 'Evaluación de Proyectos', '3era', '17.53', '658.404 B 12 E.1'),
(163, 'GottFried Byron ', 'Programación Básica', '2da', '10.95', '001.642 4 B G 712 B E.1'),
(164, 'White - Gergely - Sexsmith', 'Int. a los Conceptos de Análisis y Diseños Vol I', '1990', '6.11', '624.171 W 582 E.3'),
(165, 'Larson Hostler Edwards', 'Cálculo 1', '5ta', '13.59', '515.15 L 329'),
(166, 'Rigola Lapeña Miguel', 'Tratamiento de Aguas Industriales', '1989', '13.01', '628.16 R 449 E.1'),
(167, 'Molera Sola Pere', 'Tratamiento Térmico de los Metales', '1991', '13.39', '669 M 732 E.1'),
(168, 'Oficina Internacional de trabajo ', 'Seguridad, Salud y Condiciones de Trabajo', '1988', '5.64', '614.83 OF 13 E.1'),
(169, 'Acevedo Hector', 'Dibujo Técnico Básico', '7ma', NULL, '604.02 A 37 E.1 B.E.'),
(170, 'Acevedo Hector', 'Dibujo Técnico Básico', '7ma', NULL, '604.02 A 37 E.2 B.E.'),
(171, 'Acevedo Hector', 'Dibujo Técnico Básico', '7ma', NULL, '604.02 A 37 E.3 B.E.'),
(172, 'Acevedo Hector', 'Dibujo Técnico Básico', '7ma', NULL, '604.02 A 37 E.4 B.E.'),
(173, 'Acevedo Hector', 'Dibujo Técnico Básico', '7ma', NULL, '604.02 A 37 E.5 B.E.'),
(174, 'Portland Cement Asociation', 'Fabricación de Concretos y Acabados', '1991', '5.11', '624.1834 P 837 E.1'),
(175, 'Murray Spigel', 'Análisis Vectorial', '1969', '10.00', '515.63 SP 43 E.2'),
(176, 'Joyanes Aguilar Luis', 'Fundamentos de Programación', '2da', '22.69', '001.642 3 AG 93a E.1'),
(177, 'Joyanes Aguilar Luis', 'Fundamentos de Programación', '2da', '22.69', '001.642 3 AG 93a E.2'),
(178, 'William Hayt, Jr. ', 'Teoría Electromagnética', '7ma', NULL, '621.34 H 334 E.1'),
(179, 'Beer, Ferdinando ', 'Mecánica Vectorial para Ing. Estática', '6ta', NULL, '620.103 B 392 E.6'),
(180, 'García Polayo y Gross - Graw', 'Diccionario English - Spanish', '1981', NULL, 'R 423 G 165 E.1'),
(181, 'Chamberlain, Raúl', 'Diccionario Comercial Inglés-Español-Español-Inglés', '1981', NULL, NULL),
(182, 'Martín, Rafael', 'Matemática Química', '1997', NULL, '540 M 365 E.1'),
(183, 'Tippens, Paul', 'Física Conceptos y Aplicaciones', '3era', NULL, '530 T 499 E.1'),
(184, 'Shackelford, James', 'Ciencia de Materiales para Ingenieros', '3era', NULL, '620.112 SH 11 E.1'),
(185, 'Hayt, Kemmerly y Durbin', 'Análisis de Circuitos en Ingeniería', '7ma', NULL, '620.104 H 334 2007 B. EST E.1'),
(186, 'Raymond A. Serway', 'Física para Ciencias e Ingenierías', '6ta', NULL, '530 Se69 V.I 2005 B. EST E.1'),
(187, 'Raymond A. Serway', 'Física para Ciencias e Ingenierías', '6ta', NULL, '530 Se69 V.I 2005 B. EST E.2'),
(188, 'Glyn James', 'Matemáticas Avanzadas para Ingeniería', '2da', NULL, '519 J 233 2002 B. EST E.1'),
(189, 'Ferdinand P. Beer', 'Mecánica Vectorial para Ingenieros - Dinámica', '8va', NULL, '620.104 H 521 2007 B. EST E.4'),
(190, 'Ferdinand P. Beer', 'Mecánica Vectorial para Ingenieros - Estática', '8va', NULL, '620.104 B 392 B. EST E.7'),
(191, 'Robert L. Mott', 'Mecánica de Fluido', '6ta', NULL, '620.106 M 858 E.1'),
(192, 'Nagle, Saff, Snider', 'Ecuaciones Diferenciales', '4ta', NULL, '515.35 N 131 2005 B. EST. E.1'),
(193, 'Nagle, Saff, Snider', 'Ecuaciones Diferenciales', '3era', NULL, '515.35 N 136 2001 B. EST. E.1'),
(194, 'Russel C. Hibbeler', 'Dinámica', '10ma', NULL, '620.104 H 521 2004 B. EST. E.5'),
(195, 'Russel C. Hibbeler', 'Mecánica Vectorial para Ingenieros - Estática', '10ma', NULL, '620.103 H 521 2004 B. EST. E.2'),
(196, 'Leithol', 'El Cálculo', '7ma', NULL, '515 Zi65 Reim 2008 B.EST E.1'),
(197, 'Zill y Cullen', 'Ecuaciones Diferenciales', '6ta', '80.25', '515.35 Zi65 2007 B. EST E.1'),
(198, 'Larson y Otros', 'Cálculo', '8va', NULL, '515.15 L329 V.I B. EST. VOL. 1 E.2'),
(199, 'Larson y Otros', 'Cálculo', '8va', NULL, '515.15 L329 V.II B. EST. VOL. 1 E.3'),
(200, 'Nelson y McCormac', 'Análisis de Estructuras', '3era', NULL, '624.171 M 134 B. EST E.4'),
(201, 'Deitel', 'Cómo Programar C', '4ta', NULL, '001.6424 D 368 2004 B. EST. E.1'),
(202, 'McCormac', 'Diseño de Concreto Reforzado', '5ta', NULL, '624.1834 Pa22 E.1'),
(203, 'Giles, Evett y Liu', 'Mecánica de los Fluidos e Hidráulica', '3era', NULL, '620.106 G 392 1994 B. EST E.1'),
(204, 'Sears, Zemansky y Otros', 'Física Universitaria', '11va', '95.23', '530 Se17 2005 V2 B. EST E.1'),
(205, 'Sears, Zemansky y Otros', 'Física Universitaria', NULL, '95.23', '530.1 F 538 2004 B. EST'),
(206, 'Stanley I. Grossman', 'Álgebra Lineal', '6ta', '19.58', '512.5 G 914 2008 B. EST E.3'),
(207, 'R.C. Hibbeler', 'Mecánica de Materiales', '6ta', '22.54', '620.112 H 521 2006 B. EST E.1'),
(208, 'Purcell, Varberg y Rigdon', 'Cálculo Diferencial e Integral', '9na', '60.00', '515 P9711 2007 B. EST. E.1'),
(209, 'Gottfried, Byron', 'Programación en C', '2da', NULL, '001.642 4C G 713 2005 B.E. E.1'),
(210, 'Shigley y Otros', 'Diseño en Ingeniería Mecánica', '5ta', NULL, '620.004 Sh 61 1990 2005 B.E. E.1'),
(211, 'Ferdinand P. Beer', 'Mecánica Vectorial para Ingenieros - Estática', '6ta', '22.26', '620.103 B392 B. EST. E.6'),
(212, 'Andrew S. Tanenbaum', 'Organización de Computadoras un Enfoque Estructurado', '2da', NULL, '001.642 T 155 E.1'),
(213, 'Milton Gussow', 'Fundamentos de Electricidad', NULL, NULL, '621.3 G 977 E.1'),
(214, 'John P. Hayes', 'Diseño de Sistemas Digitales y Microprocesadores', '1era', NULL, '621.381958 H 326 E.1'),
(215, 'Douglas C. Giancoli', 'Física General', '1era', NULL, '530 G 348 VI E.1'),
(216, 'Lloyd Temes', 'Comunicación Electrónica', '1era', NULL, '621.38 T 24ª E.1'),
(217, 'Raymond A. Serway', 'Física', '3era', NULL, '530 Se69 V2 E.2'),
(218, 'Frederick J. Beuche', 'Física para estudiantes de Ciencias en Ingenierías', '4ta', '3000', '530 1386 V.I E.4'),
(219, 'Francisco Ruiz Vassallo', 'Manual de Antenas Receptoras para TV y FM', '1era', NULL, '621.280 283 R 321 E.1'),
(220, 'Steven C. Chapra y Otros', 'Métodos Numéricos para Ingenieros', '5ta', NULL, '519 C 885 E.1'),
(221, 'Gerald Karp', 'Biología Celular y Molecular Conceptos y Experimentos', '4ta', NULL, '574.88 K 148 E.1'),
(222, 'Frederick J. Bueche', 'Física para estudiantes de Ciencias e Ingenierías', '4ta', '30.00', '530 1386 VII E.1'),
(223, 'Charles A Gallagher, Hugh J Watson', 'Métodos Cuantitativos para la Toma de Decisiones en Administración', '1era', NULL, '658.151 G 131m E.1 B.E.'),
(224, 'Sean Covey', 'Los 7 Hábitos de los Adolescentes Altamente Efectivos', '1era', NULL, '158.0835 C 688 E.1'),
(225, 'Douglas C. Giancoli', 'Física General', '1era', NULL, '530 G 348 VII E.1'),
(226, 'Cable & Wireless', 'Emplame y Cierre de Mangas', '1era', NULL, '621.3 C 112 E.1'),
(227, 'Brown Theodore y Otros', 'Química - La Ciencia Central', '9na', NULL, '540 Q41 E.1'),
(228, 'Sears, Zemansky y Otros', 'Física Universitaria V2', '11va', '95.23', '530 Se17 2005 V2 B. EST E.2'),
(229, 'McCormac Jack', 'Diseño de Estructura de Acero', '1era', '15.90', '624.18 M 136 E.1'),
(230, 'Reitherman Arnold', 'Configuración y Diseño Sísmico de Edificios', '1era', NULL, '690 ARL E.2'),
(231, 'Sanders Donald H.', 'Informática Presente y Futuro', '3era', NULL, '001.6 Sa 56 d 1990 E.1'),
(232, 'Streeter Victor, Wylie E. Benjamin', 'Mecánica de los Fluidos', '8va', '22.63', '532 St 82 E.1'),
(233, 'Giles, Evett y Liu', 'Mecánica de los Fluidos e Hidraúlica', '3era', '22.71', '620.106 G 392 1994 B. EST E.2'),
(234, 'Sears - Zemansky', 'Física Universitaria Volumen 1', 'XII', '95.23', '530.1 F 538 2008 E.2 V.1 B.E.'),
(235, 'Sears - Zemansky', 'Física Universitaria Volumen 2', 'XII', '95.23', '530 Se17 2005 V.2 E.3 B.E.'),
(236, 'Sears - Zemansky', 'Física Universitaria Volumen 2', 'XII', '95.23', '530 Se17 2009 V.2 E.4 B.E.'),
(237, 'Sears - Zemansky', 'Física Universitaria Volumen 2', 'XII', '95.23', '530 Se17 2009 V.2 E.5 B.E.'),
(238, 'Dennis G. Zill', 'Ecuaciones Diferenciales. Matemáticas Avanzadas para Ing. Vol. 1', 'III', '80.25', '515.35 Z 651 2008 E.1 B.E.'),
(239, 'Dennis G. Zill', 'Ecuaciones Diferenciales. Matemáticas Avanzadas para Ing. Vol. 1', 'III', '80.25', '515.35 Z 651 2008 E.2 B.E.'),
(240, 'Dennis G. Zill', 'Ecuaciones Diferenciales. Matemáticas Avanzadas para Ing. Vol. 1', 'III', '80.25', '515.35 Z 651 2008 E.3 B.E.'),
(241, 'Yunes Cengel y Michael Boles', 'Termodinámica', 'VII', '95.23', '536.7 C 332 2003 E.1'),
(242, 'Murray R. Spiegel y Seymour Lipschutz', 'Fórmulas y Tablas de Matemática Aplicada', 'III', '52.23', '510.021 SP 43 2005 E.1 B.E.'),
(243, 'Kenneth M. Leet Chia Ming Uang', 'Fundamentos de Análisis Estructural', 'II', '63.13', '624.171 L5138 2006 E.1 B.E.'),
(244, 'Louis Leithold', 'El Cálculo', 'VII', '90.95', '515 L 1998 E.2'),
(245, 'Robert Boylestad', 'Introducción al Análisis de Circuitos', 'XII', '73.83', '621.3192 B697 2011 E.1'),
(246, 'Barry Render, Ralph Stair y Michael Hanna', 'Métodos Cuantitativos para los Negocios', 'IX', '72.76', '658.403 R2926 2006 E.1 B.E.'),
(247, 'Glyn James', 'Matemáticas Avanzadas para Ingeniería', 'II', '102.72', '519 J2311 2002 B.E. E.2'),
(248, 'Ferdinand Beer, Russell Johnston Jr., Phillip Corwell', 'Mecánica Vectorial para Ingenieros - Dinámica', '9na', '62.06', '621.01 B392 2012 E.8'),
(249, 'Rees Paul y Otros', 'Álgebra', 'X', '40.00', '512 R25911 2000 B.E. E.1'),
(250, 'Ambulo Leoncio', 'Elementos de Mecánica', 'I', '6.50', '531.2 AM 19 1986 E.6'),
(251, 'Rees Paul y Otros', 'Álgebra', 'IV', '40.00', '512 R25911 2000 B.E. E.2'),
(252, 'Burns Ralph', 'Fundamentos de Química', 'II', '30.00', '540 B937 1996 B.E. E.1'),
(253, 'Sphr Wayne Mondy y Otros', 'Administración de Recursos Humanos', 'IX', '40.00', '658.3 M745 2005 B.E. E.1'),
(254, 'Beer Ferdinand y Otros', 'Mecánica Vectorial para Ingenieros - Estática', 'VI', '40.00', '621.01 B392 2001 B.E. E.10'),
(255, 'Ferdinand Beer, Russell Johnston Jr., Phillip Corwell', 'Mecánica Vectorial para Ingenieros - Dinámica', 'VI', '62.06', '621.01 B392 2012 E.6'),
(256, 'Ferdinand Beer, Russell Johnston Jr., Phillip Corwell', 'Mecánica Vectorial para Ingenieros - Dinámica', 'VI', '62.06', '621.01 B392 2012 E.7'),
(257, 'Ferdinand Beer, Russell Johnston Jr., Phillip Corwell', 'Mecánica Vectorial para Ingenieros - Estática', 'VI', '40.00', '621.01 B392 2001 B.E. E.2'),
(258, 'Hayt William Y Kemmerly, Nm Jack', 'Análisis de Circuitos en Ingeniería', 'VI', '40.00', '621.304 H 334 2004 B.E. E.2'),
(259, 'Zears - Zemansky ', 'Física Universitaria Volumen 1', 'XI', '95.23', '530.1 F538 2005 E.1 V.1 B.E.'),
(260, 'Nilson Arthur', 'Diseño de Estructuras de Concreto', 'XII', '40.00', '624.1834 N599 1999 B.E. E.1'),
(261, 'Grupo Editorial Océano', 'El Mundo de la Química', 'I', '20.00', '540 Q419 1998 B.E. E.1'),
(262, 'Ocampo Glafira y Otros', 'Prácticas de Química 3-4', 'VI', '20.00', '542.1 P8811 2007 B. EST. E.2'),
(263, 'Purcell, Varberg', 'Cálculo Diferencial e Integral', 'VI', '60.00', '515 P9711 2007 B. EST. E.2'),
(264, 'Dennis G. Zill', 'Ecuaciones Diferenciales. Matemáticas Avanzadas para Ing. Vol. 1', 'V', '80.25', '515.35076 Z65 2002 E.2 B.E.'),
(265, 'Hibbeler R.C.', 'Mecánica de Materiales', 'III', '45.00', '620.1123 H521 1998 B.E. E.1'),
(266, 'Hibbeler R.C.', 'Mecánica de Materiales', 'III', '45.00', '620.1123 H521 1999 B.E. E.2'),
(267, 'Dickson T.R.', 'Introducción a la Química', 'V', '25.00', '577.14 D56 1995 B.E. E.1'),
(268, 'Mizrahi Abe y Otros', 'Calculus Analytic Geometry', 'III', '70.00', '515 M6995 1990 B.E. E.1'),
(269, 'Lind Douglas y Otros', 'Estadística Aplicada a los Negocios y a la Economía', 'XII', '40.00', '515 M6995 1990 B.E. E.1'),
(270, 'Dorin Henry y Otros', 'Chemistry The Study of Matter', 'IV', '35.00', '540 D734 1992 B.E. E.1'),
(271, 'Potter Merle y Otros', 'Mecánica de Fluidos', 'III', '40.00', '532 P853 1998 B.E. E.1'),
(272, 'Dennis G. Zill', 'Ecuaciones Diferenciales. Matemáticas Avanzadas para Ing. Vol. 1', 'V', '80.25', '515.35076 Z65 2002 E.3 B.E.'),
(273, '', 'Código de Comercio', NULL, '30.00', '346.7287 P191 1997 B.E. E.1'),
(274, 'Grupo Océano', 'Diccionario de Sinónimos y Antónimos', 'I', '50.00', '463 Oc2 2003 B.E. E.1'),
(275, 'Purcell Edwin y Varbeg Dale', 'Cálculo con Geometría Analítica', 'IV', '60.00', '515.15 P9711 1987 B.E. E.1'),
(276, 'Grupo Océano', 'Diccionario Enciclopédico', 'I', '50.00', '463 Oc2 S/F B.E. E.2'),
(277, 'Manrique José y Cardenas Rafael', 'Termodinámica', 'I', '20.00', '536.7 M317 1981 B.E. E.1'),
(278, 'Piskinovn', 'Cálculo Diferencial e Integral Tomo 1', '5ta', '7.50', '515 P 675 E.4'),
(279, 'Sean Covey', 'Los 7 Hábitos de la Gente Altamente Efectiva', '1era', '20.00', '158.0835 C688 B.E. E.2'),
(280, 'Liu Jhon y Otros', 'Manual de Fórmulas', NULL, '15.00', '510.212 SP 43 1991 E.1'),
(281, 'Fuentes Manuel', 'Guía de Laboratorio de Física I', '1era', '10.00', '530 G 9401 2012 E.1'),
(282, 'Maxwell John', 'Las 21 Leyes Irrefutables del Liderazgo', NULL, '10.00', '658.4092 M 4511 1998 E.1'),
(283, 'Nandwani Shyam', 'El Horno Solar', '1era', '10.00', '333.7923 N 1539 1987 E.1'),
(284, 'Borges Nidia y Tejeira Wilfredo', 'Química General I', '1era', '10.00', '540 B 64487 2008 E.1'),
(285, 'De Ortega Zunilda y Otros', 'Trigonometría', '1era', '10.00', '516.24 Or 82 2001.2 E.1'),
(286, NULL, 'Derecho Laboral Copia', NULL, '10.00', '340 R 6183 2008 E.1'),
(287, 'James Glyn', 'Matemáticas Avanzadas para Ingeniería', '2da', NULL, '519 J2311 2002 E.2 B.E.'),
(288, 'Spiegel Murray y Otros', 'Fórmulas y Tablas de Matemática Aplicada', '3era', NULL, '510.212 SP43 2012 E.1 B.E.'),
(289, 'Hamdy A. Taha', 'Investigación de Operaciones', '7ma', '30.90', '658.57 T13 2004 E.1 B.E.'),
(290, 'Charles Bonini y Otros', 'Análisis Cuantitativo para Negocios', '9na', '31.42', '519.72 B641 1999 E.1 B.E.'),
(291, 'Euclides Samaniego', 'Sistemas Basados en el Conocimiento', '1era', NULL, '006.43 Sa42 {SF} E.1'),
(292, 'C.H. Edwards - Jr. David Peni', 'Ecuaciones Diferenciales Elementales', '3era', NULL, '515.34 ED 95 E.1'),
(293, 'Beer - Johnstin', 'Mecánica Vectorial para Ingenieros - Dinámica', '6ta', NULL, '621.104 B392 1999 E.7'),
(294, 'Mansfield - Antonakos', 'Programación Estructurada en C', '1era', NULL, '005.144 B392 1999 E.7'),
(295, 'Euclides Samaniego', 'Sistemas Basados en el Conocimiento', '1era', NULL, '006.33 Sa42 {SF} E.2'),
(296, 'Beer - Johnstin', 'Mecánica Vectorial para Ingenieros', '6ta', NULL, '621.104 B392 1999 E.6'),
(297, 'F. Navez', 'Práctica del Motor Diesel', '3era', NULL, '629.2509 N229 1965 E.1'),
(298, 'Jorge Dias de Deus', 'Introducción a la Física', '2da', NULL, '530 D5431 2001 E.1'),
(299, 'Sears - Zemansky', 'Física Universitaria Volumen 2', 'XIII', '95.23', '530.1 Y841 2013 V.1 E.1 B.E.'),
(300, 'Purcell - Varberg - Rigdon', NULL, '9na', NULL, '515 P971 2007 E.1'),
(301, 'Brown, Lemay y Otros', 'Química, La Ciencia Central', '11era', NULL, '540 Q19 E.1'),
(302, 'Raymond A. Serway', 'Fundamentos de Física', '8va', NULL, '530 Se69 2010 T.1. E.1'),
(303, 'Young Freedman, Sears Zemansky', 'Física Universitaria Volumen 1', '11era', NULL, '530.1 F538 2004 T.1 E.2'),
(304, 'Young Freedman, Sears Zemansky', 'Física Universitaria Volumen 1', '11era', NULL, '530.1 F538 2004 T.1 E.1'),
(305, 'Fuentes Manuel', 'Guía de Laboratorio de Física I', '1era', '10.00', '530 G 9401 2012 E.1'),
(306, 'Fuentes Manuel', 'Guía de Laboratorio de Física II', '1era', '10.00', '540 F5399 2012 T.2 E.1'),
(307, 'Fuentes Manuel', 'Guía de Laboratorio de Física II', '1era', '10.00', '540 F5399 2012 T.2 E.2'),
(308, 'Tejeira, Borges y Otros', 'Manual de Laboratorio de Química General para Ing.', '1era', '10.00', '540 M3191 S/F B.E. E.1'),
(309, 'Borges, Tejeira', 'Folleto de Laboratorio, Química General I', '1era', '10.00', '540 B64487 2008 E.1'),
(310, 'Le Maistre, Lewis y Sharpe', 'World View', '1era', NULL, '428'),
(311, 'Acosta, Jorge', 'Química 10, Práctica y Laboratorio', '1era', NULL, '540 Ac72 S/F E.1 B.E.'),
(312, 'Edwards Jr.', 'Ecuaciones Diferenciales Elem. con Aplicaciones', '1994', '7.84', '515.35 ED 92 E.2'),
(313, 'Zill y Cullen', 'Ecuaciones Diferenciales', '6ta', '80.25', '515.35 Z65 2006 B. EST. E.1'),
(314, 'Burgoa, Lydia y Marrone, Pedro', 'Olimpiadas de Matemáticas', '1era', NULL, '510.7 B915 2003 E.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambio_residencia`
--

CREATE TABLE `cambio_residencia` (
  `id_cambio_residencia` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `direccion` varchar(85) DEFAULT NULL,
  `tiempo_residencia` int(11) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `residente_id_residente` int(11) NOT NULL,
  `tipo_vivienda_id_tipo_vivienda` int(11) NOT NULL,
  `tendencia_id_tendencia` int(11) NOT NULL,
  `costo` float DEFAULT NULL,
  `condicion_fisica` varchar(85) DEFAULT NULL,
  `facilidad_id_facilidad` int(11) NOT NULL,
  `otra_facilidad` varchar(45) DEFAULT NULL,
  `comentario` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_carrera` int(11) NOT NULL,
  `facultad_id_facultad` int(11) NOT NULL,
  `Carrera` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `facultad_id_facultad`, `Carrera`) VALUES
(1, 1, 'Lic. en Ing. de Sistemas de Información'),
(2, 1, 'Lic. en Ing. de Sistemas y Computación'),
(3, 1, 'Lic. en Desarrollo de Software'),
(4, 1, 'Lic. en Redes Informáticas'),
(5, 1, 'Lic. en Informática Aplicada a la Educación'),
(6, 1, 'Técnico en Informática para la Gestión Empresarial'),
(7, 2, 'Lic. en Ing. Indutrial'),
(8, 2, 'Lic. en Ing. Mecánica Industrial'),
(9, 2, 'Lic. en Recursos Humanos y Gestión de la Producción'),
(10, 2, 'Lic. en Mercadeo y Comercio Internacional'),
(11, 2, 'Lic. en Gestión Administrativa'),
(12, 2, 'Lic. en Gestión de la Productividad Industrial'),
(13, 2, 'Lic. en Logística y Transporte Multimodal'),
(14, 3, 'Lic. en Ing. Ambiental'),
(15, 3, 'Lic. en Ing. Civil'),
(16, 3, 'Lic. en Ing. Marítima y Portuaria'),
(17, 3, 'Lic. en Edificaciones'),
(18, 3, 'Lic. en Saneamiento y Ambiente'),
(19, 3, 'Lic. en Topográfica'),
(20, 4, 'Lic. en Comunicación Ejecutiva Bilingüe'),
(21, 5, 'Lic. en Ing. Eléctrica y Electrónica'),
(22, 5, 'Lic. en Ing. Electromecánica'),
(23, 5, 'Lic. en Ing. Electrónica y Telecomunicaciones'),
(24, 5, 'Lic. en Electrónica y Sistemas de Comunicación'),
(25, 5, 'Lic. en Sistemas Eléctricos y Automatización'),
(26, 6, 'Lic. en Ing. Mecánica'),
(27, 6, 'Lic. enIng. de Mantenimiento'),
(28, 6, 'Lic. en Mecánica Automotriz'),
(29, 6, 'Lic. en Mecánica Industrial'),
(30, 6, 'Lic. en Refrigeración y Aire Acondicionado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_colegio`
--

CREATE TABLE `categoria_colegio` (
  `id_cat_col` int(11) NOT NULL,
  `categoria_colegio` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_colegio`
--

INSERT INTO `categoria_colegio` (`id_cat_col`, `categoria_colegio`) VALUES
(1, 'Público'),
(2, 'Privado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificaciones_seguro`
--

CREATE TABLE `certificaciones_seguro` (
  `id_cert_seg` int(11) NOT NULL,
  `cedula` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `carrera_id_carrera` int(11) NOT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegio`
--

CREATE TABLE `colegio` (
  `id_colegio` int(11) NOT NULL,
  `categoria_colegio_id_cat_col` int(11) NOT NULL,
  `colegio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colegio`
--

INSERT INTO `colegio` (`id_colegio`, `categoria_colegio_id_cat_col`, `colegio`) VALUES
(1, 1, 'Secundaria de Alanje'),
(2, 1, 'Secundaria de Progreso'),
(3, 1, 'Secundaria Finca Blanco'),
(4, 1, 'Secundaria Puerto Armuelles'),
(5, 1, 'Secundaria Benigno Tomas Argote'),
(6, 1, 'Secundaria Volcán'),
(7, 1, 'Secundaria Aserrio'),
(8, 1, 'Secundaria Victoriano Lorenzo'),
(9, 1, 'Secundaria Renacimiento'),
(10, 1, 'Secundaria Las Lajas'),
(11, 1, 'Secundaria San Félix'),
(12, 1, 'Secundaria Macano'),
(13, 1, 'Colegio Daniel OCtavio Crespo'),
(14, 1, 'Colegio Félix Olivares Contreras'),
(15, 1, 'Colegio Instituto David'),
(16, 1, 'Colegio Francisco Morazán'),
(17, 1, 'Colegio Beatriz M. de Cabal'),
(18, 1, 'Colegio de Llano Ñopo'),
(19, 1, 'Col. Jesús Mª Pla'),
(20, 1, 'Colegio Comercial Tolé'),
(21, 1, 'Colegio Santo Domingo'),
(22, 1, 'Instituto Puerto Armuelles'),
(23, 1, 'I.P.T. Barú'),
(24, 1, 'I.P.T. Joaquina H. de Torrijos'),
(25, 1, 'I.P.T. La Concepción'),
(26, 1, 'I.P.T. David'),
(27, 1, 'I.P.T. Arnulfo Arias Madrid'),
(28, 1, 'I.P.T. Chichica'),
(29, 1, 'I.P.T. Chiriquí Oriente'),
(30, 1, 'I.P.T. Abel Tapiero Miranda'),
(31, 1, 'I.P.T. Carlos Rosas'),
(32, 1, 'I.P.T. Divalá'),
(33, 2, 'San Antonio'),
(34, 2, 'Pío XII'),
(35, 2, 'Instituto Guadalupano'),
(36, 2, 'Instituto Adventista Panameño'),
(37, 2, 'Instituto Barú'),
(38, 2, 'Cambridge Bilingual School'),
(39, 2, 'San Agustín'),
(40, 2, 'Liceo Santamaría'),
(41, 2, 'Instituto Anglo Panameño'),
(42, 2, 'Buen Pastor'),
(43, 2, 'Adventista Bilingüe de David'),
(44, 2, 'San Francisco de Asís'),
(45, 2, 'Nuestra Señora de los Ánglees'),
(46, 2, 'Instituto Marina Mercante'),
(47, 2, 'Instituto BilingÜE PAULLETINO'),
(48, 2, 'Instituto Panamericano'),
(49, 2, 'Academia Internacional de Boquete');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `composicion_familiar`
--

CREATE TABLE `composicion_familiar` (
  `id_comparacion_familiar` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `nombre_familiar` varchar(45) DEFAULT NULL,
  `parentesco_id_parentesco` int(11) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `estado_civil_id_estado_civil` int(11) NOT NULL,
  `nivel_escolaridad_id_nescol` int(11) NOT NULL,
  `ocupacion` varchar(50) DEFAULT NULL,
  `salario_bruto` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicion`
--

CREATE TABLE `condicion` (
  `id_condicion` int(11) NOT NULL,
  `condicion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `condicion`
--

INSERT INTO `condicion` (`id_condicion`, `condicion`) VALUES
(1, 'Permanente'),
(2, 'Temporal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `corregimiento`
--

CREATE TABLE `corregimiento` (
  `id_corregimiento` int(11) NOT NULL,
  `distrito_id_distrito` int(11) DEFAULT NULL,
  `corregimiento` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `corregimiento`
--

INSERT INTO `corregimiento` (`id_corregimiento`, `distrito_id_distrito`, `corregimiento`) VALUES
(1, 1, 'Puerto Almirante'),
(2, 1, 'Barriada Guaymí'),
(3, 1, 'Barrio Francés'),
(4, 1, 'Nance de Riscó'),
(5, 1, 'Valle de Aguas Arriba'),
(6, 1, 'Valle de Riscó'),
(7, 2, 'Bastimentos'),
(8, 2, 'Bocas del Toro'),
(9, 2, 'Cauchero'),
(10, 2, 'Punta Laurel'),
(11, 2, 'Tierra Oscura'),
(12, 3, 'Changuinola'),
(13, 3, 'Cochigro'),
(14, 3, 'El Emplame'),
(15, 3, 'Guabito'),
(16, 3, 'La Gloria'),
(17, 3, 'Las Delicias'),
(18, 3, 'Las Tablas'),
(19, 3, 'Barriada 4 de Abril'),
(20, 3, 'El Teribe'),
(21, 3, 'Finca 30'),
(22, 3, 'Finca 60'),
(23, 3, 'Finca 6'),
(24, 3, 'El Silencio'),
(25, 4, 'Bajo Cedro'),
(26, 4, 'Chiriquí Grande'),
(27, 4, 'Miramar'),
(28, 4, 'Punta Peña'),
(29, 4, 'Punta Robalo'),
(30, 4, 'Rambala'),
(31, 5, 'Aguadulce'),
(32, 5, 'Barrios Unidos'),
(33, 5, 'El Cristo'),
(34, 5, 'El Roble'),
(35, 5, 'Pocrí'),
(36, 6, 'Antón'),
(37, 6, 'Caballero'),
(38, 6, 'Cabuya'),
(39, 6, 'El Chirú'),
(40, 6, 'El Retiro'),
(41, 6, 'El Valle'),
(42, 6, 'Juan Díaz'),
(43, 6, 'Río Hato'),
(44, 6, 'San Juan de Dios'),
(45, 6, 'Santa Rita'),
(46, 7, 'El Harino'),
(47, 7, 'El Potrero'),
(48, 7, 'La Pintada'),
(49, 7, 'Las Lomas'),
(50, 7, 'Llano Grande'),
(51, 7, 'Piedras Gordas'),
(52, 7, 'Llano Norte'),
(53, 8, 'Capellanía'),
(54, 8, 'El Caño'),
(55, 8, 'Guzmán'),
(56, 8, 'Las Huacas'),
(57, 8, 'Natá'),
(58, 8, 'Toza'),
(59, 9, 'El Copé'),
(60, 9, 'El Palmar'),
(61, 9, 'El Picacho'),
(62, 9, 'La Pava'),
(63, 9, 'Olá'),
(64, 10, 'Cañaveral'),
(65, 10, 'Coclé'),
(66, 10, 'Chiguiría Arriba'),
(67, 10, 'El Coco'),
(68, 10, 'El Valle de San Miguel'),
(69, 10, 'Pajonal'),
(70, 10, 'Penonomé'),
(71, 10, 'Río Grande'),
(72, 10, 'Río Indio'),
(73, 10, 'Toabré'),
(74, 10, 'Tulú'),
(75, 11, 'Barrio Norte'),
(76, 11, 'Barrio Sur'),
(77, 11, 'Buena Vista'),
(78, 11, 'Cativá'),
(79, 11, 'Ciricito'),
(80, 11, 'Cristóbal'),
(81, 11, 'Escobal'),
(82, 11, 'Limón'),
(83, 11, 'Nueva Providencia'),
(84, 11, 'Puerto Pilón'),
(85, 11, 'Sabanitas'),
(86, 11, 'Salamanca'),
(87, 11, 'San Juan '),
(88, 11, 'Santa Rosa'),
(89, 12, 'Achiote'),
(90, 12, 'El Guabo'),
(91, 12, 'La Encantada'),
(92, 12, 'Nuevo Chagres'),
(93, 12, 'Palmas Bellas'),
(94, 12, 'Piña'),
(95, 12, 'Salud'),
(96, 13, 'Coclé del Norte'),
(97, 13, 'El Guásimo'),
(98, 13, 'Gobea'),
(99, 13, 'Miguel de la Borda'),
(100, 13, 'Río Indio'),
(101, 13, 'San José del General'),
(102, 14, 'Cacique'),
(103, 14, 'Garrote'),
(104, 14, 'Isla Grande'),
(105, 14, 'María Chiquita'),
(106, 14, 'Portobelo'),
(107, 15, 'Cuango'),
(108, 15, 'Miramar'),
(109, 15, 'Nombre de Dios'),
(110, 15, 'Palenque'),
(111, 15, 'Palmira'),
(112, 15, 'Playa Chiquita'),
(113, 15, 'Santa Isabel'),
(114, 15, 'Viento Frío'),
(115, 16, 'Alanje'),
(116, 16, 'Divalá'),
(117, 16, 'Canta Gallo'),
(118, 16, 'El Tejar'),
(119, 16, 'Guarumal'),
(120, 16, 'Nuevo México'),
(121, 16, 'Querévalo'),
(122, 16, 'Palo Grande'),
(123, 16, 'Santo Tomás'),
(124, 17, 'Baco'),
(125, 17, 'Limones'),
(126, 17, 'Progreso'),
(127, 17, 'Puerto Armuelles'),
(128, 17, 'Rodolfo Aguilar Delgado'),
(129, 18, 'Bágala'),
(130, 18, 'Boquerón'),
(131, 18, 'Cordillera'),
(132, 18, 'Guabal'),
(133, 18, 'Guayabal'),
(134, 18, 'Paraíso'),
(135, 18, 'Pedregal'),
(136, 18, 'Tijeras'),
(137, 19, 'Alto Boquete'),
(138, 19, 'Bajo Boquete'),
(139, 19, 'Caldera'),
(140, 19, 'Jaramillo'),
(141, 19, 'Los Naranjos'),
(142, 19, 'Palmira'),
(143, 20, 'Aserrío de Gariché'),
(144, 20, 'Bugaba'),
(145, 20, 'El Bongo'),
(146, 20, 'Gómez'),
(147, 20, 'La Concepción'),
(148, 20, 'La Estrella'),
(149, 20, 'San Andrés'),
(150, 20, 'Santa Marta'),
(151, 20, 'Santa Rosa'),
(152, 20, 'Santo Domingo'),
(153, 20, 'Sortová'),
(154, 21, 'Bijagual'),
(155, 21, 'Cochea'),
(156, 21, 'Chiriquí'),
(157, 21, 'Guacá'),
(158, 21, 'Las Lomas'),
(159, 21, 'Pedregal'),
(160, 21, 'San Carlos'),
(161, 21, 'David'),
(162, 21, 'San Pablo Nuevo'),
(163, 21, 'San Pablo Viejo'),
(164, 22, 'Dolega'),
(165, 22, 'Dos Ríos'),
(166, 22, 'Los Algarrobos'),
(167, 22, 'Los Anastacios'),
(168, 22, 'Potrerillos'),
(169, 22, 'Potrerillos Abajo'),
(170, 22, 'Rovira'),
(171, 22, 'Tinajas'),
(172, 23, 'Gualaca'),
(173, 23, 'Hornito'),
(174, 23, 'Los Angeles'),
(175, 23, 'Paja de Sombrero'),
(176, 23, 'Rincón'),
(177, 24, 'El Nancito'),
(178, 24, 'El Porvenir'),
(179, 24, 'El Puerto'),
(180, 24, 'Remedios'),
(181, 24, 'Santa Lucía'),
(182, 25, 'Breñón'),
(183, 25, 'Cañas Gordas'),
(184, 25, 'Dominical'),
(185, 25, 'Monte Lirio'),
(186, 25, 'Plaza de Caisán'),
(187, 25, 'Río Sereno'),
(188, 25, 'Santa Cruz'),
(189, 25, 'Santa Clara'),
(190, 26, 'Las Lajas'),
(191, 26, 'Lajas Adentro'),
(192, 26, 'Juay'),
(193, 26, 'San Félix'),
(194, 26, 'Santa Cruz'),
(195, 27, 'Boca Chica'),
(196, 27, 'Boca del Norte'),
(197, 27, 'Horconcitos'),
(198, 27, 'San Juan'),
(199, 27, 'San Lorenzo'),
(200, 28, 'Cerro Punta'),
(201, 28, 'Cuesta de Piedra'),
(202, 28, 'Nueva California'),
(203, 28, 'Paso Ancho'),
(204, 28, 'Volcán'),
(205, 29, 'Bella Vista'),
(206, 29, 'Cerro Viejo'),
(207, 29, 'El Cristo'),
(208, 29, 'Justo Fidel Palacios'),
(209, 29, 'Lajas de Tolé'),
(210, 29, 'Potrero de Caña'),
(211, 29, 'Quebrada de Piedra'),
(212, 29, 'Tolé'),
(213, 29, 'Veladero'),
(214, 30, 'Agua Fría'),
(215, 30, 'Camogantí'),
(216, 30, 'Chepigana'),
(217, 30, 'Cucunatí'),
(218, 30, 'Garachiné'),
(219, 30, 'Jaqué'),
(220, 30, 'La Palma'),
(221, 30, 'Puerto Piña'),
(222, 30, 'Río Congo'),
(223, 30, 'Río Congo Arriba'),
(224, 30, 'Río Iglesias'),
(225, 30, 'Sambú'),
(226, 30, 'Setegantí'),
(227, 30, 'Santa Fe'),
(228, 30, 'Taimatí'),
(229, 30, 'Tucutí'),
(230, 31, 'Boca de Cupe'),
(231, 31, 'El Real de Santa María'),
(232, 31, 'Metetí'),
(233, 31, 'Paya'),
(234, 31, 'Pinogana'),
(235, 31, 'Púcuro'),
(236, 31, 'Yape'),
(237, 31, 'Yaviza'),
(238, 31, 'Wargandí'),
(239, 32, 'Chitré'),
(240, 32, 'La Arena'),
(241, 32, 'Llano Bonito'),
(242, 32, 'San Juan Bautista'),
(243, 32, 'Monagrillo'),
(244, 33, 'Chepo'),
(245, 33, 'Chumical'),
(246, 33, 'El Toro'),
(247, 33, 'Las Minas'),
(248, 33, 'Leones'),
(249, 33, 'Quebrada del Rosarioa'),
(250, 33, 'Quebrada del Ciprián'),
(251, 34, 'El Capurí'),
(252, 34, 'El Calabacito'),
(253, 34, 'El Cedro'),
(254, 34, 'La Arena'),
(255, 34, 'La Pitaloza'),
(256, 34, 'Las Llanas'),
(257, 34, 'Los Cerritos'),
(258, 34, 'Los Cerros de Paja'),
(259, 34, 'Los Pozos'),
(260, 35, 'Cerro Largo'),
(261, 35, 'El Tijera'),
(262, 35, 'Entradero del Castillo'),
(263, 35, 'Los Llanos'),
(264, 35, 'Llano Grande'),
(265, 35, 'Menchaca'),
(266, 35, 'Peñas Chatas'),
(267, 35, 'Ocú'),
(268, 36, 'Cabuya'),
(269, 36, 'Los Castillos'),
(270, 36, 'Llano de la Cruz'),
(271, 36, 'París'),
(272, 36, 'Parita'),
(273, 36, 'Portobelillo'),
(274, 36, 'Potuga'),
(275, 37, 'El Barrero'),
(276, 37, 'El Pedregoso'),
(277, 37, 'El Ciruelo'),
(278, 37, 'El Pájaro'),
(279, 37, 'Las Cabras'),
(280, 37, 'Pesé'),
(281, 37, 'Rincón Hondo'),
(282, 37, 'Sabanagrande'),
(283, 38, 'Chupampa'),
(284, 38, 'El Rincón'),
(285, 38, 'El Limón'),
(286, 38, 'Los Canelos'),
(287, 38, 'Santa María'),
(288, 39, 'El Espinal'),
(289, 39, 'El Hato'),
(290, 39, 'El Macano'),
(291, 39, 'Guararé'),
(292, 39, 'Guararé Arriba'),
(293, 39, 'La Enea'),
(294, 39, 'La Pasera'),
(295, 39, 'Las Trancas'),
(296, 39, 'Llano Abajo'),
(297, 39, 'Perales'),
(298, 40, 'Bajo Corral'),
(299, 40, 'Bayano'),
(300, 40, 'El Carate'),
(301, 40, 'El Cocal'),
(302, 40, 'El Manantial'),
(303, 40, 'El Muñoz'),
(304, 40, 'El Pedregoso'),
(305, 40, 'El Sesteadero'),
(306, 40, 'La Laja'),
(307, 40, 'La Miel'),
(308, 40, 'La Palma'),
(309, 40, 'La Tiza'),
(310, 40, 'Las Palmitas'),
(311, 40, 'Las Tablas Abajo'),
(312, 40, 'Nuario'),
(313, 40, 'Palmira'),
(314, 40, 'Peña Blanca'),
(315, 40, 'Río Hondo'),
(316, 40, 'San José'),
(317, 40, 'San Miguel'),
(318, 40, 'Las Tablas'),
(319, 40, 'Santo Domingo'),
(320, 40, 'Valle Rico'),
(321, 40, 'Vallerriquito'),
(322, 41, 'El Ejido'),
(323, 41, 'El Guásimo'),
(324, 41, 'La Colorada'),
(325, 41, 'La Espigadilla'),
(326, 41, 'La Villa de Los Santos'),
(327, 41, 'Las Cruces'),
(328, 41, 'Las Guabas'),
(329, 41, 'Los Ángeles'),
(330, 41, 'Los Olivos'),
(331, 41, 'Llano Largo'),
(332, 41, 'Sabanagrande'),
(333, 41, 'Santa Ana'),
(334, 41, 'Tres Quebradas'),
(335, 41, 'Villa Lourdes'),
(336, 41, 'Agua Buena'),
(337, 42, 'Bahía Honda'),
(338, 42, 'Bajos de Güera'),
(339, 42, 'Corozal'),
(340, 42, 'Chupá'),
(341, 42, 'El Cedro'),
(342, 42, 'Espino Amarillo'),
(343, 42, 'La Mesa'),
(344, 42, 'Las Palmas'),
(345, 42, 'Llano de Piedras'),
(346, 42, 'Macaracas'),
(347, 42, 'Mogollón'),
(348, 43, 'Los Asientos'),
(349, 43, 'Mariabé'),
(350, 43, 'Oria Arriba'),
(351, 43, 'Pedasí'),
(352, 43, 'Purio'),
(353, 44, 'El Cañafístulo'),
(354, 44, 'Lajamina'),
(355, 44, 'Paraíso'),
(356, 44, 'Paritilla'),
(357, 44, 'Pocrí'),
(358, 45, 'Altos de Güera'),
(359, 45, 'Cambutal'),
(360, 45, 'Cañas'),
(361, 45, 'El Bebedero'),
(362, 45, 'El Cacao'),
(363, 45, 'El Cortezo'),
(364, 45, 'Flores'),
(365, 45, 'Guánico'),
(366, 45, 'Isla de Cañas'),
(367, 45, 'La Tronosa'),
(368, 45, 'Tonosí'),
(369, 46, 'La Ensenada'),
(370, 46, 'La Esmeral'),
(371, 46, 'La Guinea'),
(372, 46, 'Pedro González'),
(373, 46, 'Saboga'),
(374, 46, 'San Miguel'),
(375, 47, 'Cañita'),
(376, 47, 'Chepillo'),
(377, 47, 'El Llano'),
(378, 47, 'Las Margaritas'),
(379, 47, 'Madugandí'),
(380, 47, 'Chepo'),
(381, 47, 'Santa Cruz de Chinina'),
(382, 47, 'Tortí'),
(383, 48, 'Brujas'),
(384, 48, 'Chimán'),
(385, 48, 'Gonzalo Vásquez'),
(386, 48, 'Pásiga'),
(387, 48, 'Unión Santeña'),
(388, 49, '24 de Diciembre'),
(389, 49, 'Alcalde Díaz'),
(390, 49, 'Ancón'),
(391, 49, 'Betania'),
(392, 49, 'Bella Vista'),
(393, 49, 'Calidonia'),
(394, 49, 'Caimitillo'),
(395, 49, 'Chilibre'),
(396, 49, 'Curundú'),
(397, 49, 'El Chorrillo'),
(398, 49, 'Erenesto Córdoba Campos'),
(399, 49, 'Juan Díaz'),
(400, 49, 'Las Cumbres'),
(401, 49, 'Las Mañanitas'),
(402, 49, 'Pacora'),
(403, 49, 'Parque Lefevre'),
(404, 49, 'Pedregal'),
(405, 49, 'Pueblo Nuevo'),
(406, 49, 'Río Abajo'),
(407, 49, 'San Felipe'),
(408, 49, 'San Francisco'),
(409, 49, 'San Martín'),
(410, 49, 'Santa Ana'),
(411, 49, 'Tocumen'),
(412, 50, 'Amelia Denis de Icaza'),
(413, 50, 'Arnulfo Arias'),
(414, 50, 'Belisario Frías'),
(415, 50, 'Belisario Porras'),
(416, 50, 'José Domingo Espinar'),
(417, 50, 'Mateo Iturralde'),
(418, 50, 'Omar Torrijos'),
(419, 50, 'Rufina Alfaro'),
(420, 50, 'Victoriano Lorenzo'),
(421, 51, 'Otoque Occidente'),
(422, 51, 'Otoque Oriente'),
(423, 51, 'Taboga'),
(424, 52, 'Atalaya'),
(425, 52, 'El Barrito'),
(426, 52, 'La Carrillo'),
(427, 52, 'La Montañuela'),
(428, 52, 'San Antonio'),
(429, 53, 'Barnizal'),
(430, 53, 'Calobre'),
(431, 53, 'Chitra'),
(432, 53, 'El Cocla'),
(433, 53, 'El Potrero'),
(434, 53, 'La Laguna'),
(435, 53, 'La Raya de Calobre'),
(436, 53, 'La Tetilla'),
(437, 53, 'La Yeguada'),
(438, 53, 'Las Guías'),
(439, 53, 'Monjarás'),
(440, 53, 'San José'),
(441, 54, 'Cañazas'),
(442, 54, 'Cerro de Plata'),
(443, 54, 'El Aromillo'),
(444, 54, 'El Picador'),
(445, 54, 'Las Cruces'),
(446, 54, 'Los Valles'),
(447, 54, 'San José'),
(448, 54, 'San Marcelo'),
(449, 55, 'Bisvalles'),
(450, 55, 'Boró'),
(451, 55, 'El Higo'),
(452, 55, 'La Mesa'),
(453, 55, 'Los Milagros'),
(454, 55, 'Llano Grande'),
(455, 55, 'San Bartolo'),
(456, 56, 'Cerro de Casa'),
(457, 56, 'Corozal'),
(458, 56, 'El María'),
(459, 56, 'El Prado'),
(460, 56, 'El Rincón'),
(461, 56, 'Las Palmas'),
(462, 56, 'Lolá'),
(463, 56, 'Manuel E. Amador Terrero'),
(464, 56, 'Pixvae'),
(465, 56, 'Puerto Vidal'),
(466, 56, 'San Martín de Porres'),
(467, 56, 'Viguí'),
(468, 56, 'Zapotillo'),
(469, 57, 'Arenas'),
(470, 57, 'El Cacao'),
(471, 57, 'Mariato'),
(472, 57, 'Quebro'),
(473, 57, 'Tebario'),
(474, 58, 'Cébaco'),
(475, 58, 'Costa Hermosa'),
(476, 58, 'Gobernadora'),
(477, 58, 'La Garceana'),
(478, 58, 'Leones'),
(479, 58, 'Montijo'),
(480, 58, 'Pilón'),
(481, 58, 'Unión del Norte'),
(482, 59, '14 de Noviembre'),
(483, 59, 'Río de Jesús'),
(484, 59, 'Las Huacas'),
(485, 59, 'Los Castillos'),
(486, 59, 'Nuevo San Juan'),
(487, 59, 'Utira'),
(488, 60, 'Corral Falso'),
(489, 60, 'Los Hatillos'),
(490, 60, 'Remance'),
(491, 60, 'San Francisco'),
(492, 60, 'San Juan '),
(493, 60, 'San José'),
(494, 61, 'Calovébora'),
(495, 61, 'El Alto'),
(496, 61, 'El Cuay'),
(497, 61, 'El Pantano'),
(498, 61, 'Gatuncito'),
(499, 61, 'Río Luis'),
(500, 61, 'Rubén Cantú'),
(501, 61, 'Santa Fe'),
(502, 62, 'Canto del Llano'),
(503, 62, 'Carlos Santana Ávila'),
(504, 62, 'Edwin Fábrega'),
(505, 62, 'El Llanito'),
(506, 62, 'La Colorada'),
(507, 62, 'La Peña'),
(508, 62, 'La Raya de Santa María'),
(509, 62, 'La Soledad'),
(510, 62, 'Los Algarrobos'),
(511, 62, 'Ponuga'),
(512, 62, 'San Martín de Porres'),
(513, 62, 'San Pedro del Espino'),
(514, 62, 'Santiago'),
(515, 62, 'Rincón Largo'),
(516, 62, 'Urracá'),
(517, 63, 'Bahía Honda'),
(518, 63, 'Calidonia'),
(519, 63, 'Cativé'),
(520, 63, 'El Marañón'),
(521, 63, 'Guarumal'),
(522, 63, 'Hicaco'),
(523, 63, 'La Soledad'),
(524, 63, 'Quebrada de Oro'),
(525, 63, 'Río Grande'),
(526, 63, 'Rodeo Viejo'),
(527, 63, 'Soná'),
(528, NULL, 'Ailigandí'),
(529, NULL, 'Narganá'),
(530, NULL, 'Puerto Obaldía'),
(531, NULL, 'Tubualá'),
(532, 64, 'Cirilo Guaynora'),
(533, 64, 'Lajas Blancas'),
(534, 64, 'Manuel Ortega'),
(535, 65, 'Jingurudó'),
(536, 65, 'Río Sabalo'),
(537, 66, 'Boca de Balsa'),
(538, 66, 'Cerro Banco'),
(539, 66, 'Cerro Patena'),
(540, 66, 'Camarón Arriba'),
(541, 66, 'Emplanada de Chorca'),
(542, 66, 'Nämnoní'),
(543, 66, 'Niba'),
(544, 66, 'Soloy'),
(545, 67, 'Bisira'),
(546, 67, 'Calante'),
(547, 67, 'Kankintú'),
(548, 67, 'Guoroní'),
(549, 67, 'Mününí'),
(550, 67, 'Piedra Roja'),
(551, 67, 'Tolote'),
(552, 68, 'Bahía Azul'),
(553, 68, 'Cañaveral'),
(554, 68, 'Kusapín'),
(555, 68, 'Río Chiriquí'),
(556, 68, 'Tobobé'),
(557, 69, 'Cascabel'),
(558, 69, 'Hato Corotú'),
(559, 69, 'Hato Culantro'),
(560, 69, 'Hato Pilón'),
(561, 69, 'Hato Jobo'),
(562, 69, 'Hato Julí'),
(563, 69, 'Quebrada de Loro'),
(564, 69, 'Salto Dupií'),
(565, 70, 'Alto Caballero'),
(566, 70, 'Bagama'),
(567, 70, 'Cerro Caña'),
(568, 70, 'Cerro Puerco'),
(569, 70, 'Chichica'),
(570, 70, 'Krüa'),
(571, 70, 'Maraca'),
(572, 70, 'Nibra'),
(573, 70, 'Peña Blanca'),
(574, 70, 'Roka'),
(575, 70, 'Sitio Prado'),
(576, 70, 'Umaní'),
(577, 70, 'Diko'),
(578, 70, 'Kikari'),
(579, 70, 'Dikeri'),
(580, 70, 'Mreeni'),
(581, 71, 'Cerro Iglesias'),
(582, 71, 'Hato Chamí'),
(583, 71, 'Jädaberi'),
(584, 71, 'Lajero'),
(585, 71, 'Susama'),
(586, 72, 'Agua de Salud'),
(587, 72, 'Alto de Jesús'),
(588, 72, 'Buenos Aires'),
(589, 72, 'Cerro Pelado'),
(590, 72, 'El Bale'),
(591, 72, 'El Paredón'),
(592, 72, 'El Piro'),
(593, 72, 'Guayabito'),
(594, 72, 'Güibale'),
(595, 72, 'El Peñón'),
(596, 72, 'El Piro Nº2'),
(597, 73, 'Burí'),
(598, 73, 'Guariviara'),
(599, 73, 'Man Creek'),
(600, 73, 'Samboa'),
(601, 73, 'Tuwai'),
(602, 74, 'Alto Bilingüe'),
(603, 74, 'Loma Yuca'),
(604, 74, 'San Pedrito'),
(605, 74, 'Valle Bonito'),
(606, 74, 'Calovébora'),
(607, 75, 'Arraiján'),
(608, 75, 'Burunga'),
(609, 75, 'Cerro Silvestre'),
(610, 75, 'Juan Demóstenes Arosemena'),
(611, 75, 'Nuevo Emperador'),
(612, 75, 'Santa Clara'),
(613, 75, 'Veracruz'),
(614, 75, 'Vista Alegre'),
(615, 76, 'Caimito'),
(616, 76, 'Campana'),
(617, 76, 'Capira'),
(618, 76, 'Cermeño'),
(619, 76, 'Cirí de los Sotos'),
(620, 76, 'Cirí Grande'),
(621, 76, 'El Cacao'),
(622, 76, 'La Trinidad'),
(623, 76, 'Las Ollas Arriba'),
(624, 76, 'Lídice'),
(625, 76, 'Villa Carmen'),
(626, 76, 'Villa Rosario'),
(627, 76, 'Santa Rosa'),
(628, 77, 'Bejuco'),
(629, 77, 'Buenos Aires'),
(630, 77, 'Cabuya'),
(631, 77, 'Chame'),
(632, 77, 'Chicá'),
(633, 77, 'El Líbano'),
(634, 77, 'Las Lajas'),
(635, 77, 'Nueva Gorgona'),
(636, 77, 'Punta Chame'),
(637, 77, 'Sajalices'),
(638, 77, 'Sorá'),
(639, 78, 'Amador'),
(640, 78, 'Arosemena'),
(641, 78, 'Barrio Balboa'),
(642, 78, 'Barrio Colón'),
(643, 78, 'El Arado'),
(644, 78, 'El Coco'),
(645, 78, 'Feuillet'),
(646, 78, 'Guadalupe'),
(647, 78, 'Herrera'),
(648, 78, 'Hurtado'),
(649, 78, 'Iturralde'),
(650, 78, 'La Represa'),
(651, 78, 'Los Díaz'),
(652, 78, 'Mendoza'),
(653, 78, 'Obaldía'),
(654, 78, 'Playa Leona'),
(655, 78, 'Puerto Caimito'),
(656, 78, 'Santa Rita'),
(657, 79, 'El Espino'),
(658, 79, 'El Higo'),
(659, 79, 'Guayabito'),
(660, 79, 'La Ermita'),
(661, 79, 'La Laguna'),
(662, 79, 'Las Uvas'),
(663, 79, 'Los Llanitos'),
(664, 79, 'San Carlos'),
(665, 79, 'San José');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `culturaxestud`
--

CREATE TABLE `culturaxestud` (
  `id_culturaxestud` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `grupo_cultura_id_grup_cult` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decision`
--

CREATE TABLE `decision` (
  `id_decision` int(11) NOT NULL,
  `decision` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `decision`
--

INSERT INTO `decision` (`id_decision`, `decision`) VALUES
(1, 'Sí'),
(2, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deporte_cultura`
--

CREATE TABLE `deporte_cultura` (
  `id_deporte_cultura` int(11) NOT NULL,
  `id_dparticipadep` int(11) DEFAULT NULL,
  `id_dparticipacul` int(11) DEFAULT NULL,
  `formulario_id_formulario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disciplinaxestud`
--

CREATE TABLE `disciplinaxestud` (
  `id_disciplinaxestud` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `disicplina_id_disicplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disicplina`
--

CREATE TABLE `disicplina` (
  `id_disicplina` int(11) NOT NULL,
  `tipo_disicplina` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `disicplina`
--

INSERT INTO `disicplina` (`id_disicplina`, `tipo_disicplina`) VALUES
(1, 'Fútbol'),
(2, 'Artes Marciales'),
(3, 'Volleyball'),
(4, 'FutSal'),
(5, 'FlagFutbol'),
(6, 'Tenis de Mesa'),
(7, 'Softball'),
(8, 'Beisból'),
(9, 'Baloncesto'),
(10, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `id_distrito` int(11) NOT NULL,
  `provincia_id_provincia` int(11) NOT NULL,
  `distrito` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`id_distrito`, `provincia_id_provincia`, `distrito`) VALUES
(1, 1, 'Almirante'),
(2, 1, 'Bocas del Toro'),
(3, 1, 'Changuinola'),
(4, 1, 'Chiriquí Grande'),
(5, 2, 'Aguadulce'),
(6, 2, 'Antón'),
(7, 2, 'La Pintada'),
(8, 2, 'Natá'),
(9, 2, 'Olá'),
(10, 2, 'Penonomé'),
(11, 3, 'Colón'),
(12, 3, 'Chagres'),
(13, 3, 'Donoso'),
(14, 3, 'Portobelo'),
(15, 3, 'Santa Isabel'),
(16, 4, 'Alanje'),
(17, 4, 'Barú'),
(18, 4, 'Boquerón'),
(19, 4, 'Boquete'),
(20, 4, 'Bugaba'),
(21, 4, 'David'),
(22, 4, 'Dolega'),
(23, 4, 'Gualaca'),
(24, 4, 'Remedios'),
(25, 4, 'Renacimiento'),
(26, 4, 'San Félix'),
(27, 4, 'San Lorenzo'),
(28, 4, 'Tierras Altas'),
(29, 4, 'Tolé'),
(30, 5, 'Chepigana'),
(31, 5, 'Pinogana'),
(32, 6, 'Chitré'),
(33, 6, 'Las Minas'),
(34, 6, 'Los Pozos'),
(35, 6, 'Ocú'),
(36, 6, 'Parita'),
(37, 6, 'Pesé'),
(38, 6, 'Santa María'),
(39, 7, 'Guararé'),
(40, 7, 'Las Tablas'),
(41, 7, 'Los Santos'),
(42, 7, 'Macaracas'),
(43, 7, 'Pedasí'),
(44, 7, 'Pocrí'),
(45, 7, 'Tonosí'),
(46, 8, 'Balboa'),
(47, 8, 'Chepo'),
(48, 8, 'Chimán'),
(49, 8, ' Panamá'),
(50, 8, 'San Miguelito'),
(51, 8, 'Taboga'),
(52, 9, 'Atalaya'),
(53, 9, 'Calobre'),
(54, 9, 'Cañazas'),
(55, 9, 'La Mesa'),
(56, 9, 'Las Palmas'),
(57, 9, 'Mariato'),
(58, 9, 'Montijo'),
(59, 9, 'Río de Jesús'),
(60, 9, 'San Francisco'),
(61, 9, 'Santa Fé'),
(62, 9, 'Santiago'),
(63, 9, 'Soná'),
(64, 11, 'Cémaco'),
(65, 11, 'Sambú'),
(66, 12, 'Besikó'),
(67, 12, 'Kankintú'),
(68, 12, 'Kusapín'),
(69, 12, 'Mironó'),
(70, 12, 'Müna'),
(71, 12, 'Nole Düima'),
(72, 12, 'Ñürüm'),
(73, 12, 'Jirondai'),
(74, 12, 'Calovébora'),
(75, 13, 'Arraiján'),
(76, 13, 'Capira'),
(77, 13, 'Chame'),
(78, 13, 'La Chorrera'),
(79, 13, 'San Carlos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad_impedimentoxestud`
--

CREATE TABLE `enfermedad_impedimentoxestud` (
  `idEnfermedad_impedimento` int(11) NOT NULL,
  `tipo_enfermedad_impedimento_id_tipo_enf_imped` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enferm_imped`
--

CREATE TABLE `enferm_imped` (
  `id_catenfe_imp` int(11) NOT NULL,
  `tipo_enfermedad_impedimento_id_tipo_enf_imped` int(11) NOT NULL,
  `enferm_imped` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `enferm_imped`
--

INSERT INTO `enferm_imped` (`id_catenfe_imp`, `tipo_enfermedad_impedimento_id_tipo_enf_imped`, `enferm_imped`) VALUES
(1, 1, 'Arteriosclerosis'),
(2, 1, 'Aterosclerosis'),
(3, 1, 'Hipertensión'),
(4, 1, 'Hipotensión Ortostática'),
(5, 1, 'Insuficiencia Cardíaca'),
(6, 1, 'Miocardiopatía'),
(7, 1, 'Valvulopatía'),
(8, 1, 'Endocarditis'),
(9, 1, 'Linfedema'),
(10, 1, 'Lipedema'),
(11, 1, 'Trombosis Venosa'),
(12, 1, 'Arteritis'),
(13, 2, 'Insifuciencia Respiratoria Aguda'),
(14, 2, 'Asma Bronquial'),
(15, 2, 'Bronquitis Aguda'),
(16, 2, 'Neumonía'),
(17, 2, 'Bisinosis'),
(18, 3, 'Reflujo Gastroesofágico'),
(19, 3, 'Hernia Hiatal'),
(20, 3, 'Gastritis'),
(21, 3, 'Úlcera Péptica'),
(22, 3, 'Gastroenteritis'),
(23, 3, 'Colitis Ulcerosa'),
(24, 4, 'Fibrosis'),
(25, 4, 'Cirrosis'),
(26, 4, 'Cirrosis Biliar'),
(27, 4, 'Hepatitis Crónica'),
(28, 4, 'Litiasis Biliar'),
(29, 4, 'Colecistitis'),
(30, 4, 'Coledocolitiasis'),
(31, 5, 'Hiponatremia'),
(32, 5, 'Hipernatremia'),
(33, 5, 'Hipocalcemia'),
(34, 5, 'Hipercalcemia'),
(35, 5, 'Hipomagnesemia'),
(36, 5, 'Hipermagnesemia'),
(37, 5, 'Acidosis'),
(38, 5, 'Alcalosis'),
(39, 5, 'Porfirias'),
(40, 5, 'Hiperlipoproteinemia'),
(41, 5, 'Hipolipoproteinemia'),
(42, 5, 'Lipidosis'),
(43, 5, 'Amiloidosis'),
(44, 6, 'Diabetes Insípida'),
(45, 6, 'Hipertiroidismo'),
(46, 6, 'Hipotiroidismo'),
(47, 6, 'Tiroiditis'),
(48, 6, 'Bocio Eutiroideo'),
(49, 6, 'Insuficiencia Suprarrenal Secundaria'),
(50, 6, 'Diabetes Mellitus'),
(51, 6, 'Hipoglucemia'),
(52, 6, 'Síndrome Carcinoide'),
(53, 7, 'Anemia'),
(54, 7, 'Policitemia Vera'),
(55, 7, 'Eritrocitosis Secundaria'),
(56, 7, 'Mielofibrosis'),
(57, 7, 'Trombocitemia Primaria'),
(58, 7, 'Hemofilia'),
(59, 7, 'Hepatopía'),
(60, 7, 'Linfocitopenia'),
(61, 7, 'Leucemia'),
(62, 7, 'Micosis Fungoide'),
(63, 7, 'Mieloma Múltiple'),
(64, 7, 'Macroglobulinemia'),
(65, 7, 'Hiperesplenismo'),
(66, 8, 'Artritis '),
(67, 8, 'Policondritis Recidivante'),
(68, 8, 'Artrosis'),
(69, 8, 'Artropatía'),
(70, 8, 'Gota'),
(71, 8, 'Bursitis'),
(72, 8, 'Tendinitis'),
(73, 8, 'Tendosinovitis'),
(74, 8, 'Fibromialgia'),
(75, 8, 'Vasculitis'),
(76, 8, 'Lupus'),
(77, 8, 'Esclerosis'),
(78, 8, 'Polimialgia'),
(79, 8, 'Osteoporosis'),
(80, 8, 'Osteomielitis'),
(81, 9, 'Trastorno Convulsivo'),
(82, 9, 'Insomnio'),
(83, 9, 'Síndrome Isquémicos'),
(84, 9, 'Encefalopatía Hipertensiva'),
(85, 9, 'Meningitis'),
(86, 9, 'Esclerosis Múltiple'),
(87, 9, 'Siringomielia'),
(88, 9, 'Neuropatía'),
(89, 10, 'Insufciencia Renal'),
(90, 10, 'Síndrome Nefrítico'),
(91, 10, 'Nefritis Tubulointersticial'),
(92, 10, 'Pielonefritis Bacteriana'),
(93, 10, 'Acidosis Tubular Renal'),
(94, 10, 'Glucosuria Renal'),
(95, 10, 'Nefropatía Crónica'),
(96, 10, 'Hidronefrosis'),
(97, 10, 'Obstrucción Ureteral'),
(98, 10, 'Obstrucción Uretral'),
(99, 10, 'Hiperplasia Prostática Benigna'),
(100, 10, 'Disfunción Ureteral'),
(101, 11, 'Escoliosis'),
(102, 11, 'Epifisiólisis Femoral'),
(103, 11, 'Síndrome de Down'),
(104, 11, 'Trisomía 18'),
(105, 11, 'Trisomía 13'),
(106, 11, 'Trisomía 22 Parcial'),
(107, 11, 'Síndrome Triple X'),
(108, 11, 'Síndrome de Klinefelter'),
(109, 12, 'Sordera'),
(110, 12, 'Vértigo'),
(111, 12, 'Otitis Externa'),
(112, 12, 'Pericondritis'),
(113, 12, 'Barotitis'),
(114, 12, 'Miringitis'),
(115, 12, 'Otitis Media'),
(116, 12, 'Otosclerosis'),
(117, 12, 'Vértigo Posicional '),
(118, 12, 'Sordera Púbita'),
(119, 12, 'Presbiacusia'),
(120, 12, 'Epistaxis'),
(121, 12, 'Rinitis Vestibular'),
(122, 12, 'Rinitis'),
(123, 12, 'Rinitis Atrófica'),
(124, 13, 'Exoftalmos'),
(125, 13, 'Dacriostenosis'),
(126, 13, 'Dacriocistitis'),
(127, 13, 'Blefaritis'),
(128, 13, 'Tracoma'),
(129, 13, 'Episcleritis'),
(130, 13, 'Escleritis'),
(131, 13, 'Catarata'),
(132, 13, 'Retinopatía Diabética'),
(133, 13, 'Miopía'),
(134, 13, 'Astigmatismo'),
(135, 13, 'Desprendimiento de Retina'),
(136, 13, 'Retinosis Pigmentaria'),
(137, 13, 'Glaucoma'),
(138, 13, 'Atrofia Óptica'),
(139, 14, 'Prurito'),
(140, 14, 'Dermatitis'),
(141, 14, 'Candidiasis'),
(142, 14, 'Rosácea'),
(143, 15, 'Estomatitis'),
(144, 15, 'Gingivitis'),
(145, 15, 'Periodontitis'),
(146, 15, 'Artritis'),
(147, 15, 'Anquilosis'),
(148, 16, 'Esclerosis Lateral Amiotrófica'),
(149, 16, 'Esclerosis Lateral Primaria'),
(150, 16, 'Atrofia Muscular Progresiva'),
(151, 16, 'Enfermedad de Kennedy'),
(152, 16, 'Enfermedad de Hirayama'),
(153, 16, 'Atrofia Muscular Espinal'),
(154, 17, 'Hipertonía'),
(155, 17, 'Atetosis'),
(156, 17, 'Ataxia'),
(157, 17, 'Hipotonía'),
(158, 17, 'Espina Bífida'),
(159, 17, 'Cuadriplejia'),
(160, 17, 'Paraplejia'),
(161, 17, 'Hemiplejia'),
(162, 17, 'Displejia'),
(163, 17, 'Distrofia Muscular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `especialidad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id_especialidad`, `especialidad`) VALUES
(1, 'Licenciatura'),
(2, 'Ingeniería'),
(3, 'Técnico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `id_estado_civil` int(11) NOT NULL,
  `estado_civil` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_civil`
--

INSERT INTO `estado_civil` (`id_estado_civil`, `estado_civil`) VALUES
(1, 'Soltero'),
(2, 'Casado'),
(3, 'Separado'),
(4, 'Unido'),
(5, 'Viudo'),
(6, 'Divorciado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_academico`
--

CREATE TABLE `estatus_academico` (
  `id_estatus_ac` int(11) NOT NULL,
  `estatus_academico` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estatus_academico`
--

INSERT INTO `estatus_academico` (`id_estatus_ac`, `estatus_academico`) VALUES
(1, 'Regular'),
(2, 'Condicional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiantes` varchar(12) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `nacionalidad_id_nacionalidad` int(11) NOT NULL,
  `seguro_social` varchar(45) DEFAULT NULL,
  `tipo_de_sangre_id_tpsangre` int(11) NOT NULL COMMENT '		',
  `provincia_id_provincia` int(11) NOT NULL,
  `distrito_id_distrito` int(11) NOT NULL,
  `corregimiento_id_corregimiento` int(11) NOT NULL,
  `sexo_id_sexo` int(11) NOT NULL,
  `estado_civil_id_estado_civil` int(11) NOT NULL,
  `fecha_nac` date DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `celular` varchar(12) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facilidad`
--

CREATE TABLE `facilidad` (
  `id_facilidad` int(11) NOT NULL,
  `tipo_facilidad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facilidad`
--

INSERT INTO `facilidad` (`id_facilidad`, `tipo_facilidad`) VALUES
(1, 'Individual'),
(2, 'Compartido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id_facultad` int(11) NOT NULL,
  `facultad` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id_facultad`, `facultad`) VALUES
(1, 'FISC'),
(2, 'FII'),
(3, 'FIC'),
(4, 'FICYT'),
(5, 'FIE'),
(6, 'FIM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feria_salud`
--

CREATE TABLE `feria_salud` (
  `id_feria_salud` int(11) NOT NULL,
  `cedula` varchar(15) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `carrera_id_carrera` int(11) NOT NULL,
  `servicio_feria_id_servicio_feria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `financiamiento`
--

CREATE TABLE `financiamiento` (
  `id_financiamiento` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `recursos_id_recurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id_formulario` int(11) NOT NULL,
  `estudiantes_id_estudiantes` varchar(12) NOT NULL,
  `periodo_academico_id_periodo_ac` int(11) NOT NULL,
  `fecha_sol` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasto_familiar`
--

CREATE TABLE `gasto_familiar` (
  `id_gasto_familiar` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `vivienda` float DEFAULT NULL,
  `alimentacion` float DEFAULT NULL,
  `trasnporte` float DEFAULT NULL,
  `agua` float DEFAULT NULL,
  `celular` float DEFAULT NULL,
  `colegio` float DEFAULT NULL,
  `colegial` float DEFAULT NULL,
  `material_didactico` float DEFAULT NULL,
  `combustible` float DEFAULT NULL,
  `pension_alimenticia` float DEFAULT NULL,
  `prestamo` float DEFAULT NULL,
  `especif_prestamo` float DEFAULT NULL,
  `muebleria` float DEFAULT NULL,
  `telefono` float DEFAULT NULL,
  `tarjeta_credito` float DEFAULT NULL,
  `recreacion` float DEFAULT NULL,
  `otros` float DEFAULT NULL,
  `total_gasto` float DEFAULT NULL,
  `comentario` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_cultura`
--

CREATE TABLE `grupo_cultura` (
  `id_grup_cult` int(11) NOT NULL,
  `grupo_cultura` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo_cultura`
--

INSERT INTO `grupo_cultura` (`id_grup_cult`, `grupo_cultura`) VALUES
(1, 'Teatro'),
(2, 'Bailes'),
(3, 'Conjunto Folklórico'),
(4, 'Banda de Música'),
(5, 'Coro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iluminacion`
--

CREATE TABLE `iluminacion` (
  `id_iluminacion` int(11) NOT NULL,
  `tipo_iluminacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `iluminacion`
--

INSERT INTO `iluminacion` (`id_iluminacion`, `tipo_iluminacion`) VALUES
(1, 'Luz eléctrica'),
(2, 'Lámpara de gas'),
(3, 'Lámpara de Kerosén'),
(4, 'Luz Natural'),
(5, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion_viviendas`
--

CREATE TABLE `informacion_viviendas` (
  `id_informacion_vivienda` int(11) NOT NULL,
  `formulario_id_formulario` int(11) DEFAULT NULL,
  `opcion_id_opcion` int(11) DEFAULT NULL,
  `tendencia_id_tendencia` int(11) DEFAULT NULL,
  `costo_hipoteca` varchar(45) DEFAULT NULL,
  `id_dsala` int(11) DEFAULT NULL,
  `id_dmesa_comedor` int(11) DEFAULT NULL,
  `id_dsala_comedor` int(11) DEFAULT NULL,
  `id_dcocina` int(11) DEFAULT NULL,
  `id_dlavanderia` int(11) DEFAULT NULL,
  `cantidad_baño` int(11) DEFAULT NULL,
  `cantidad_dormitorio` int(11) DEFAULT NULL,
  `id_dcuarto_estudio` int(11) DEFAULT NULL,
  `id_dterraza` int(11) DEFAULT NULL,
  `tipo_vivienda_id_tipo_vivienda` int(11) DEFAULT NULL,
  `zona_ub_id_zona_ub` int(11) DEFAULT NULL,
  `id_mparedes` int(11) DEFAULT NULL,
  `id_mpisos` int(11) DEFAULT NULL,
  `id_mtecho` int(11) DEFAULT NULL,
  `tamagno_vivienda_id_tamaño_vivienda` int(11) DEFAULT NULL,
  `iluminacion_id_iluminacion` int(11) DEFAULT NULL,
  `insta_sanitaria_id_insta_sanitaria` int(11) DEFAULT NULL,
  `tipo_inst_sanitaria_idtipo_inst_sanitaria` int(11) DEFAULT NULL,
  `num_ventanas` int(11) DEFAULT NULL,
  `id_dagua_potable` int(11) DEFAULT NULL,
  `tipo_suminis_agua_id_tipo_suminis_agua` int(11) DEFAULT NULL,
  `prov_agua_idprov_agua` int(11) DEFAULT NULL,
  `condicion_fisica` varchar(45) DEFAULT NULL,
  `id_djuegode_sala` int(11) DEFAULT NULL,
  `id_darea_comedor` int(11) DEFAULT NULL,
  `id_dtv` int(11) DEFAULT NULL,
  `id_ddvd` int(11) DEFAULT NULL,
  `id_dequipo_sonido` int(11) DEFAULT NULL,
  `id_drefri` int(11) DEFAULT NULL,
  `id_destufa` int(11) DEFAULT NULL,
  `id_da/a` int(11) DEFAULT NULL,
  `id_dmicroondas` int(11) DEFAULT NULL,
  `id_dlavadora` int(11) DEFAULT NULL,
  `id_dabanico` int(11) DEFAULT NULL,
  `otro` varchar(45) DEFAULT NULL,
  `id_dcambio_resid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe_social`
--

CREATE TABLE `informe_social` (
  `id_informe_social` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `diagnostico_social` varchar(75) DEFAULT NULL,
  `plan_accion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_academica`
--

CREATE TABLE `info_academica` (
  `id_info_ac` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `periodo_academico_id_periodo_ac` int(11) NOT NULL,
  `agno_ac_id_agno_ac` int(11) NOT NULL,
  `turno_id_turno` int(11) NOT NULL,
  `facultad_id_facultad` int(11) NOT NULL,
  `carrera_id_carrera` int(11) NOT NULL,
  `aula_de_clases` varchar(15) DEFAULT NULL,
  `grupo_de_clases` varchar(15) DEFAULT NULL,
  `especialidad_id_especialidad` int(11) NOT NULL,
  `estatus_academico_id_estatus_ac` int(11) NOT NULL,
  `indice_ac` double DEFAULT NULL,
  `id_dprblema_ac` int(11) DEFAULT NULL,
  `problem_ac` varchar(150) DEFAULT NULL,
  `id_dlib_necesario` int(11) DEFAULT NULL,
  `id_dcompu` int(11) DEFAULT NULL,
  `agno_ingreso` int(11) DEFAULT NULL,
  `id_dcambio_carrera` int(11) DEFAULT NULL,
  `id_carrera_anterior` int(11) DEFAULT NULL,
  `id_dgrupo_estu` int(11) DEFAULT NULL,
  `area_laboral_id_arlabo_ac` int(11) NOT NULL,
  `id_dlugar_adecuado` int(11) DEFAULT NULL,
  `comentario` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_enfermedad_impedimento`
--

CREATE TABLE `info_enfermedad_impedimento` (
  `id_infoenferm_imp` int(11) NOT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_catenfe_imp` int(11) DEFAULT NULL,
  `id_tipo_enfe_imped` int(11) DEFAULT NULL,
  `espec_enferm_imp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `id_ingreso` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `ingreso_familiar` float DEFAULT NULL,
  `beca` float DEFAULT NULL,
  `prestamo_estudio` float DEFAULT NULL,
  `pension_alimenticia` float DEFAULT NULL,
  `ingreso_propio` float DEFAULT NULL,
  `otro` float DEFAULT NULL,
  `total_ingreso` float DEFAULT NULL,
  `comentarios` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insta_sanitaria`
--

CREATE TABLE `insta_sanitaria` (
  `id_insta_sanitaria` int(11) NOT NULL,
  `insta_sanitaria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `insta_sanitaria`
--

INSERT INTO `insta_sanitaria` (`id_insta_sanitaria`, `insta_sanitaria`) VALUES
(1, 'Letrina'),
(2, 'Higiénico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libroxestudiante`
--

CREATE TABLE `libroxestudiante` (
  `id_libro_x_estudiante` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `materia_id_materia1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar_trabajo`
--

CREATE TABLE `lugar_trabajo` (
  `id_lugar_trabajo` int(11) NOT NULL,
  `lugar_trabajo` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lugar_trabajo`
--

INSERT INTO `lugar_trabajo` (`id_lugar_trabajo`, `lugar_trabajo`) VALUES
(1, 'Gobierno'),
(2, 'Independiente'),
(3, 'Empresa Privada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `especialidad_id_especialidad` int(11) DEFAULT NULL,
  `facultad_id_facultad` int(11) DEFAULT NULL,
  `carrera_id_carrera` int(11) DEFAULT NULL,
  `materia` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `especialidad_id_especialidad`, `facultad_id_facultad`, `carrera_id_carrera`, `materia`) VALUES
(69, 2, 3, NULL, 'Representaciones Gráficas'),
(70, 2, 3, NULL, 'Geometría Descriptiva'),
(71, 2, 3, NULL, 'Métodos Estadísticos en Ingeniería'),
(72, 2, NULL, NULL, 'Inglés (Oral and Written Communication)'),
(73, 2, 3, 15, 'Modelado Asistido por Computadora'),
(74, 2, 3, 15, 'Inst. Eléctricas y Mec. en Obras Civiles'),
(75, 2, 3, 15, 'Modelación de Estructuras'),
(76, 2, 3, NULL, 'Ética y Responsabilidad Profesional'),
(77, 2, 3, 15, 'Control de Calidad en Obras Civiles'),
(78, 2, 3, 15, 'Diseño Hidráulico'),
(79, 2, 3, NULL, 'Soluciones Numéricas en Ingeniería'),
(80, 2, 3, NULL, 'Innovación Tecnológica Patentable I'),
(105, 2, 3, NULL, 'Cambio Climático y Desarrollo Sostenible'),
(106, 2, 3, 15, 'Peritaje y Avalúo'),
(124, 2, 3, 16, 'Intr. a las Ciencias Marítimas y Port.'),
(125, 2, 3, 16, 'Análisis Estructural'),
(126, 2, 3, 16, 'Ing. Eléctrica Aplic. a Term. Portuarias'),
(127, 2, 3, 16, 'Estructuras de Hormigón'),
(128, 2, 3, 16, 'Geotécnica Marítima I'),
(129, 2, 3, 16, 'Ingeniería Portuaria'),
(130, 2, NULL, NULL, 'Pre-Cálculo'),
(131, 1, NULL, NULL, 'Matemática Básica'),
(132, 2, 3, 16, 'Seguridad Marítima y Portuaria'),
(133, 2, 3, 16, 'Elementos de Hidrodinámica'),
(134, 2, 3, 16, 'Estructuras de Acero'),
(135, 2, 3, 16, 'Patología del Acero y Concreto'),
(136, 2, 3, 16, 'Geotécnica Marítima II'),
(195, 1, 1, 4, 'Relaciones Humanas y Superv. de Personal'),
(199, 1, 1, 4, 'Tecnología de Base de Datos'),
(210, 2, 2, 8, 'Comportamiento Org. y Adm. de Personal'),
(236, 2, 3, 14, 'Gestión de Proyectos'),
(239, 2, 2, 8, 'Contabilidad y Control de Costos'),
(241, NULL, 2, NULL, 'Metodología de la Investigación'),
(242, 1, 6, 30, 'Instalación de Talleres'),
(243, 1, 6, 30, 'Electrónica Básica'),
(244, 1, 6, 30, 'Laboratorio de Electrónica Básica'),
(245, 1, 6, 30, 'Especificaciones Técnicas de Ref. y A/A'),
(246, 1, 6, 30, 'Electricidad Aplicada y Motores Electr.'),
(247, 1, 6, 30, 'Lab. de Electricidad Aplic. y Mot. Elect.'),
(248, 1, 6, 30, 'Transferencia de Calor'),
(249, 1, 6, 30, 'Instalación de Sistemas de Refrig. y A/A'),
(250, 1, 6, 30, 'Lab. Instal. de Sistemas de Refrig. y A/A'),
(251, 1, 6, 30, 'Mantenimiento de Sist. de Refrig. y A/A'),
(252, 1, 6, 30, 'Lab. Mantenimiento de Sist. de Refrig. y A/A'),
(253, 1, 6, 30, 'Ciencias Termofluídicas'),
(254, 1, 6, 30, 'Lab. de Ciencias Termofluídicas'),
(255, 1, 6, 30, 'Legislación Laboral y Contrato'),
(256, NULL, NULL, NULL, 'Formación de Emprendedores'),
(257, 1, 6, 30, 'Sistemas de Control e Instrumentación'),
(258, 1, 6, 30, 'Ecuaciones Diferenciales'),
(259, 1, 6, 30, 'Auditoría Energét. Sist. de Refr. y A/A'),
(260, 1, 6, 30, 'Legislación y Manejo de Refrigerantes'),
(261, 1, 6, 30, 'Control Avanzado para Ref. y A/A'),
(262, 1, 6, 30, 'Lab. de Control Avanzado para Ref. y A/A'),
(284, 2, 3, 14, 'Acueductos Rurales y Urbanos'),
(285, 2, 3, 14, 'Sistemas de Alcantarillados'),
(286, 2, 3, 14, 'Salud Pública'),
(287, 2, 3, 14, 'Tratamiento de Agua Potable'),
(288, 2, 3, 14, 'Calidad Ambiental'),
(289, 2, 3, 14, 'Tratamiento de Aguas Residuales'),
(290, 2, 3, 14, 'Gestión de Riesgos'),
(291, 2, 3, 14, 'Higiene y Seguridad Industrial'),
(297, 2, 3, NULL, 'Modelación Hidrológica e Hidráulica'),
(298, 2, 3, NULL, 'Desarrollo de Competencias Docentes'),
(368, 2, 1, 1, 'Fundamentos de Sistemas de Información'),
(369, 2, 1, 1, 'Desarrollo de Software Orientada a Objetos'),
(370, 2, 1, 1, 'Contabilidad Financier'),
(371, 2, 1, 1, 'Ingeniería de Software'),
(400, 2, 2, 8, 'Gestión y Control de Calidad'),
(409, 2, 6, 27, 'Control de Costos'),
(482, 2, 2, 8, 'Práctica en Empresas'),
(485, 2, 1, 1, 'Administración y Adquisiciones de TIC'),
(486, 2, 1, 1, 'Infraestructura Computacional de TI'),
(487, 2, 1, 1, 'Diseño y Evaluación de Interfaces'),
(488, 2, 1, 1, 'Ingeniería de Software Aplicada'),
(489, 2, 1, 1, 'Investigación de Operaciones'),
(497, 2, 2, 8, 'Formulación, Eval. y Gestión de Proy.'),
(498, 2, 2, 8, 'Ingeniería de Manufactura'),
(499, 2, 2, 8, 'Diseños Industriales'),
(500, 2, 2, 8, 'Distribución de Planta'),
(542, 2, 2, 7, 'Mecánica'),
(543, 2, 2, 7, 'Introducción a la Vida Laboral'),
(548, 2, 2, 7, 'Formulación y Evaluación de Proyectos'),
(549, 2, 2, 7, 'Planificación I'),
(551, 2, 2, 7, 'Planificación II'),
(552, 2, 2, 7, 'Investigación de Mercado'),
(554, 2, 2, 7, 'Administración Financiera Avanzada'),
(556, 2, 2, 7, 'Logística y Cadena de Suministro'),
(557, 2, 2, 7, 'Responsabilidad Social'),
(558, 1, 3, NULL, 'Legislación del Trabajo'),
(588, 2, 2, 7, 'Simulación'),
(590, 2, 5, NULL, 'Circuitos I'),
(591, 2, 2, 7, 'Diseño de Experimentos'),
(598, 1, 1, 4, 'Fundamentos de Electricidad'),
(608, 2, 1, NULL, 'Introducción a la Química'),
(614, 2, 5, 22, 'Termodinámica I'),
(615, 2, 5, 22, 'Termodinámica II'),
(619, 1, 6, NULL, 'Mecánica Básica'),
(623, 2, NULL, NULL, 'Tecnología Mecánica'),
(627, 1, 6, 29, 'Introducción a la Adm. de Personal'),
(628, 2, 6, NULL, 'Inglés Científico'),
(630, 1, 6, 29, 'Electricidad Industrial'),
(640, 1, 6, 28, 'Mecánica de Fluidos Aplicada'),
(641, 1, 6, NULL, 'Diseño de Admon. Prog. Mant.'),
(642, 1, 6, 29, 'Electrónica Básica'),
(643, 1, 6, NULL, 'Técnicas de Investigación'),
(644, 1, 6, 29, 'Electrónica Industrial'),
(647, 1, 6, 30, 'Calidad de Aire en Interiores'),
(648, 1, 6, 28, 'Termotécnia'),
(658, 2, 3, NULL, 'Desarrollo de Competencias Gerenciales'),
(661, 1, 6, 28, 'Chasis'),
(662, 1, 6, 28, 'Laboratorio de Chasis'),
(664, 1, 6, 28, 'Diagnóstico'),
(665, 1, 6, 28, 'Laboratorio de Diagnóstico'),
(666, 1, 6, 28, 'Mecanismos Automotrices'),
(667, 1, 6, 28, 'Ecuaciones Diferenciales'),
(669, NULL, 1, NULL, 'Estadística con Apoyo Informático'),
(670, 2, 3, 15, 'Mantenimiento de Obras'),
(671, 2, 3, 15, 'Diseño de Ingeniería Civil 1'),
(672, 2, 3, 15, 'Diseño de Ingeniería Civil 2'),
(673, 2, 3, 15, 'Diseño de Ingeniería Civil 3'),
(675, 2, 3, 15, 'Geología Aplicada a Obras Civiles'),
(677, 2, 3, NULL, 'Tópicos Especiales'),
(678, 2, 3, 14, 'Interpretación de Planos y Espec.'),
(679, 2, 3, 14, 'Contaminación por Ruido'),
(682, 2, 1, 1, 'Fundamentos de Programación'),
(683, 1, 6, 28, 'Tecn. de los Materiales Aplicada al Aut.'),
(687, 2, 1, 2, 'Org. y Arquitectura de Computadora'),
(688, 2, 1, 2, 'Interacción Humano Computador (HCI)'),
(689, 2, 1, NULL, 'Sistemas Operativos'),
(703, 2, 1, NULL, 'Metodología de Investigación en Ing.'),
(709, 2, NULL, NULL, 'Ecuaciones Diferenciales Ordinaras'),
(710, 1, 2, 11, 'Supervisión y Liderazgo Empresarial'),
(711, 1, 2, 11, 'Introducción a la Admon. de Operaciones'),
(712, 1, 2, 11, 'Administración Financiera I'),
(713, 1, 2, 11, 'Elementos de Macroeconomía'),
(714, 1, 2, 11, 'Administración del Desempeño'),
(715, 1, 2, 11, 'Trabajo de Graduación I'),
(716, 1, 2, 11, 'Trabajo de Graduación II'),
(717, 1, 2, 11, 'Desarrollo del Talento Humano'),
(718, 1, 2, NULL, 'Logística Empresarial'),
(719, 1, 2, 11, 'Gestión de la Producción más Limpia'),
(722, 1, 2, 9, 'Evaluación del Desempeño'),
(723, 1, 2, 9, 'Administración de Procesos'),
(724, 1, 2, 9, 'Planificación y Control de Operaciones'),
(725, 1, 2, 9, 'Administración de Sueldos y Salarios'),
(727, 1, 2, 12, 'Dibujo Técnico Básico'),
(729, 1, 2, 12, 'Estudio de Métodos'),
(730, 1, 2, 12, 'Supervisión y Liderazgo Empresarial'),
(731, 1, 2, 12, 'Estudio de Tiempos y Movimientos'),
(732, 1, 2, 12, 'Gestión de la Producción más Limpia'),
(733, 1, 2, 12, 'Proc. de Manufactura y Selec. de Mater.'),
(734, 1, 2, 12, 'Mant. para la Gestión de la Producción'),
(735, 1, 2, 12, 'Herramientas de Inf. Aplic. a la Prod.'),
(736, 1, 2, 12, 'Fundamentos de Diseño de Experimentos'),
(737, 1, 2, 12, 'Evaluación de Proyectos'),
(738, 1, 2, 12, 'Materiales'),
(739, 1, 2, 12, 'Electricidad Industrial'),
(740, NULL, 1, NULL, 'Política y Legislación Informática'),
(741, NULL, 1, NULL, 'Desarrollo Lógico y Algorítmos'),
(742, NULL, NULL, NULL, 'Redacción de Informes y Expresión Oral'),
(743, 2, 1, 2, 'Herramientas de Programación Aplicada I'),
(744, 2, 1, NULL, 'Inglés Conversacional'),
(745, 2, 1, 2, 'Herramienta de Programación Aplicada II'),
(746, 2, 1, 2, 'Estructuras Discretas para la Comp.'),
(747, 2, 1, 2, 'Form. y Evaluación de Proy. Informáticos'),
(748, 2, 1, 2, 'Herramientas de Programación Aplicadas III'),
(749, 2, 1, 2, 'Electrónica Básica'),
(750, 2, 1, 2, 'Herramientas Aplic. a la Inteligencia Artificial'),
(751, 2, 1, 2, 'Herramientas de Computación Gráfica'),
(752, 1, 1, 4, 'Inglés Técnico'),
(753, 2, 1, 2, 'Ingeniería de Software II'),
(754, 2, 1, 2, 'Animación Digital y Video Juegos'),
(755, 2, 1, 2, 'Circuitos Lógicos'),
(756, NULL, 1, NULL, 'Tópicos Especiales I'),
(757, 2, 1, 2, 'Herramientas de Prog. Aplicadas IV'),
(758, 2, 1, 2, 'Ingeniería de Sistemas Robóticos'),
(759, 2, 1, 2, 'Modelado y Simulación'),
(760, 2, 1, NULL, 'Tópicos Especiales II'),
(761, 2, 1, 2, 'Redes Informáticas'),
(762, 1, 1, 4, 'Control de Gastos y Presupuesto'),
(763, 1, 1, 4, 'Auditoría de Redes'),
(764, 2, NULL, NULL, 'Sociología'),
(766, 1, 2, 13, 'Comunicación y Transporte Multimodal'),
(767, 1, 2, 13, 'Introducción a la Logística'),
(768, 1, 2, 13, 'Transporte Multimodal de Carga I'),
(769, 1, 2, 13, 'Gestión de la Calidad y Serv. al Cliente'),
(770, 1, 2, 13, 'Envase, Embalaje y Manejo de Materiales'),
(771, 1, 2, 13, 'Transporte Multimodal de Carga II'),
(772, 1, 2, 13, 'Administración de la Producción'),
(773, 1, 2, 13, 'Administración de Compras y Abast. I'),
(774, 1, 2, 13, 'Paq. Comp. Aplic. a la Log. y Transp. M. '),
(775, 1, 2, 13, 'Admon. de Compras y Abastecimiento II'),
(776, 1, 2, 13, 'Manejo y Seguridad de Carga'),
(777, 1, 2, 13, 'Planificación y Gestión de las Oper.'),
(778, 1, 2, 13, 'Simulación Aplicada a la Logísitica'),
(779, 1, 2, 13, 'Trabajo de Graduación I'),
(780, 1, 2, 13, 'Almacenes y Centros de Distribución'),
(781, 1, 2, 13, 'Normativa Aduanera y Comercio Exterior'),
(782, 1, 2, 13, 'Logística Internacional'),
(783, 1, 2, 13, 'Trabajo de Graduación II'),
(784, 3, 1, 6, 'Manejo y Control de Documentos'),
(785, 3, 1, 6, 'Administración Empresarial'),
(786, 3, 1, 6, 'Herramientas Ofimáticas Avanzadas'),
(787, 3, 1, 6, 'Herramientas para Multimedios'),
(788, 3, 1, 6, 'Sistemas de Información Empresarial'),
(789, 3, 1, 6, 'Diseño de Páginas Web'),
(790, 3, 1, 6, 'Fundamentos de Programación'),
(791, 3, 1, 6, 'Arquitectura y Redes de Computadora'),
(792, 3, 1, 6, 'Sistemas de Bases de Datos'),
(793, 3, 1, 6, 'Desarrollo Personal, Ética y Protocolo'),
(794, 3, 1, 6, 'Automatización de los Procesos Contables'),
(795, 3, 1, 6, 'Innovaciones en Tecn. Inform. para Negocios'),
(796, 3, 1, 6, 'Sistemas Operativos Aplicados'),
(797, 3, 1, 6, 'Negocio Electrónico'),
(798, 2, 1, 1, 'Evaluación de Proyecos de Tecn. de Información'),
(799, 2, 1, 1, 'Arquitectura y Desarrollo de Aplicaciones Web'),
(836, 2, 1, 1, 'Administración de Proyectos de Tecn. de Información'),
(837, 2, 1, 1, 'Seguridad Informática'),
(838, 2, 1, 1, 'Proyecto de Negocio para Ambientes Web'),
(839, 2, 1, 1, 'Fundamentos de Arquitectura Empresarial de TI'),
(840, 2, 1, 1, 'Inteligencia de Negocios como Estrategia de la Org.'),
(841, 2, 1, 1, 'Sistemas Empresariales de TI'),
(842, 2, 1, 1, 'Desarrollo de la Arquitectura Empresarial de TI'),
(843, 2, 1, 1, 'Diseño e Implementación de Mod. de Inteligencia de Negocio'),
(844, 2, 1, 1, 'Implantación de Sol. de Sistemas Empresariales de TI'),
(845, 2, 1, 1, 'Estan. Mod. y Pol. de Seguridad Apl. a TI'),
(846, 2, 1, 1, 'Análisis de Riesgos de TI'),
(847, 2, 1, 1, 'Informática Forense y el Trat. de la Información'),
(855, 2, 1, NULL, 'Dibujo Asistido por Computadoras'),
(856, 2, 1, 2, 'Base de Datos I'),
(857, 2, 1, 2, 'Base de Datos II'),
(858, 2, 1, 1, 'Probabilidad y Estadística para Ing.'),
(859, 1, 1, 4, 'Inglés Técnico I'),
(860, 1, 1, 4, 'Arquitectura de Protocolos'),
(861, 1, 1, 4, 'Administración de Sistemas Operativos'),
(862, 2, 5, NULL, 'Programación'),
(864, 2, 5, NULL, 'Teoría Electromagnética I'),
(865, 2, 5, NULL, 'Dinámica de Sistemas Electromecánicos'),
(867, 2, 5, NULL, 'Teoría Electromagnética II'),
(868, 2, 5, NULL, 'Probabilidad y Procesos Aleatorios'),
(869, 2, 5, NULL, 'Fundamentos de Electrónica'),
(872, 2, 5, 21, 'Fundamentos de Telecomunicaciones'),
(873, 2, 5, NULL, 'Tecnología Eléctrica'),
(874, 2, 5, NULL, 'Conversión de Energía I'),
(877, 2, 5, 21, 'Producción de la Energía Eléctrica'),
(878, 2, 5, NULL, 'Diseño Eléctrico e Iluminación'),
(880, 2, 5, NULL, 'Proyecto de Ingeniería'),
(881, 2, 5, 21, 'Comunicaciones Digitales'),
(882, 2, 5, NULL, 'Procesamiento Digital de Señales'),
(883, 2, 5, NULL, 'Redes y Protocolos'),
(884, 2, 5, 21, 'Medios de Transmisión y Antena'),
(887, 2, 5, 21, 'Control en Tiempo Discreto'),
(888, 2, 5, 21, 'Instrumentación Industrial'),
(889, 2, 5, 21, 'Sensores y Actuadores'),
(891, 2, 5, 21, 'Control de Sist. Secuenciales y Comb.'),
(893, 2, 5, NULL, 'Amplificadores Electrónicos'),
(894, 2, 5, NULL, 'Circuitos Lógicos Electrónicos'),
(895, 2, 5, NULL, 'Microprocesadores'),
(896, 2, 5, 21, 'Diseño de Sistemas Especiales'),
(900, 1, 5, NULL, 'Inglés II (Technical Report)'),
(901, 1, 5, NULL, 'Teoría de Circuitos I'),
(902, 1, 5, NULL, 'Dibujo Lineal Asistido por Computadora'),
(903, 1, 5, NULL, 'Teoría de Circuitos II'),
(904, 1, 5, NULL, 'Taller de Equipos y Mediciones'),
(905, 1, 5, NULL, 'Vectores, Matrices y Números Complejos'),
(906, 1, 5, NULL, 'Electrónica I'),
(907, 1, 5, NULL, 'Taller de Primeros Auxilios'),
(908, 1, 5, NULL, 'Taller de Seguridad en Inst. Eléctricas'),
(909, 1, 5, NULL, 'Taller de Formación de Emprendedores'),
(910, 1, 5, 25, 'Máquinas Eléctrica I'),
(911, 1, 5, 25, 'Electrónica Digital'),
(912, 1, 5, NULL, 'Estadística y Probabilidad'),
(913, 1, 5, 25, 'Introducción a la Teoría de Control'),
(914, 1, 5, NULL, 'Algorítmos y Programación'),
(915, 1, 5, 25, 'Máquinas Eléctricas II'),
(916, 1, 5, 25, 'Electrónica de Potencia'),
(917, 1, 5, 25, 'Técnicas de Control Digital I'),
(918, 1, 5, 25, 'Instalaciones Residenciales'),
(919, 1, 5, NULL, 'Presupuestos Eléctricos y Electrónicos'),
(920, 1, 5, 25, 'Proyecto Eléctrico y de Automatización'),
(923, 1, 5, 25, 'Instalaciones Comerciales e Industriales'),
(924, 1, 5, 25, 'Técnicas de Control Digital II'),
(927, 1, 5, NULL, 'Mantenimiento Eléctrico y Electrónico'),
(928, 1, 5, NULL, 'Tecnología Eléctrica y Ambiente'),
(929, 1, 5, 25, 'Sistemas Eléctricos de Potencia I'),
(930, 1, 5, 25, 'Instrumentación Electrónica Industrial'),
(931, 1, 5, 25, 'Comunicación Electrónica Industrial'),
(932, 1, 5, 25, 'Trabajo de Graduación I'),
(933, 1, 5, NULL, 'Ética y Marco Legal de la Profesión'),
(934, 1, 5, 25, 'Introducción a la Robótica Industrial'),
(935, 1, 5, 25, 'Protección de Sistemas Eléctricos'),
(936, 1, 5, 25, 'Sistemas Eléctricos de Potencia II'),
(937, 1, 5, 25, 'Trabajo de Graduación II'),
(938, 1, 5, 24, 'Electrónica II'),
(939, 1, 5, 24, 'Circuitos Digitales I'),
(940, 1, 5, 24, 'Electrónica III'),
(941, 1, 5, 24, 'Fundamentos de Comunicaciones'),
(942, 1, 5, 24, 'Circuitos Digitales II'),
(944, 1, 5, 24, 'Tópicos de Audio y Video'),
(945, 1, 5, 24, 'Electrónica IV'),
(951, 1, 5, 24, 'Campos Electromagnéticos y Antena'),
(952, 1, 5, 24, 'Comunicación de Datos'),
(953, 1, 5, 24, 'Proyecto de Comunicaciones'),
(954, 1, 5, 24, 'Telefonía'),
(955, 1, 5, 24, 'Comunicaciones Inalámbricas I'),
(956, 1, 5, 24, 'Redes de Computadoras y Protocolos'),
(957, 1, 5, 24, 'Trabajo de Graduación I'),
(958, 1, 5, 24, 'Tópicos de Microondas'),
(959, 1, 5, 24, 'Comunicaciones Inalámbricas II'),
(960, 1, 5, 24, 'Redes de Área Local'),
(961, 1, 5, 24, 'Trabajo de Graduación II'),
(962, 1, 5, NULL, 'Inglés I (Reading Comprehension)'),
(1121, 2, 5, 23, 'Conversión I'),
(1122, 2, 5, NULL, 'Conversión de Energía II'),
(1123, 2, 5, NULL, 'Electrónica de Potencia'),
(1124, 2, 5, NULL, 'Convertidores Electrónicos de Potencia'),
(1125, 2, 5, NULL, 'Control de Máquinas Eléctricas'),
(1126, 2, 5, 23, 'Potencia I'),
(1127, 2, 5, NULL, 'Sistemas de Potencia II'),
(1128, 2, 5, NULL, 'Líneas y Subestaciones'),
(1129, 2, 5, 23, 'Diseño Eléctrico e Iluminación'),
(1130, 2, 5, NULL, 'Operación de Plantas y Subestaciones'),
(1131, 2, 5, NULL, 'Producción de la Energía Eléctrica'),
(1132, 2, 5, NULL, 'Sistemas de Distribución'),
(1133, 2, 5, NULL, 'Protecciones Eléctricas'),
(1134, 2, 5, NULL, 'Tópicos Especiales de Potencia'),
(1135, 2, 5, 23, 'Circuitos Lógicos Electrónicos'),
(1136, 2, 5, NULL, 'Microprocesadores'),
(1137, 2, 5, NULL, 'Computadores Digitales'),
(1138, 2, 5, NULL, 'Diseño de Sistemas Especiales'),
(1139, 2, 5, NULL, 'Microelectrónica'),
(1140, 2, 5, NULL, 'Electrónica Aplicada'),
(1141, 2, 5, NULL, 'Optoelectrónica'),
(1142, 2, 5, NULL, 'Electrónica de Potencia'),
(1143, 2, 5, NULL, 'Circuitos Electrónicos de Comunicaciones'),
(1144, 2, 5, NULL, 'Biosensores'),
(1145, 2, 5, NULL, 'Electromedicina'),
(1146, 2, 5, NULL, 'Óptica Biomédica'),
(1147, 2, 5, NULL, 'Tópicos Especiales de Electrónica'),
(1148, 2, 5, 23, 'Síntesis de Flitros Analógicos'),
(1149, 2, 5, NULL, 'Comunicaciones Inalámbricas'),
(1150, 2, 5, 23, 'Técnicas de Estimación y Sincronización'),
(1151, 2, 5, NULL, 'Procesamiento Digital de Imágenes'),
(1152, 2, 5, NULL, 'Visión Artificial'),
(1153, 2, 5, 23, 'Amplificadores Electrónicos'),
(1154, 2, 5, NULL, 'Circuitos Electrónicos de Comunicaciones'),
(1155, 2, 5, NULL, 'Tráfico y Conmutación'),
(1156, 2, 5, NULL, 'Comunicaciones Ópticas'),
(1157, 2, 5, NULL, 'Redes de Telecomunicaciones'),
(1158, 2, 5, NULL, 'Comunicaciones por Radiofrecuencias'),
(1159, 2, 5, 23, 'Sistemas de Microondas'),
(1160, 2, 5, NULL, 'Introducción a la Comprensión de Datos'),
(1161, 2, 5, NULL, 'Tópicos Especiales de Telecomunicaciones'),
(1162, 2, 5, 23, 'Control en Tiempo Discreto'),
(1163, 2, 5, NULL, 'Técnicas Avanzadas de Control'),
(1164, 2, 5, NULL, 'Sistemas de Control Inteligente'),
(1165, 2, 5, 23, 'Instrumentación Industrial'),
(1166, 2, 5, NULL, 'Sensores y Actuadores'),
(1167, 2, 5, NULL, 'Redes de Comunicación para Control'),
(1168, 2, 5, NULL, 'Procesamiento Digital de Señales'),
(1169, 2, 5, NULL, 'Visión Artificial'),
(1170, 2, 5, NULL, 'Motores Eléctricos'),
(1171, 2, 5, NULL, 'Programación en Tiempo Real'),
(1172, 2, 5, NULL, 'Robótica Industrial'),
(1173, 2, 5, 22, 'Control de Sist. Secuenciales y Comb.'),
(1174, 2, 5, NULL, 'Tópicos Especiales de Control'),
(1181, 2, 3, 15, 'Ingeniería Geotécnica'),
(1182, 2, 3, 15, 'Métodos y Costos de Construcción'),
(1183, 2, 3, 15, 'Planeamiento y Control de Proyectos'),
(1184, 2, 5, NULL, 'Comunicación Oral y Escrita'),
(1185, 2, 5, 22, 'Estática'),
(1186, 2, 5, 22, 'Tecnología Mecánica'),
(1187, 2, 5, 22, 'Dinámica'),
(1188, 2, 5, NULL, 'Circuitos II'),
(1192, 2, 5, NULL, 'Teoría de Control I'),
(1193, 2, 5, NULL, 'Teoría de Control II'),
(1401, 2, 3, 15, 'Seguridad de la Construcción'),
(1962, 1, 2, NULL, 'Estadística II'),
(2122, NULL, NULL, NULL, 'Matemáticas para la Administración I'),
(2123, 3, NULL, NULL, 'Matemática para la Administración II'),
(2324, 1, 6, 28, 'Cálculo Diferencial e Integral II'),
(2375, 2, 6, NULL, 'Redacción de Informes Técnicos'),
(2376, 2, 5, 23, 'Microondas'),
(2378, 1, 5, NULL, 'Comunicación Escrita'),
(2380, 2, 5, NULL, 'Estadística'),
(2381, 1, 5, NULL, 'Esquemas Eléctricos y Electrónicos'),
(2392, 2, 5, NULL, 'Sistemas de Potencia'),
(2401, 2, 5, NULL, 'Sintesis de Flitros Analógicos'),
(2403, 2, 5, NULL, 'Diseño de Circuitos Digit. Electrónicos'),
(2422, 1, 6, 28, 'Cálculo Diferencial e Integral I'),
(2424, 1, 6, NULL, 'Cálculo Diferencial I'),
(2425, 1, 6, NULL, 'Cálculo Diferencial II'),
(2426, 1, 6, 29, 'Evaluación de Proyectos'),
(2540, 1, NULL, NULL, 'Álgebra de Vectores y Matrices'),
(2677, 2, NULL, NULL, 'Estática'),
(2680, 2, NULL, NULL, 'Dinámica'),
(2681, 2, 2, 7, 'Resistencia de Materiales I'),
(3015, 2, 2, 7, 'Programación de Computadoras I'),
(3016, NULL, 2, NULL, 'Idioma I (Español)'),
(3018, NULL, 2, NULL, 'Idioma II (Inglés)'),
(3020, 2, NULL, NULL, 'Administración'),
(3021, 2, NULL, NULL, 'Sistemas Contables'),
(3023, 2, 2, 7, 'Microeconomía'),
(3024, 2, 2, 7, 'Sistemas Eléctricos'),
(3025, 2, 2, 7, 'Proceso de Flujos'),
(3026, 2, 2, 7, 'Macroeconomía'),
(3050, 2, 2, 7, 'Termodinámica I'),
(3051, 2, 2, 7, 'Diseño Mecánico'),
(3053, NULL, 2, NULL, 'Comportamiento Organizacional'),
(3055, NULL, 2, NULL, 'Formación de Emprendedores'),
(3056, 2, 2, 7, 'Gestión de Calidad I'),
(3057, NULL, 2, NULL, 'Estudio de Trabajo'),
(3059, 2, 2, NULL, 'Ingeniería Ambiental'),
(3060, NULL, 2, NULL, 'Seguridad e Higiene Ocupacional'),
(3061, 2, 2, 7, 'Gestión de Calidad II'),
(3063, NULL, NULL, NULL, 'Legislación Laboral y Comercial'),
(3067, NULL, NULL, NULL, 'Ética Profesional'),
(3068, 2, 2, 7, 'Gerencia Estratégica'),
(3069, 2, 2, 8, 'Planificación'),
(3070, NULL, 2, NULL, 'Gerencia de Proyectos'),
(3071, NULL, 2, NULL, 'Comercio Internacional'),
(3505, 2, 5, 22, 'Diseño Mecánico I'),
(3605, 2, 5, 22, 'Diseño Mecánico II'),
(3608, 2, 5, NULL, 'Circuitos III'),
(3940, 2, NULL, NULL, 'Dinámica Aplicada'),
(3943, 2, NULL, NULL, 'Mecánica de Fluidos II'),
(3952, 2, 5, 22, 'Turbomaquinaria'),
(3957, 2, 2, 7, 'Contabilidad de Costos'),
(3961, 2, 2, 8, 'Instrumentación y Control'),
(3993, 1, 3, NULL, 'Fundamentos de Contabilidad'),
(4368, 2, 5, 22, 'Aire Acondicionado y Refrig.'),
(4378, 1, 6, 29, 'Estática y Resistencia de Mate'),
(4389, 2, 5, 21, 'Ingeniería Económica'),
(4390, 2, 6, 27, 'Producción'),
(4402, 1, 6, NULL, 'Herramientas Informáticas'),
(4446, 1, 6, NULL, 'Matemática Básica I'),
(4456, 1, 6, NULL, 'Laboratorio de Electricidad Básica'),
(4457, 1, 6, NULL, 'Matemática Básica II'),
(4462, 1, 6, 29, 'Tecnología y Mecánica de Precisión'),
(4463, 1, 6, NULL, 'Electricidad Básica'),
(4464, 1, 6, 28, 'Electrónica Básica'),
(4468, 1, 6, NULL, 'Medi. Prop. Gas. Liq. y Sol.'),
(4469, 1, 6, 28, 'Control de la Contaminación Vehicular'),
(4470, 1, 6, 28, 'Laboratorio de Electricidad Básica'),
(4471, 1, 6, 28, 'Laboratorio de Electrónica Básica'),
(4472, 1, 6, 28, 'Seminario de Tópicos Esp. de Automotriz'),
(4473, 1, 6, 28, 'Fundamento de Motores'),
(4477, 1, 6, 28, 'Electricidad Aplicada  al Automóvil'),
(4478, 1, 6, 28, 'Lab. Electricidad Aplicada al Automóvil'),
(4479, 1, 6, 28, 'Transmisión Manual I'),
(4480, 1, 6, 28, 'Laboratorio de Transmisión I (Manual)'),
(4481, 1, 6, 28, 'Aire Acondicionado'),
(4482, 1, 6, 28, 'Laboratorio de Aire Acondicionado'),
(4483, 1, 6, 28, 'Motores Gasolina I'),
(4484, 1, 6, 28, 'Lab. Motores Gasolina I'),
(4485, 1, 6, 28, 'Electrónica Aplicada a Automóviles'),
(4486, 1, 6, 28, 'Lab. de Electrónica Aplicada a Automóviles'),
(4489, 1, 6, 28, 'Motores Diesel I'),
(4490, 1, 6, 28, 'Laboratorio de Motores Diesel I'),
(4491, 1, 6, 28, 'Motores Gasolina II'),
(4492, 1, 6, 28, 'Laboratorio Motores de Gasolina II'),
(4493, 1, 6, 28, 'Motores Diesel II'),
(4494, 1, 6, 28, 'Laboratorio de Motores Diesel II'),
(4495, 1, 6, 28, 'Transmisión II (Automática)'),
(4496, 1, 6, 28, 'Lab. de Transmisión II (Automática)'),
(4501, 1, 6, 28, 'Reconstrucción de Motores'),
(4503, 1, 6, 28, 'Lab. de Reconstrucción de Motores'),
(4504, 1, 6, 28, 'Gestión Comercial'),
(4505, 1, 6, 28, 'Transmisión III'),
(4506, 1, 6, 28, 'Lab. de Transmisión III'),
(4507, 1, 6, 29, 'Lab. de Tec. Mecánica de Precisión I'),
(4508, 1, 6, 29, 'Materiales'),
(4509, 1, 6, 29, 'Lab. de Materiales'),
(4510, 1, 6, 29, 'Tecnología Mecánica de Precisión II'),
(4511, 1, 6, 29, 'Lab. de Tec. Mecánica de Precisión II'),
(4512, 1, 6, 29, 'Tecnología y Hojalatería'),
(4513, 1, 6, 29, 'Lab. de Tecnología y Hojalatería'),
(4514, 1, 6, NULL, 'Mecánica de Fluidos'),
(4515, 1, 6, NULL, 'Lab. de Mecánica de Fluidos'),
(4516, 1, 6, 29, 'Tecnología y Mecánica de Precisión III'),
(4517, 1, 6, 29, 'Lab. de Tec. Mecánica de Precisión III'),
(4518, 1, 6, 29, 'Tecnología de Soldadura I'),
(4519, 1, 6, 29, 'Lab. de Tecn. de Soldadura I'),
(4520, 1, 6, 29, 'Diseño de Máquinas I'),
(4521, 1, 6, 29, 'Tecnología y Motores de Gasolina'),
(4522, 1, 6, 29, 'Lab. de Tec. de Motores de Gasolina'),
(4523, 1, 6, 29, 'Máquinas Térmicas'),
(4524, 1, 6, 29, 'Lab. de Máquinas Térmicas'),
(4525, 1, 6, 29, 'Tecnología de Soldadura II'),
(4526, 1, 6, 29, 'Lab. de Tec. de Soldadura II'),
(4527, 1, 6, 29, 'Tecnología y Motores Diesel'),
(4528, 1, 6, 29, 'Lab. de Tecn. de Motores Diesel'),
(4529, 1, 6, 29, 'Diseño de Máquina II'),
(4530, 1, 6, 29, 'Turbomaquinarias'),
(4531, 1, 6, 29, 'Laboratorio de Turbomaquinarias'),
(4532, 1, 6, 29, 'Mecánica de Fluidos Aplicada'),
(4533, 1, 6, 29, 'Lab. de Mecánica de Fluidos Aplicada'),
(4534, 1, 6, 29, 'Metalurgia Aplicada'),
(4535, 1, 6, 29, 'Lab. de Metalurgia Aplicada'),
(4536, 1, 6, 29, 'Sistema de Control e Instrumentación'),
(4537, 1, 6, 29, 'Diseño e Instalaciones de Fontaneria'),
(4538, 1, 6, 29, 'Lab. de Diseño e Inst. de Fontaneria'),
(4539, 2, 6, NULL, 'Termodinámica'),
(4540, 2, 6, NULL, 'Laboratorio de Termodinámica'),
(4541, 1, 6, 30, 'Hojal. Aplic. en Refrigeración y A/A'),
(4542, 1, 6, 30, 'Lab. Hoj. Apl. Ref. y A/A'),
(4545, 1, 6, 30, 'Refr. Dom. y Comercial'),
(4546, 1, 6, 30, 'Lab. de Ref. Dom. Com.'),
(4547, 1, 6, 30, 'Soldadura en Refrigeración y A/A'),
(4548, 1, 6, 30, 'Lab. de Sold. en Ref. y A/A'),
(4551, 1, 6, 30, 'Contr. en Sist. en Refrigeración y A/A'),
(4552, 1, 6, 30, 'Lab. Contr. en Sist. en Refrigeración y A/A'),
(4553, 1, 6, 30, 'Refrig. Industr. y S. Esp.'),
(4554, 1, 6, 30, 'Lab. Refrig. Industr. y S. Esp.'),
(4555, 1, 6, 30, 'Sistema de Aire Acondicionado'),
(4556, 1, 6, 30, 'Lab. Sistema de Aire Acondicionado'),
(4559, 1, 6, 30, 'Sist. Esp. de Aire Acondicionado y Vent.'),
(4560, 1, 6, 30, 'Lab. de Sist. Esp. de Aire Acondicionado y Vent.'),
(4562, 1, 6, 30, 'Sist. Refr. de Baja Temp.'),
(4563, 1, 6, 30, 'Lab. Sist. Refr. de Baja Temp.'),
(4564, 2, 6, 27, 'Diseño Mecánico'),
(4566, 2, 6, 27, 'Sold. de Mant.'),
(4567, 2, 6, 27, 'Sel. Eq. y Traz. Planta'),
(4568, 2, 6, 27, 'Inst. y Mant. Sist. Eleéctricos'),
(4569, 2, 6, 27, 'Sistemas de Bombeo'),
(4570, 2, 6, 27, 'Administración y Evaluación de Proyectos'),
(4571, 2, 6, 27, 'Asp. Hum. de la Org.'),
(4572, 2, 6, 27, 'Mant. Infraestr. Civil'),
(4574, 2, 6, 27, 'Mant. Sist. Refr. y A/A'),
(4575, 2, 6, 27, 'Legislación Laboral y Contratos'),
(4576, 2, 6, 27, 'Auditoría Energética'),
(4577, 2, 6, 27, 'Mant. Sist. Mecanic.'),
(4578, 2, 6, 27, 'Trabajo de Graduación'),
(4579, 2, 6, 27, 'Admin. Prog. Mant.'),
(4580, 2, 6, 27, 'Diagn. de Fallas Mecánicas'),
(4581, 2, 6, 27, 'Estrategia de Mantenimiento'),
(4582, 2, 6, 27, 'Trabajo de Graduación II'),
(4583, 2, 6, 27, 'Ingeniería Termodinámica'),
(4584, 2, 6, 27, 'Fundamentos de Ingeniería Ambiental'),
(4740, 1, 3, 17, 'Inspección de Obras'),
(4743, 1, 3, 17, 'Construcción de Obras'),
(4816, 1, 6, NULL, 'Organización de Talleres'),
(4864, 1, 2, NULL, 'Control de Costos'),
(4882, 1, 3, 19, 'Carretera I'),
(4953, 1, 6, 29, 'Trabajo de Graduación I'),
(4954, 1, 6, 30, 'Trabajo de Graduación I'),
(4985, 2, 5, 22, 'Trabajo de Graduación I'),
(5051, 2, 6, 26, 'Mecanismo'),
(5068, 1, 2, NULL, 'Estadística I'),
(6306, 2, 5, NULL, 'Sistemas Contables'),
(6309, 2, 5, NULL, 'Ingeniería Ambiental'),
(6322, 2, 5, NULL, 'Metodología de la Investigación'),
(6323, 2, 5, 23, 'Trabajo de Graduación I'),
(6326, 2, 5, NULL, 'Formación de Emprendedores'),
(6327, 2, 5, 23, 'Trabajo de Graduación II'),
(7107, 2, NULL, NULL, 'Química General para Ingenieros'),
(7123, 2, NULL, NULL, 'Termodinámica I'),
(7125, 2, NULL, NULL, 'Diseño de Elem. de Máquinas I'),
(7128, 2, NULL, NULL, 'Mecánica de Fluidos I'),
(7134, 2, NULL, NULL, 'Diseño de Elem. de Máquinas II'),
(7136, 1, 3, 18, 'Higiene Industrial y Seguridad del Trab.'),
(7139, 2, NULL, NULL, 'Termodinámica II'),
(7194, 1, 2, 12, 'Tecnología Mecánica'),
(7195, 1, 2, NULL, 'Elementos de Ingeniería Económica'),
(7200, 1, 2, 12, 'Seguridad e Higiene Industrial'),
(7212, 2, 6, 27, 'Ingeniería Eléctrica'),
(7215, 2, 2, NULL, 'Dinámica Aplicada y Teoría de Control'),
(7223, NULL, 2, NULL, 'Investigación de Operaciones I'),
(7230, NULL, 2, NULL, 'Investigación de Operaciones II'),
(7232, 1, 2, 12, 'Decisiones Financieras'),
(7234, NULL, 2, NULL, 'Diseños de Sist. de Información'),
(7235, 2, 2, 7, 'Proceso de Fabricación'),
(7242, 1, 2, NULL, 'Economía'),
(7313, 1, 3, 18, 'Elementos de Hidráulica'),
(7322, 1, 3, 18, 'Plomería II'),
(7331, 1, 3, NULL, 'Materiales de Construcción'),
(7334, 1, 3, 17, 'Contratos y Especificaciones'),
(7341, 1, 2, 11, 'Sistemas de Información'),
(7350, 1, 2, 12, 'Derecho Laboral'),
(7440, 1, 3, 19, 'Topografía Legal y Urbana'),
(7445, 1, 3, 19, 'Avaluo y Catastro'),
(7447, 1, 3, 19, 'Cartografía'),
(7451, 2, NULL, NULL, 'Transferencia de Calor'),
(7460, 1, 2, 12, 'Técnica de Planif. y Control I'),
(7461, 1, 2, 12, 'Técnica de Planif. y Control II'),
(7465, 1, 2, 12, 'Control de Calidad'),
(7467, 1, 3, NULL, 'Estadística'),
(7481, 1, 6, NULL, 'Supervisión y Relaciones Hum.'),
(7485, 1, 6, 30, 'Fundamentos de Diseño Mecánica'),
(7494, 1, 6, NULL, 'Legislación Laboral y Contratos'),
(7497, 2, 2, 8, 'Procesos y Equipo de Combustión'),
(7512, 2, 5, NULL, 'Termodinámica'),
(7524, 2, 5, 23, 'Líneas de Transmisión y Antena'),
(7525, 2, 5, 23, 'Comunicaciones I'),
(7526, 2, 5, 23, 'Comunicaciones II'),
(7549, 1, 3, 17, 'Taller I'),
(7551, 1, 3, 17, 'Taller I'),
(7552, 1, 3, 17, 'Taller IV'),
(7554, 1, 3, NULL, 'Administración de Empresas'),
(7567, 1, 6, 29, 'Teoría de Máquinas'),
(7568, 1, 6, 29, 'Instalaciones Mecánicas y Mant.'),
(7569, 2, 6, 27, 'Sistemas de Control e Instrum.'),
(7572, 1, 6, 29, 'Proc. Esp. de Soldadura'),
(7573, 2, 6, 27, 'Fund. Equipo Pesado y Mecánica Agrícola'),
(7585, 2, 6, 26, 'Teoría de Control'),
(7586, 2, 6, 26, 'Instrumentación y Control'),
(7616, 1, 6, 30, 'Tecnología de la Refrig. y A/A'),
(7650, 2, 6, 27, 'Seguridad e Higiene Industrial'),
(7651, 2, 2, 7, 'Trabajo de Graduación I'),
(7652, 2, 2, 7, 'Trabajo de Graduación II'),
(7653, 2, 2, 8, 'Trabajo de Graduación I'),
(7654, 2, 2, 8, 'Trabajo de Graduación II'),
(7677, 1, 2, 11, 'Administración de Servicios'),
(7684, 1, 2, 11, 'Introducción a la Microeconomía'),
(7685, 1, 2, NULL, 'Presupuesto'),
(7686, 1, 2, 11, 'Seguridad e Higiene Ocupacional'),
(7687, 1, 2, 11, 'Comercio Internacional I'),
(7688, 1, 2, 11, 'Administración de Créditos y Cobros'),
(7689, 1, 2, 11, 'Planificación y Organizac. del Trabajo'),
(7690, 1, 2, 11, 'Política Gub. y Admon. Pública'),
(7694, 1, 2, 11, 'Admon. Financiera II'),
(7695, 1, 2, 11, 'Auditoría Administrativa'),
(7698, 1, 2, 11, 'Leg. Merc. y Fiscal'),
(7699, NULL, NULL, NULL, 'Admon. y Eval. de Proy.'),
(7701, 1, 2, 11, 'Comercio Internacional II'),
(7702, 1, 2, 11, 'Met. Cuanti. Aplic. a la Admon.'),
(7703, 1, 2, 11, 'Mercadeo Avanzado'),
(7722, 2, 1, NULL, 'Métodos Numéricos para Ing.'),
(7749, 2, 5, NULL, 'Ética Profesional'),
(7784, 1, 2, 12, 'Gestión Total de la Calidad'),
(7789, 1, 2, 12, 'Trabajo de Graduación I'),
(7790, 1, 6, 28, 'Ética Profesional'),
(7794, 1, 2, 12, 'Diseños Industriales'),
(7796, 1, 2, 12, 'Trabajo de Graduación II'),
(7804, 1, 5, NULL, 'Teoría de Circuitos III'),
(7833, 1, 3, 18, 'Salud Pública y Medicina Prev.'),
(7841, 1, 3, 18, 'Epidemiología'),
(7842, 1, 3, 18, 'Química Ambiental'),
(7843, 1, 3, 18, 'Microbiología Ambiental'),
(7845, 1, 3, 18, 'Plomería I'),
(7847, 1, 3, 18, 'Legislación Sanitaria y Ambiental'),
(7849, 1, 3, 18, 'Agroquímicos'),
(7850, 1, 3, 18, 'Abastecimiento y Remoción de Aguas'),
(7888, 1, 5, 25, 'Instalación de Equipos Espec.'),
(7890, 1, 3, 17, 'Rehabilitación de Obras'),
(7892, 2, 6, 26, 'Computadora en Ingeniería Mecánica'),
(7893, 2, 6, NULL, 'Dibujo Mecánico Asistido por Computadora'),
(7894, 2, 6, NULL, 'Programación'),
(7895, 2, 6, NULL, 'Métodos Numéricos'),
(7896, 2, NULL, NULL, 'Mecánica de Materiales'),
(7897, 2, NULL, NULL, 'Ciencia de los Materiales I'),
(7898, 2, 6, 26, 'Electrónica Industrial'),
(7899, 2, 6, NULL, 'Fund. de Admon. de Personal'),
(7900, 2, NULL, NULL, 'Ciencia de los Materiales II'),
(7902, 2, NULL, NULL, 'Ingeniería de Manufactura'),
(7904, 2, 6, 27, 'Estadística para la Inv.'),
(7905, 2, 6, 26, 'Aire Acondicionado y Ventilación'),
(7906, 2, NULL, NULL, 'Diseño de Sistemas Térmicos y Fluídicos'),
(7907, 2, NULL, NULL, 'Procesos y Equipo de Combustión'),
(7908, 2, NULL, NULL, 'Plantas de Potencia'),
(7912, NULL, 6, NULL, 'Fundamentos de Ingeniería Ambiental'),
(7913, 1, 6, NULL, 'Seminario de Tópicos Especiales Ing. Mec.'),
(7915, 1, 6, 28, 'Evaluación de Proyectos Mecánicos'),
(7917, 2, 6, 26, 'Introducción a la Ing. Naval'),
(7953, 2, NULL, NULL, 'Eval. de Impacto Ambiental'),
(7963, 1, 3, 17, 'Instalaciones en Edificaciones'),
(7964, 1, 3, 17, 'Electricidad en la Construcc.'),
(7965, 1, 3, 17, 'Equipo de Construcción'),
(7968, NULL, 3, NULL, 'Presupuestos y Costos'),
(7970, 1, 3, 17, 'Sist. Moderno de Construcción'),
(7971, 1, 3, 17, 'Planificación y Control de Construcción'),
(7977, 1, 3, 17, 'Taller II'),
(7979, NULL, NULL, NULL, 'Dibujo Lineal y Geometría Descriptiva'),
(7980, 2, 3, 14, 'Química General I'),
(7982, NULL, NULL, NULL, 'Principios de Economía'),
(7985, 2, 3, NULL, 'Química General II'),
(7987, 2, NULL, NULL, 'Cálculo I'),
(7988, 2, NULL, NULL, 'Cálculo II'),
(8001, 2, 3, NULL, 'Estática'),
(8003, 2, 3, NULL, 'Programación'),
(8005, 2, 6, 26, 'Probabilidad y Estadísitica'),
(8007, 2, 3, NULL, 'Dinámica'),
(8008, 2, 3, NULL, 'Mecánica de Cuerpos Deformables I'),
(8011, NULL, NULL, NULL, 'Ecología General'),
(8012, 2, 3, 15, 'Mecánica de Cuerpos Deformables Ii'),
(8013, 2, 3, NULL, 'Mecánica de Fluidos'),
(8014, 2, 3, 15, 'Estructuras I'),
(8016, 2, 3, NULL, 'Materiales de Constr. y Norm. de Ensayo'),
(8018, 2, 3, 15, 'Estructuras II'),
(8019, 2, 3, 15, 'Hormigón'),
(8020, 2, 3, NULL, 'Hidraúlica'),
(8022, 2, 3, NULL, 'Termodinámica'),
(8023, 2, 3, NULL, 'Geología'),
(8025, 2, 3, 15, 'Hormigón II'),
(8026, 2, 3, NULL, 'Hidrología'),
(8027, 2, 3, 15, 'Ingeniería de Transporte I'),
(8028, 2, 3, NULL, 'Mecánica de Suelos'),
(8029, 2, 3, 15, 'Interpretación de Planos y Espec.'),
(8030, 2, 3, NULL, 'Sistemas Contables'),
(8031, 2, 3, 15, 'Estructuras Metálicas'),
(8032, 2, 3, 15, 'Suministro y Recolección de Aguas'),
(8033, 2, 3, 15, 'Ingeniería de Transportes II'),
(8035, 2, NULL, NULL, 'Administración de Recursos Humanos'),
(8036, 2, 3, 15, 'Planeamiento y Urbanismo'),
(8038, 2, 3, NULL, 'Práctica de Campo'),
(8039, 2, 3, NULL, 'Mediciones Hidrológicas y Ambientales'),
(8040, 2, 3, 15, 'Fuentes y Estructuras Especiales'),
(8044, 2, 3, NULL, 'Metodología de la Investigación'),
(8046, 2, 3, 15, 'Trabajo de Graduación I'),
(8048, 2, 3, NULL, 'Evaluación de Impacto Ambiental'),
(8050, 2, 3, 16, 'Gestión Empresarial'),
(8051, 2, 3, 15, 'Legislación de Trabajo'),
(8053, 2, 3, 15, 'Trabajo de Graduación II'),
(8054, 1, NULL, NULL, 'Matemática I'),
(8058, 1, 3, NULL, 'Inglés Técnico'),
(8059, 1, NULL, NULL, 'Matemática II'),
(8063, 1, 3, NULL, 'Inglés Técnico II'),
(8066, 1, NULL, NULL, 'Matemática III'),
(8069, 2, 3, 16, 'Teoría y Estructura de Buque'),
(8084, 1, 3, 18, 'Saneamiento Ambiental'),
(8093, 2, 3, 16, 'Economía del Transporte Marítimo'),
(8101, 1, 3, NULL, 'Dibujo Técnico Básico'),
(8103, 1, 3, NULL, 'Idioma I (Español)'),
(8105, 1, 3, NULL, 'Dibujo Aplicado'),
(8106, 1, 3, NULL, 'Topografía General'),
(8108, 1, 3, NULL, 'Seminario (Intr. a las Computadoras)'),
(8110, 1, 3, 19, 'Instrumentación'),
(8111, 1, 3, 19, 'Topografía Digital'),
(8112, 1, 3, 19, 'Fotogrametría'),
(8117, 1, 3, 18, 'Tratam. de Agua y A. Residuales'),
(8118, 1, 3, 18, 'Control de Alimentos y Vect.'),
(8127, 1, 3, NULL, 'Interpretación de Planos y Especific.'),
(8128, 1, 3, 17, 'Resistencia de Materiales'),
(8129, 1, 3, 17, 'Elementos de Mecánica de Suelo y Ciment.'),
(8130, 1, 3, 17, 'Fundamentos de Análisis Estructural'),
(8131, 1, 3, 17, 'Elementos de Concreto'),
(8132, 1, 3, 17, 'Fundamentos de Miembros Metálicos'),
(8135, 1, 3, 19, 'Geotécnia'),
(8136, 1, 3, 19, 'Geodesia I'),
(8137, 1, 3, 19, 'Carreteras II'),
(8138, 1, 3, 19, 'Geodesia II'),
(8139, 1, 3, 18, 'Fuentes y Captación de Aguas'),
(8319, 2, NULL, NULL, 'Física I (Mecánica)'),
(8320, 2, NULL, NULL, 'Física II (Eléctric. y Magnet.)'),
(8321, 2, NULL, NULL, 'Matemática Superios para Ing.'),
(8322, 2, NULL, NULL, 'Cálculo III'),
(8323, 2, 3, 14, 'Legislación Sanitaria y Ambiental'),
(8324, NULL, 3, NULL, 'Desechos Sólidos'),
(8325, 2, 3, 14, 'Microbiología Ambiental'),
(8326, 2, 3, 14, 'Desechos Indust. y Peligrosos'),
(8329, 2, 3, NULL, 'Elementos de Geomática'),
(8330, 2, 3, 14, 'Sociología'),
(8331, 2, 3, 14, 'Contaminación Atmosférica'),
(8332, 2, 3, 14, 'Ecotoxicología'),
(8333, 2, 3, NULL, 'Aguas Subterráneas'),
(8334, 1, 3, 18, 'Sistemas Ambientales'),
(8336, 2, 3, 14, 'Auditoría Ambiental'),
(8338, NULL, 3, NULL, 'Manejo de Cuencas'),
(8339, 2, 3, 14, 'Práctica de Campo II'),
(8340, 2, 3, 14, 'Trabajo de Graduación'),
(8341, 2, 3, 14, 'Trabajo de Graduación'),
(8342, 2, 3, NULL, 'Topografía'),
(8344, 1, 3, 19, 'Teledetección'),
(8346, 1, 3, 19, 'Sistemas Catastrales'),
(8349, 1, 3, 19, 'Introducción a los Sig.'),
(8353, 2, 1, NULL, 'Tecnología de Información y Comunicación'),
(8354, 1, 1, 4, 'Programación Aplicada I'),
(8355, 1, 1, NULL, 'Inglés I'),
(8356, 1, 1, 3, 'Contabilidad General'),
(8357, 1, 1, NULL, 'Sistemas Operativos I'),
(8358, 1, 1, 4, 'Programación Aplicada II'),
(8359, 2, 2, 8, 'Aire Acondicionado y Refrigeración'),
(8360, 1, NULL, NULL, 'Comunicación Oral y Escrita'),
(8361, NULL, 1, NULL, 'Sistemas Colaborativos'),
(8362, NULL, 1, NULL, 'Estructura de Datos I'),
(8363, 1, 1, 4, 'Comunicación de Datos'),
(8365, 1, 1, 4, 'Circuitos Lógicos'),
(8366, 1, 1, 4, 'Sistemas Operativos II'),
(8367, 1, 1, NULL, 'Estadística y Probabilidad'),
(8371, 1, 1, 4, 'Redes de Área Local'),
(8372, 1, 1, 4, 'Análisis y Diseño de Redes'),
(8375, 1, NULL, NULL, 'Metodología de la Investigación'),
(8376, 1, 1, 4, 'Seguridad y Privacidad en Redes I'),
(8379, 1, 1, 4, 'Redes para Multimedios'),
(8381, 1, 1, 3, 'Ética Profesional y Derecho'),
(8382, 1, 1, 4, 'Sistemas Operativos III'),
(8385, 1, 1, 4, 'Seguridad y Privacidad en Redes II'),
(8386, 1, 1, 4, 'Trabajo de Graduación I'),
(8387, 1, 1, 4, 'Redes Móviles e Inalámbricas'),
(8388, 1, 1, 4, 'Redes De Área Amplia'),
(8390, 1, 1, 4, 'Calidad de Servicios en Redes'),
(8391, 1, 1, 4, 'Trabajo de Graduación II'),
(8392, 1, 1, 3, 'Desarrollo de Software I'),
(8393, 1, 1, NULL, 'Desarrollo de Software II'),
(8394, NULL, 1, NULL, 'Estructura de Datos II'),
(8396, 1, 1, 3, 'Desarrollo de Software III'),
(8397, 1, 1, 3, 'Desarrollo de Software IV'),
(8398, 1, 1, 3, 'Base de Datos I'),
(8399, 1, 1, 3, 'Base de Datos II'),
(8400, 1, 1, 3, 'Desarrollo de Software V'),
(8401, 1, 1, 3, 'Desarrollo de Software VI'),
(8402, 1, 1, 3, 'Administración Financiera'),
(8403, 1, 1, NULL, 'Inglés II'),
(8404, 1, 1, 3, 'Economía'),
(8405, 1, 1, 3, 'Investigación de Operaciones'),
(8407, 1, 1, 3, 'Desarrollo de Software VII'),
(8408, 1, 1, 3, 'Desarrollo de Software VIII'),
(8409, 1, 1, 3, 'Desarrollo de Software IX'),
(8410, 1, 1, 3, 'Redes de Computadoras'),
(8411, 1, 1, 3, 'Seguridad en los Sistemas de Información'),
(8414, 1, 1, 3, 'Sistemas de Información Gerencial'),
(8415, 1, 1, 3, 'Trabajo de Graduación I'),
(8416, 1, 1, 3, 'Sistemas Gráficos'),
(8418, 2, 1, 2, 'Gerencia de Recursos Humanos'),
(8419, 1, 1, 3, 'Calidad de Software'),
(8420, 1, 1, 3, 'Trabajo de Graduación II'),
(8424, 2, 5, NULL, 'Ecol. y Manejo de Desech. Taller'),
(8441, 1, 3, NULL, 'Estática en un Plano'),
(8442, 2, NULL, NULL, 'Métodos Numéricos'),
(8443, NULL, 2, NULL, 'Estadística I'),
(8444, NULL, 2, NULL, 'Estadística II'),
(8445, 1, 6, NULL, 'Inglés Técnico'),
(8451, 2, 1, NULL, 'Ingeniería de Sistemas Dinámicos'),
(8452, 2, 1, 2, 'Inteligencia Artificial'),
(8455, 2, 1, 2, 'Sistemas Basados en el Conocimiento'),
(8456, 2, 1, 1, 'Simulación de Sistemas'),
(8457, 1, 1, 3, 'Ingeniería de Software I'),
(8461, 2, 1, NULL, 'Ingeniería Ambiental'),
(8462, 2, 1, 2, 'Lenguajes Formales, Automatas y Compil.'),
(8467, 2, 1, 2, 'Trabajo de Graduación I'),
(8469, 1, 1, NULL, 'Gerencia de Proyectos Informáticos'),
(8470, 2, 1, 2, 'Seguridad en Tecnología de Computación'),
(8472, NULL, 1, NULL, 'Formación de Emprendedores'),
(8473, 2, 1, 2, 'Trabajo de Graduación II'),
(8475, 2, 1, 1, 'Sistemas de Base de Datos I'),
(8477, 2, 1, NULL, 'Sistemas de Base de Datos II'),
(8480, 1, 1, NULL, 'Organización y Arquitectura de Computación I'),
(8486, 2, 1, 1, 'Auditoría de Tecnología de Información y Comunicación'),
(8488, 2, 1, 1, 'Teleinformática'),
(8489, 2, 1, 1, 'Trabajo de Graduación I'),
(8490, 2, 1, 1, 'Trabajo de Graduación II'),
(8501, 2, 5, 22, 'Trabajo de Graduación II'),
(8514, 2, 5, 21, 'Trabajo de Graduación II'),
(8515, 1, 6, 29, 'Trabajo de Graduación II'),
(8516, 1, 6, 30, 'Trabajo de Graduación II'),
(8523, 2, 5, 21, 'Trabajo de Graduación I'),
(8524, 2, 6, 26, 'Trabajo de Graduación I'),
(8525, 2, 6, 26, 'Trabajo de Graduación II'),
(8528, NULL, 1, NULL, 'Estructura de Datos'),
(8530, 2, 2, 7, 'Ciencia de los Materiales I'),
(8531, 2, 2, 8, 'Ingeniería Económica'),
(8532, 2, 2, 8, 'Economía Aplicada'),
(8533, 2, 2, 8, 'Mantenimiento Industrial'),
(8534, 2, 2, NULL, 'Mercadeo de Productos Industriales'),
(8536, 2, 2, NULL, 'Administración Financiera'),
(8538, 2, 2, 8, 'Instalaciones Eléctricas Ind.'),
(8542, NULL, 2, NULL, 'Administración de Recursos Humanos'),
(8543, NULL, 2, NULL, 'Ingeniería Económica'),
(8581, NULL, 1, NULL, 'Ingeniería de Software I'),
(8582, 2, 1, 2, 'Mecánica'),
(8583, 1, 4, 20, 'Lectura y Redacción I (Español)'),
(8584, 1, 4, 20, 'Inglés Nivel Intermedio'),
(8586, 1, 4, 20, 'Mecanografía Computarizada'),
(8587, 1, 4, 20, 'Matemática Comercial'),
(8589, 1, 4, 20, 'Lectura y Redacción II (Español)'),
(8590, 1, 4, 20, 'Conversación Inglesa I'),
(8592, 1, 4, 20, 'Tecnología de la Información (Inglés)'),
(8593, 1, 4, 20, 'Matemática Financiera'),
(8594, 1, 4, 20, 'Redacción Comericial (Español)'),
(8595, 1, 4, 20, 'Conversación Inglesa II'),
(8597, 1, 4, 20, 'Estadística'),
(8598, 1, 4, 20, 'Tecnología de la Información II (Inglés)'),
(8599, 1, 4, 20, 'Contabilidad Básica (Inglés)'),
(8603, 1, 4, 20, 'Finanzas y Banca (Inglés)'),
(8604, 1, 4, 20, 'Psicología General y Empresarial'),
(8605, 1, 4, 20, 'Tecnología de la Inf. III (Inglés)'),
(8606, 1, 4, 20, 'Mercadeo y Publicidad (Inglés)'),
(8609, 1, 4, 20, 'Planificación y Admon. Empresarial'),
(8610, 1, 4, 20, 'Derecho Mercantil y Laboral'),
(8611, 1, 4, 20, 'Protocolo y Etiqueta'),
(8612, 1, 4, 20, 'Geografía Turística de Panamá'),
(8613, 1, 4, 20, 'Técnicas de Expresión Oral (Español)'),
(8614, 1, 4, 20, 'Tec. de Asistencia Ejecutiva (Inglés)'),
(8615, 1, 4, 20, 'Toma de Decisiones Gerenciales (Inglés)'),
(8616, 1, 4, 20, 'Cult. y Entorno de la Soc. Pan. (Historia)'),
(8617, 1, 4, 20, 'Servicio al Cliente y Calidad (Inglés)'),
(8618, 1, 4, 20, 'Tráfico Internacional'),
(8622, 1, 4, 20, 'Formación y Promoción Profesional'),
(8623, 1, 4, 20, 'Metodología de la Investigación'),
(8626, 1, 4, 20, 'Trabajo de Graduación I'),
(8627, 1, 4, 20, 'Composición y Estilo'),
(8630, 1, 4, 20, 'Admon. y Supervisión de Recursos Humanos'),
(8631, 1, 4, 20, 'Relaciones Internacionales'),
(8632, 1, 4, 20, 'Técnicas de Negociación'),
(8633, 1, 4, 20, 'Trabajo de Graduación II'),
(8634, NULL, 2, NULL, 'Inglés I'),
(8635, NULL, 2, NULL, 'Contabilidad General'),
(8636, NULL, 2, NULL, 'Informática'),
(8637, NULL, 2, NULL, 'Administración'),
(8638, NULL, 2, NULL, 'Inglés II'),
(8639, 1, 2, NULL, 'Teoría de Recursos Humanos'),
(8640, 1, 2, NULL, 'Redacción de Informes Técnicos'),
(8641, 1, 2, 10, 'Planif. Org. del Trabajo'),
(8642, 1, 2, NULL, 'Tópicos Especiales'),
(8643, 1, 2, 10, 'Mercadotecnía I'),
(8644, 1, 2, 10, 'Mercadotecnía II'),
(8646, 1, 2, 10, 'Gestión de Cred. y Cobros'),
(8647, 1, 2, NULL, 'Gestión de Calidad'),
(8649, 1, 2, NULL, 'Investigación de Mercados'),
(8650, 1, 2, 10, 'Derecho Mercantil y Fiscal'),
(8651, 1, 2, 10, 'Sist. Comp. Aplic. al Mercadeo'),
(8652, 1, 2, 10, 'Gestión Empresarial'),
(8653, 1, 2, NULL, 'Derecho Laboral'),
(8654, 1, 2, 10, 'Administración de Compra y Abastecim.'),
(8655, 1, 2, 10, 'Mercadeo Internacional'),
(8656, 1, 2, NULL, 'Administración Financiera'),
(8657, 1, 2, 10, 'Ingeniería de Ventas'),
(8658, 1, 2, 10, 'Mercadeo Aplic. al Turismo'),
(8659, 1, 2, 10, 'Met. Cuant. Aplic. al Mercadeo'),
(8660, 1, 2, 10, 'Desarrollo de Prod. y Servicios'),
(8661, 1, 2, 10, 'Mercadeo Electrónico'),
(8662, 1, 2, 10, 'Comercio Internacional I'),
(8663, 1, 2, 10, 'Comportamiento del Consumidor'),
(8664, 1, 2, 10, 'Operaciones y Logísitica de la Empresa'),
(8665, 1, 2, 10, 'Trabajo de Graduación I'),
(8666, 1, 2, 9, 'Admon. y Eval. de Proy. de Inv.'),
(8667, 1, 2, 10, 'Logística Internacional'),
(8668, 1, 2, 10, 'Comercio Internacional II'),
(8670, 1, 2, 10, 'Sistema de Inf. de Mercadeo'),
(8671, 1, 2, 10, 'Trabajo de Graduación II'),
(8672, 1, 2, 9, 'Fund. de Rel. Indust.'),
(8674, 1, 2, 9, 'Ergonomía'),
(8677, 1, 2, 9, 'Estudio de Met. y Tiempos'),
(8678, 1, 2, NULL, 'Gestión de Mercado'),
(8679, 1, 2, 9, 'Seguridad e Higiene Industrial'),
(8680, 1, 2, 9, 'Sist. Comp. Aplic. a la Admon.'),
(8683, 1, 2, 9, 'Tec. de Reclut. y Selección'),
(8684, 1, 2, 9, 'Sistema de Inf. Gerencial'),
(8685, 1, 2, 9, 'Elementos de Productividad'),
(8686, 1, 2, 9, 'Auditoría de Seguridad e Higiene'),
(8687, 1, 2, 9, 'Comp. Humano en la Organización'),
(8688, 1, 2, 9, 'Supervisión y Liderazgo'),
(8689, 1, 2, NULL, 'Introducción a la Investigación de Operaciones'),
(8690, 1, 2, 9, 'Problemas Económicos de Panamá'),
(8691, 1, 2, 9, 'Desarrollo Organizacional'),
(8694, 1, 2, 9, 'Capac. y Desarrollo del Talento Humano'),
(8695, 1, 2, 9, 'Trabajo de Graduación I'),
(8696, 1, 2, 9, 'Neg. y Manejo de Conflicto'),
(8697, 1, 2, 9, 'Gerencia Estratégica del Recurso Humano'),
(8699, 1, 2, 9, 'Trabajo de Graduación II'),
(8718, NULL, NULL, NULL, 'Tópicos de Geografía e Historia de Panamá'),
(8729, 1, 1, NULL, 'Gerencia de Recursos Tecn. de Inf. y Com.'),
(8734, 1, 1, 4, 'Organización y Arquitectura de Comp. II'),
(8741, 1, 3, NULL, 'Fundamentos de Evaluación de Impacto Amb.'),
(8742, 1, 3, 19, 'Trabajo de Graduación I'),
(8743, 1, 3, NULL, 'Tópicos Especiales (Tec. de Actual. Prof.)'),
(8744, NULL, 3, NULL, 'Evaluación de Proyectos de Obras Civiles'),
(8745, 1, 3, 19, 'Ordenamiento Territorial'),
(8746, 1, 3, 19, 'Trabajo de Graduación II'),
(8747, 1, 3, 17, 'Trabajo de Graduación I'),
(8749, 1, 3, 17, 'Trabajo de Graduación II'),
(8756, 1, 3, 18, 'Trabajo de Graduación I'),
(8757, 1, 3, 18, 'Trabajo de Graduación II'),
(8758, 1, 3, NULL, 'Práctica de la Profesión'),
(8759, 1, 6, 28, 'Trabajo de Graduación I'),
(8760, 1, 6, 28, 'Trabajo de Graduación II'),
(8761, 2, 3, 16, 'Sist. de Inf. para la Gestión Portuaria'),
(8764, 2, 3, 16, 'Equipos de Manipulación de Carga'),
(8765, 2, 3, 16, 'Tipología de la Mercancía'),
(8767, 2, 3, 16, 'Operación y Explotación Portuaria'),
(8770, 2, 3, 16, 'Lectura e Interp. de Planos de Carga'),
(8771, 2, 3, 16, 'Terminales de Trasbordo'),
(8773, 2, 3, 16, 'Ingeniería de Costas'),
(8774, 2, 3, 16, 'Gestión y Dir. de Cadena de Suministros'),
(8775, 2, 3, 16, 'Transporte de Agua'),
(8776, 2, 3, 16, 'Explotación Comercial del Buque'),
(8777, 2, 3, 16, 'Logística en el Transporte Multimodal'),
(8778, 2, 3, 16, 'Regimen Jurídico y Legislac. Internac.'),
(8779, 2, 3, 16, 'Planif. y Contr. de Actividades Port.'),
(8782, 2, 3, 16, 'Trabajo de Graduación I'),
(8783, 2, 3, 16, 'Práctica de Campo'),
(8784, 2, 3, 16, 'Trabajo de Graduación II'),
(8817, 1, 4, 20, 'Admon. y Preservación de Documentos'),
(8819, 1, 4, 20, 'Humanidades, Ética y valores'),
(8820, 1, 4, 20, 'Lectura y Redacción I (Inglés)'),
(8821, 1, 4, 20, 'Lectura y Redacción II (Inglés)'),
(8822, 1, 4, 20, 'Comunicación Ejecutiva (Inglés)'),
(8823, 1, 4, 20, 'Comunicación Ejecutiva (Español)'),
(8824, 1, 4, 20, 'Traducción'),
(8825, 1, 4, 20, 'Lengua y Cultura Extranjera'),
(8826, 1, 1, 5, 'Desarrollo Curricular'),
(8827, 1, 1, 5, 'Tecnología Educativa I'),
(8828, 1, 1, 5, 'Herramientas de Programación'),
(8829, 1, 1, 5, 'Diseño Visual para la Educación'),
(8830, 1, 1, 5, 'Configuración y Mant. de Computadoras'),
(8831, 1, 1, 5, 'Computación'),
(8833, 1, 1, 5, 'Aprendizaje y Cognición'),
(8834, 1, 1, 5, 'Tecnología Educativa II'),
(8835, 1, 1, 5, 'Internet en la Educación'),
(8836, 1, 1, 5, 'Tecn. Multimedia Aplic. a la Educación'),
(8837, 1, 1, 5, 'Taller de Infor. Aplicada a la Educación'),
(8838, 1, 1, 5, 'Robótica Aplic. a la Educación'),
(8839, 1, 1, 5, 'Evaluación de los Aprend. en Informática'),
(8840, 1, 1, 5, 'Redes Informáticas'),
(8841, 1, 1, 5, 'Desarrollo Web'),
(8842, 1, 1, 5, 'Diseño y Animación en la Educación I'),
(8843, 1, 1, 5, 'Modelos de Desa. Sist. Aplic. a la Educación'),
(8844, 1, 1, 5, 'Educación en Atención a la Diversidad'),
(8846, 1, 1, 5, 'Constr. y Eval. de Software Educativo'),
(8847, 1, 1, 5, 'Teorías de Aprendizaje'),
(8848, 1, 1, 5, 'Sistemas de Bases de Datos'),
(8849, 1, 1, 5, 'Diseño y Animación en la Educación II'),
(8850, 1, 1, 5, 'SIstemas Inf. para la Educación'),
(8852, 1, 1, 5, 'Sist. Inteligentes Aplicados a la Educación'),
(8853, 1, 1, 5, 'Educación Virtual I'),
(8854, 1, 1, NULL, 'Ambientes y Herramientas Colaborativas'),
(8855, 1, 1, 5, 'Educación para la Salud'),
(8856, 1, 1, 5, 'Educación Virtual II'),
(8857, 1, 1, 5, 'Investigación Cualitativa y Cuantitativa'),
(8858, 1, 1, 5, 'Formulación y Evaluación de Proyectos'),
(8859, 1, 1, 5, 'Gestión de Centros Educativos'),
(8860, 1, 1, 5, 'Trabajo de Graduación I'),
(8861, 1, 1, 5, 'Gerencia de Proyectos'),
(8862, 1, 1, 5, 'Paradigmas Educa. en la Educ. Superior'),
(8863, 1, 1, 5, 'Tópicos Espec. en Inf. Aplic. a la Educ.'),
(8864, 1, 1, 5, 'Modelos y Simul. Aplic. a la Educación'),
(8865, 1, 1, 5, 'Políticas y Legislación Educativa'),
(8866, 1, 1, 5, 'Trabajo de Graduación II'),
(8867, 2, 6, 26, 'Diseño y Creatividad I'),
(8868, 2, 6, 26, 'Diseño y Creatividad II'),
(8869, 2, 6, 26, 'Ingeniería Eléctrica'),
(8870, 2, NULL, NULL, 'Turbomáquinas'),
(8871, 2, 6, 26, 'Refrigeración Industrial'),
(8872, 2, 6, 26, 'Diseño de Estructuras Navales'),
(8873, 2, 6, 26, 'Sistemas Auxiliares Navales y Portuario'),
(8874, 2, 6, 26, 'Maquinarias Marinas y Propulsores'),
(8875, 2, 6, 26, 'Proyecto Navales y Portuario'),
(8876, 2, 6, 26, 'Neumática e Hidráulica'),
(8877, 2, 6, 26, 'Introducción a la Mecatrónica'),
(8878, 2, 6, 26, 'Met. Aprox. de Soluciones Mecánicas'),
(8879, 2, 6, 26, 'Dinámica de Sist. de Modelaje y Simulación'),
(8880, 2, NULL, NULL, 'Sistemas Automáticos de la Manufactura'),
(8881, 2, 6, 26, 'Sistemas y Componentes de Robot'),
(8882, 2, 6, 26, 'Proyecto de Sistemas Mecatrónicos'),
(8883, 2, NULL, NULL, 'Gestión de Residuos Sólidos'),
(8884, 2, NULL, NULL, 'Contaminación del Aire'),
(8885, 2, NULL, NULL, 'Contaminación del Agua'),
(8886, 2, NULL, NULL, 'Energía Renovable'),
(8887, 2, NULL, NULL, 'Contaminación por Ruido'),
(8888, 2, NULL, NULL, 'Auditoría Energética y Ambiente'),
(8889, 2, 6, 26, 'Proyecto de Energía y Ambiente'),
(8890, 2, NULL, NULL, 'Dib. Lineal y Mec. Asistido por Computadora'),
(8891, 2, 6, 26, 'Comunicación Oral y Escrita'),
(8892, 2, 6, 26, 'Administración y Org. de Astilleros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `id_material` int(11) NOT NULL,
  `material` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`id_material`, `material`) VALUES
(1, 'Madera'),
(2, 'Cemento'),
(3, 'Mosaico'),
(4, 'Baldosa'),
(5, 'Zinc'),
(6, 'Cielo Raso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_pareds`
--

CREATE TABLE `material_pareds` (
  `id_pared` int(5) NOT NULL,
  `material_pared` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `material_pareds`
--

INSERT INTO `material_pareds` (`id_pared`, `material_pared`) VALUES
(1, 'Madera'),
(2, 'Cemento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_pisos`
--

CREATE TABLE `material_pisos` (
  `id_piso` int(11) NOT NULL,
  `material_piso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `material_pisos`
--

INSERT INTO `material_pisos` (`id_piso`, `material_piso`) VALUES
(1, 'Madera'),
(2, 'Cemento'),
(3, 'Mosaico'),
(4, 'Baldosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material_techos`
--

CREATE TABLE `material_techos` (
  `id_techo` int(11) NOT NULL,
  `material_techo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `material_techos`
--

INSERT INTO `material_techos` (`id_techo`, `material_techo`) VALUES
(1, 'Zinc'),
(2, 'Cemento'),
(3, 'Cielo raso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_r/s`
--

CREATE TABLE `materia_r/s` (
  `id_materia_r/s` int(11) NOT NULL,
  `tipo_materia_r/s` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia_r/s`
--

INSERT INTO `materia_r/s` (`id_materia_r/s`, `tipo_materia_r/s`) VALUES
(1, 'R'),
(2, 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_reprobada`
--

CREATE TABLE `materia_reprobada` (
  `id_materia_reprobada` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `materia_id_materia1` int(11) NOT NULL,
  `periodo_academico_id_periodo_ac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_semestre`
--

CREATE TABLE `materia_semestre` (
  `id_materia_semestre` int(11) NOT NULL,
  `profesor` varchar(45) DEFAULT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `materia_id_materia1` int(11) NOT NULL,
  `materia_r/s_id_materia_r/s` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mencion_honorifica`
--

CREATE TABLE `mencion_honorifica` (
  `id_mencion_hon` varchar(15) NOT NULL,
  `colegio_id_colegio` int(11) NOT NULL,
  `posicion` varchar(45) DEFAULT NULL,
  `promedio` float DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `agno` int(11) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `carrera_id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_04_155525_create_noticias_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `id_nacionalidad` int(11) NOT NULL,
  `pais_id_pais` int(11) NOT NULL,
  `nacionalidad` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`id_nacionalidad`, `pais_id_pais`, `nacionalidad`) VALUES
(1, 1, 'Beliceño (a)'),
(2, 2, 'Costaricense'),
(3, 3, 'Salvadoreño (a)'),
(4, 4, 'Guatemalteco (a)'),
(5, 5, 'Hondureño (a)'),
(6, 6, 'Nicaraguense'),
(7, 7, 'Panameño (a)'),
(8, 8, 'Colombiano (a)'),
(9, 9, 'Venezolano (a)'),
(10, 10, 'Estadounidense'),
(11, 11, 'Mexicano (a)'),
(12, 12, 'Español (a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_escolaridad`
--

CREATE TABLE `nivel_escolaridad` (
  `id_nescol` int(11) NOT NULL,
  `nivel_escolaridad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nivel_escolaridad`
--

INSERT INTO `nivel_escolaridad` (`id_nescol`, `nivel_escolaridad`) VALUES
(1, 'Primaria'),
(2, 'Pre-Media'),
(3, 'Media'),
(4, 'Universidad'),
(5, 'Maestría'),
(6, 'Doctorado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descripcion`, `urlImage`, `created_at`, `updated_at`) VALUES
(1, 'sfdsd', ' Irvin ', NULL, '2017-06-05 00:12:36', '2017-06-05 00:12:36'),
(2, 'sfdsd', ' Irvin ', NULL, '2017-06-05 00:13:06', '2017-06-05 00:13:06'),
(3, 'sfdsd', ' Irvin ', NULL, '2017-06-05 00:13:22', '2017-06-05 00:13:22'),
(4, 'sdg', ' Irvin ', NULL, '2017-06-05 00:31:03', '2017-06-05 00:31:03'),
(5, 'sdvsdv', ' Irvin ', NULL, '2017-06-05 00:31:31', '2017-06-05 00:31:31'),
(6, 'sd', ' Irvin ', NULL, '2017-06-05 01:28:14', '2017-06-05 01:28:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion`
--

CREATE TABLE `opcion` (
  `id_opcion` int(11) NOT NULL,
  `rango_opcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opcion`
--

INSERT INTO `opcion` (`id_opcion`, `rango_opcion`) VALUES
(1, '1 a 5'),
(2, '5 a 10'),
(3, '10 ó más');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros_programa`
--

CREATE TABLE `otros_programa` (
  `id_otros` int(11) NOT NULL,
  `agno` int(11) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `programa_id_programa` int(11) NOT NULL,
  `carrera_id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL,
  `pais` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `pais`) VALUES
(1, 'Belice'),
(2, 'Costa Rica'),
(3, 'El Salvador'),
(4, 'Guatemala'),
(5, 'Honduras'),
(6, 'Nicaragua'),
(7, 'Panamá'),
(8, 'Colombia'),
(9, 'Venezuela'),
(10, 'Estados Unidos'),
(11, 'México'),
(12, 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentesco`
--

CREATE TABLE `parentesco` (
  `id_parentesco` int(11) NOT NULL,
  `parentesco` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parentesco`
--

INSERT INTO `parentesco` (`id_parentesco`, `parentesco`) VALUES
(1, 'Abuela'),
(2, 'Abuelo'),
(3, 'Bisabuela'),
(4, 'Bisabuelo'),
(5, 'Cónyuge'),
(6, 'Cuñada'),
(7, 'Cuñado'),
(8, 'Hermana'),
(9, 'Hermano'),
(10, 'Hermanastra'),
(11, 'Hermanastro'),
(12, 'Hijo'),
(13, 'Hija'),
(14, 'Madrastra'),
(15, 'Madre'),
(16, 'Padrastro'),
(17, 'Padre'),
(18, 'Prima'),
(19, 'Primo'),
(20, 'Sobrina'),
(21, 'Sobrino'),
(22, 'Tía'),
(23, 'Tío'),
(24, 'Yerno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paz_salvo`
--

CREATE TABLE `paz_salvo` (
  `id_paz_salvo` int(11) NOT NULL,
  `cedula` varchar(15) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `motivo` varchar(300) DEFAULT NULL,
  `carrera_id_carrera` int(11) NOT NULL,
  `agno_ac_id_agno_ac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo_academico`
--

CREATE TABLE `periodo_academico` (
  `id_periodo_ac` int(11) NOT NULL,
  `periodo_ac` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `periodo_academico`
--

INSERT INTO `periodo_academico` (`id_periodo_ac`, `periodo_ac`) VALUES
(1, 'I Semestre'),
(2, 'II Semestre'),
(3, 'Verano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo_de_libro`
--

CREATE TABLE `prestamo_de_libro` (
  `id_pres_de_lib` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `banco_de_libros_id_libro` int(11) NOT NULL,
  `fecha_prestamo` varchar(45) DEFAULT NULL,
  `fecha_devolucon` varchar(45) DEFAULT NULL,
  `agno_ac_id_agno_ac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo_utiles`
--

CREATE TABLE `prestamo_utiles` (
  `id_pres_ut` int(11) NOT NULL,
  `cedula` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `carrera_id_carrera` int(11) NOT NULL,
  `agno_ac_id_agno_ac` int(11) NOT NULL,
  `aula` varchar(45) DEFAULT NULL,
  `turno_id_turno` int(11) NOT NULL,
  `util_escolar` varchar(45) DEFAULT NULL,
  `fecha_prestamo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id_programa` int(11) NOT NULL,
  `seccion_id_seccion` int(11) NOT NULL,
  `programa` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id_programa`, `seccion_id_seccion`, `programa`) VALUES
(1, 1, 'Consejería Personal y Académica'),
(2, 1, 'Divulgación del Departamento de Bienestar Estudiantil a Estudiantes de Preingreso'),
(3, 1, 'Apoyo Académico a través de Monitores'),
(4, 1, 'Mención Honorífica'),
(5, 1, 'Banco de Libros'),
(6, 1, 'Paz y Salvo para Graduación, Cambio de Sede o Carrera'),
(7, 1, 'Concurso de Oratoria'),
(8, 1, 'Capítulo de Honor'),
(9, 2, 'Ayuda para Pago de Transporte'),
(10, 2, 'Ayuda Alimenticia'),
(11, 2, 'Préstamo de Útiles Escolares'),
(12, 2, 'Trabajo Compensatorio'),
(13, 2, 'Bolsa de Becas'),
(14, 2, 'Compra y Donación de Lentes'),
(15, 2, 'Compra de Útiles y Materiales Académicos'),
(16, 2, 'Aplicación de Encuestas a Estudiantes para Validación de Vulnerabilidad de PDI'),
(17, 2, 'Bolsas Navideñas'),
(18, 3, 'Ayuda para el Pago de Exámenes Médicos y Laboratorios'),
(19, 3, 'Feria de la Salud'),
(20, 3, 'Compra de Medicamentos'),
(21, 3, 'Seguro para Práctica Profesional'),
(22, 3, 'Alquiler de Casillero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `provincia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `provincia`) VALUES
(1, 'Bocas del Toro'),
(2, 'Coclé'),
(3, 'Colón'),
(4, 'Chiriquí'),
(5, 'Darién'),
(6, 'Herrera'),
(7, 'Los Santos'),
(8, 'Panamá'),
(9, 'Veraguas'),
(10, 'Guna Yala'),
(11, 'Emberá Wounaan'),
(12, 'Ngäble-Buglé'),
(13, 'Panamá Oeste'),
(14, 'Madugandí'),
(15, 'Wargandí');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prov_agua`
--

CREATE TABLE `prov_agua` (
  `idprov_agua` int(11) NOT NULL,
  `prov_agua` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prov_agua`
--

INSERT INTO `prov_agua` (`idprov_agua`, `prov_agua`) VALUES
(1, 'Pluma común'),
(2, 'Particular'),
(3, 'Pozo Artesanal'),
(4, 'Quebrada'),
(5, 'Río');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango`
--

CREATE TABLE `rango` (
  `id_rango` int(11) NOT NULL,
  `rango` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rango`
--

INSERT INTO `rango` (`id_rango`, `rango`) VALUES
(1, 'Mala'),
(2, 'Regular'),
(3, 'Buena'),
(4, 'Muy Buena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `id_recurso` int(11) NOT NULL,
  `recurso` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`id_recurso`, `recurso`) VALUES
(1, 'Recursos Propios'),
(2, 'Recursos Familiares'),
(3, 'Préstamo'),
(4, 'Beca'),
(5, 'Pensión Alimenticia'),
(6, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residente`
--

CREATE TABLE `residente` (
  `id_residente` int(11) NOT NULL,
  `residente` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `residente`
--

INSERT INTO `residente` (`id_residente`, `residente`) VALUES
(1, 'Familiares'),
(2, 'Amigos de la familia'),
(3, 'Estudiantes'),
(4, 'Sólo'),
(5, 'Casa de Huésped'),
(6, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Estudiante'),
(3, 'Programador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salud`
--

CREATE TABLE `salud` (
  `id_salud` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `id_dalergia` int(11) DEFAULT NULL,
  `alergia_a` varchar(45) DEFAULT NULL,
  `id_denfermedad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id_seccion` int(11) NOT NULL,
  `seccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id_seccion`, `seccion`) VALUES
(1, 'Investigación y Asistencia Académica'),
(2, 'Asistencia Económica'),
(3, 'Educación y Salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_feria`
--

CREATE TABLE `servicio_feria` (
  `id_servicio_feria` int(11) NOT NULL,
  `servicio_feria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicio_feria`
--

INSERT INTO `servicio_feria` (`id_servicio_feria`, `servicio_feria`) VALUES
(1, 'Medicina General'),
(2, 'Evaluación Peso/Talla'),
(3, 'Vacunación'),
(4, 'Laboratorio'),
(5, 'Examen de Mama y Papanicolau'),
(6, 'Banco de Sangre'),
(7, 'Toma de Presión Arterial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_solicitado`
--

CREATE TABLE `servicio_solicitado` (
  `id_servicio_solicitado` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `programa_id_programa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `id_sexo` int(11) NOT NULL,
  `sexo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`id_sexo`, `sexo`) VALUES
(1, 'Femenino'),
(2, 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_economica`
--

CREATE TABLE `situacion_economica` (
  `id_situacion_economica` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `Situacion_economicacol` varchar(45) DEFAULT NULL,
  `id_dtrabaja` int(11) DEFAULT NULL,
  `porque_no` varchar(75) DEFAULT NULL,
  `nombre_empresa` varchar(45) DEFAULT NULL,
  `ocupacion` varchar(45) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `lugar_trabajo_id_lugar_trabajo` int(11) NOT NULL,
  `condicion_id_condicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suminis_agua`
--

CREATE TABLE `suminis_agua` (
  `id_tipo_suminis_agua` int(11) NOT NULL,
  `suminis_agua` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `suminis_agua`
--

INSERT INTO `suminis_agua` (`id_tipo_suminis_agua`, `suminis_agua`) VALUES
(1, 'Potable'),
(2, 'No potable');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamagno_vivienda`
--

CREATE TABLE `tamagno_vivienda` (
  `id_tamagno_vivienda` int(11) NOT NULL,
  `tamagno_vivienda` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tamagno_vivienda`
--

INSERT INTO `tamagno_vivienda` (`id_tamagno_vivienda`, `tamagno_vivienda`) VALUES
(1, 'Pequeña'),
(2, 'Mediana'),
(3, 'Grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tendencia`
--

CREATE TABLE `tendencia` (
  `id_tendencia` int(11) NOT NULL,
  `tendencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tendencia`
--

INSERT INTO `tendencia` (`id_tendencia`, `tendencia`) VALUES
(1, 'Propia'),
(2, 'Hipotecada'),
(3, 'Cedida'),
(4, 'Alquilada'),
(5, 'Temporal - Amigo'),
(6, 'Temporal - Familiar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_sangre`
--

CREATE TABLE `tipo_de_sangre` (
  `id_tpsangre` int(11) NOT NULL,
  `tipo_de_sangre` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_de_sangre`
--

INSERT INTO `tipo_de_sangre` (`id_tpsangre`, `tipo_de_sangre`) VALUES
(1, 'AB+'),
(2, 'AB-'),
(3, 'A+'),
(4, 'A-'),
(5, 'B+'),
(6, 'B-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_enfermedad_impedimento`
--

CREATE TABLE `tipo_enfermedad_impedimento` (
  `id_tipo_enf_imped` int(11) NOT NULL,
  `tipo_enfermedad_impedimento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_enfermedad_impedimento`
--

INSERT INTO `tipo_enfermedad_impedimento` (`id_tipo_enf_imped`, `tipo_enfermedad_impedimento`) VALUES
(1, 'Cardíacas'),
(2, 'Neumológicas'),
(3, 'Gastricas'),
(4, 'Hepáticas'),
(5, 'Metabólicas'),
(6, 'Endocrinas'),
(7, 'Hematológicas'),
(8, 'Reumáticas'),
(9, 'Neurológicas'),
(10, 'Nefrológicas y Urológicas'),
(11, 'Genéticos'),
(12, 'Otorrinolaringologas'),
(13, 'Oftalmológicas'),
(14, 'Dermatológicas'),
(15, 'Odontológicas'),
(16, 'Motoras'),
(17, 'Impedimentos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_inst_sanitaria`
--

CREATE TABLE `tipo_inst_sanitaria` (
  `idtipo_inst_sanitaria` int(11) NOT NULL,
  `tipo_inst_sanitariacol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_inst_sanitaria`
--

INSERT INTO `tipo_inst_sanitaria` (`idtipo_inst_sanitaria`, `tipo_inst_sanitariacol`) VALUES
(1, 'Colectivo'),
(2, 'Individual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_viviendas`
--

CREATE TABLE `tipo_viviendas` (
  `id_tipo_vivienda` int(11) NOT NULL,
  `tipo_vivienda` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_viviendas`
--

INSERT INTO `tipo_viviendas` (`id_tipo_vivienda`, `tipo_vivienda`, `created_at`, `updated_at`) VALUES
(1, 'Apartamento', '2017-06-04 22:06:07', '0000-00-00 00:00:00'),
(2, 'Multifamiliar', '2017-06-04 22:06:07', '0000-00-00 00:00:00'),
(3, 'Casa de Emergencia', '2017-06-04 22:06:07', '0000-00-00 00:00:00'),
(4, 'Unifamiliar', '2017-06-04 22:06:07', '0000-00-00 00:00:00'),
(5, 'Barriada Residencial', '2017-06-04 22:06:07', '0000-00-00 00:00:00'),
(6, 'Construida por la Persona', '2017-06-04 22:06:07', '0000-00-00 00:00:00'),
(7, 'Cuarto', '2017-06-04 22:06:07', '0000-00-00 00:00:00'),
(8, 'Otros', '2017-06-05 17:56:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_viviendas1`
--

CREATE TABLE `tipo_viviendas1` (
  `id_vivienda` int(11) NOT NULL,
  `tipo_vivienda` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo_compensatorio`
--

CREATE TABLE `trabajo_compensatorio` (
  `id_trab_comp` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `unidad` varchar(45) DEFAULT NULL,
  `actividad` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE `transporte` (
  `id_transporte` int(11) NOT NULL,
  `formulario_id_formulario` int(11) NOT NULL,
  `pasaje` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`id_turno`, `turno`) VALUES
(1, 'Matutino'),
(2, 'Vespertino'),
(3, 'Nocturno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutorias`
--

CREATE TABLE `tutorias` (
  `id_tutorias` int(11) NOT NULL,
  `materia_id_materia1` int(11) NOT NULL,
  `mentor` varchar(60) DEFAULT NULL,
  `cedula` varchar(15) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `carrera_id_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Irvin', 'irvin.concepcion@utp.ac.pa', '$2y$10$taoG8I1e.Prd3gjSSzU.ZOCwFUS93nJmPbPIOm8sEb4392Byop5kG', 'k44HBozPOBdQcStCiuuR46x6pj0aDsXggAsUXkZQwXM4wz0Fim4DPu2O8517', '2017-06-02 01:00:13', '2017-06-05 05:37:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` varchar(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `contrasegna` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `rol_id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_ubs`
--

CREATE TABLE `zona_ubs` (
  `id_zona_ub` int(11) NOT NULL,
  `zona_ub` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zona_ubs`
--

INSERT INTO `zona_ubs` (`id_zona_ub`, `zona_ub`) VALUES
(1, 'Rural'),
(2, 'Urbana'),
(3, 'Semi rural'),
(4, 'Semi urbana');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agno_ac`
--
ALTER TABLE `agno_ac`
  ADD PRIMARY KEY (`id_agno_ac`);

--
-- Indices de la tabla `alquiler_casillero`
--
ALTER TABLE `alquiler_casillero`
  ADD PRIMARY KEY (`id_alq_cas`),
  ADD KEY `fk_Alquiler_casillero_Carrera1_idx` (`carrera_id_carrera`),
  ADD KEY `fk_Alquiler_casillero_Periodo_academico1_idx` (`periodo_academico_id_periodo_ac`);

--
-- Indices de la tabla `area_laboral`
--
ALTER TABLE `area_laboral`
  ADD PRIMARY KEY (`id_arlabo_ac`);

--
-- Indices de la tabla `asignacion_presupuestaria`
--
ALTER TABLE `asignacion_presupuestaria`
  ADD PRIMARY KEY (`id_asig_pres`),
  ADD KEY `fk_Asignacion_presupuestaria_Programa1_idx` (`programa_id_programa`);

--
-- Indices de la tabla `asigxform`
--
ALTER TABLE `asigxform`
  ADD PRIMARY KEY (`id_asigxform`),
  ADD KEY `fk_asigxform_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_asigxform_Programa1_idx` (`programa_id_programa`);

--
-- Indices de la tabla `aspecto_familiar`
--
ALTER TABLE `aspecto_familiar`
  ADD PRIMARY KEY (`id_aspfamiliar`),
  ADD KEY `fk_Aspecto_familiar_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Aspecto_familiar_Rango1_idx` (`Rango_rd_rango`);

--
-- Indices de la tabla `ayuda_alimenticia`
--
ALTER TABLE `ayuda_alimenticia`
  ADD PRIMARY KEY (`id_ay_alim`),
  ADD KEY `fk_Ayuda_alimenticia_Formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `banco_de_libros`
--
ALTER TABLE `banco_de_libros`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `cambio_residencia`
--
ALTER TABLE `cambio_residencia`
  ADD PRIMARY KEY (`id_cambio_residencia`),
  ADD KEY `fk_Cambio_residencia_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Cambio_residencia_Residente1_idx` (`residente_id_residente`),
  ADD KEY `fk_Cambio_residencia_Tipo_vivienda1_idx` (`tipo_vivienda_id_tipo_vivienda`),
  ADD KEY `fk_Cambio_residencia_Tendencia1_idx` (`tendencia_id_tendencia`),
  ADD KEY `fk_Cambio_residencia_Facilidad1_idx` (`facilidad_id_facilidad`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_carrera`),
  ADD KEY `fk_Carrera_Facultad1_idx` (`facultad_id_facultad`);

--
-- Indices de la tabla `categoria_colegio`
--
ALTER TABLE `categoria_colegio`
  ADD PRIMARY KEY (`id_cat_col`);

--
-- Indices de la tabla `certificaciones_seguro`
--
ALTER TABLE `certificaciones_seguro`
  ADD PRIMARY KEY (`id_cert_seg`),
  ADD KEY `fk_Certificaciones_seguro_Carrera1_idx` (`carrera_id_carrera`);

--
-- Indices de la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD PRIMARY KEY (`id_colegio`),
  ADD KEY `fk_Colegio_Categoria_colegio1_idx` (`categoria_colegio_id_cat_col`);

--
-- Indices de la tabla `composicion_familiar`
--
ALTER TABLE `composicion_familiar`
  ADD PRIMARY KEY (`id_comparacion_familiar`),
  ADD KEY `fk_Composicion_familiar_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Composicion_familiar_Parentesco1_idx` (`parentesco_id_parentesco`),
  ADD KEY `fk_Composicion_familiar_Estado_civil1_idx` (`estado_civil_id_estado_civil`),
  ADD KEY `fk_Composicion_familiar_Nivel_escolaridad1_idx` (`nivel_escolaridad_id_nescol`);

--
-- Indices de la tabla `condicion`
--
ALTER TABLE `condicion`
  ADD PRIMARY KEY (`id_condicion`);

--
-- Indices de la tabla `corregimiento`
--
ALTER TABLE `corregimiento`
  ADD PRIMARY KEY (`id_corregimiento`),
  ADD KEY `fk_Corregimiento_Distrito1_idx` (`distrito_id_distrito`);

--
-- Indices de la tabla `culturaxestud`
--
ALTER TABLE `culturaxestud`
  ADD PRIMARY KEY (`id_culturaxestud`),
  ADD KEY `fk_Culturaxestud_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Culturaxestud_Grupo_cultura1_idx` (`grupo_cultura_id_grup_cult`);

--
-- Indices de la tabla `decision`
--
ALTER TABLE `decision`
  ADD PRIMARY KEY (`id_decision`);

--
-- Indices de la tabla `deporte_cultura`
--
ALTER TABLE `deporte_cultura`
  ADD PRIMARY KEY (`id_deporte_cultura`),
  ADD KEY `fk_Deporte_cultura_Formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `disciplinaxestud`
--
ALTER TABLE `disciplinaxestud`
  ADD PRIMARY KEY (`id_disciplinaxestud`),
  ADD KEY `fk_Disciplinaxestud_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Disciplinaxestud_Disicplina1_idx` (`disicplina_id_disicplina`);

--
-- Indices de la tabla `disicplina`
--
ALTER TABLE `disicplina`
  ADD PRIMARY KEY (`id_disicplina`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id_distrito`),
  ADD KEY `fk_Distrito_Provincia1_idx` (`provincia_id_provincia`);

--
-- Indices de la tabla `enfermedad_impedimentoxestud`
--
ALTER TABLE `enfermedad_impedimentoxestud`
  ADD PRIMARY KEY (`idEnfermedad_impedimento`),
  ADD KEY `fk_Enfermedad_impedimentoxestud_Tipo_enfermedad_impedimento_idx` (`tipo_enfermedad_impedimento_id_tipo_enf_imped`),
  ADD KEY `fk_enfermedad_impedimentoxestud_formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `enferm_imped`
--
ALTER TABLE `enferm_imped`
  ADD PRIMARY KEY (`id_catenfe_imp`),
  ADD KEY `fk_enferm_imped_Tipo_enfermedad_impedimento1_idx` (`tipo_enfermedad_impedimento_id_tipo_enf_imped`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`id_estado_civil`);

--
-- Indices de la tabla `estatus_academico`
--
ALTER TABLE `estatus_academico`
  ADD PRIMARY KEY (`id_estatus_ac`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiantes`),
  ADD KEY `fk_Estudiantes_Sexo1_idx` (`sexo_id_sexo`),
  ADD KEY `fk_Estudiantes_Nacionalidad1_idx` (`nacionalidad_id_nacionalidad`),
  ADD KEY `fk_Estudiantes_Estado_civil1_idx` (`estado_civil_id_estado_civil`),
  ADD KEY `fk_Estudiantes_Distrito1_idx` (`distrito_id_distrito`),
  ADD KEY `fk_Estudiantes_Corregimiento1_idx` (`corregimiento_id_corregimiento`),
  ADD KEY `fk_Estudiantes_Tipo_de_sangre1_idx` (`tipo_de_sangre_id_tpsangre`),
  ADD KEY `fk_Estudiantes_Provincia1_idx` (`provincia_id_provincia`);

--
-- Indices de la tabla `facilidad`
--
ALTER TABLE `facilidad`
  ADD PRIMARY KEY (`id_facilidad`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id_facultad`);

--
-- Indices de la tabla `feria_salud`
--
ALTER TABLE `feria_salud`
  ADD PRIMARY KEY (`id_feria_salud`),
  ADD KEY `fk_Feria_salud_Carrera1_idx` (`carrera_id_carrera`),
  ADD KEY `fk_feria_salud_servicio_feria1_idx` (`servicio_feria_id_servicio_feria`);

--
-- Indices de la tabla `financiamiento`
--
ALTER TABLE `financiamiento`
  ADD PRIMARY KEY (`id_financiamiento`),
  ADD KEY `fk_Financiamiento_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Financiamiento_Recursos1_idx` (`recursos_id_recurso`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id_formulario`),
  ADD KEY `fk_Formulario_Estudiantes1_idx` (`estudiantes_id_estudiantes`),
  ADD KEY `fk_Formulario_Periodo_academico1_idx` (`periodo_academico_id_periodo_ac`);

--
-- Indices de la tabla `gasto_familiar`
--
ALTER TABLE `gasto_familiar`
  ADD PRIMARY KEY (`id_gasto_familiar`),
  ADD KEY `fk_Gasto_familiar_Formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `grupo_cultura`
--
ALTER TABLE `grupo_cultura`
  ADD PRIMARY KEY (`id_grup_cult`);

--
-- Indices de la tabla `iluminacion`
--
ALTER TABLE `iluminacion`
  ADD PRIMARY KEY (`id_iluminacion`);

--
-- Indices de la tabla `informacion_viviendas`
--
ALTER TABLE `informacion_viviendas`
  ADD PRIMARY KEY (`id_informacion_vivienda`),
  ADD UNIQUE KEY `id_dlavadora_UNIQUE` (`id_dlavadora`),
  ADD KEY `fk_Informacion_vivienda_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Informacion_vivienda_Opcion1_idx` (`opcion_id_opcion`),
  ADD KEY `fk_Informacion_vivienda_Tendencia1_idx` (`tendencia_id_tendencia`),
  ADD KEY `fk_Informacion_vivienda_Tipo_vivienda1_idx` (`tipo_vivienda_id_tipo_vivienda`),
  ADD KEY `fk_Informacion_vivienda_Zona_ub1_idx` (`zona_ub_id_zona_ub`),
  ADD KEY `fk_Informacion_vivienda_Tamaño_vivienda1_idx` (`tamagno_vivienda_id_tamaño_vivienda`),
  ADD KEY `fk_Informacion_vivienda_Iluminacion1_idx` (`iluminacion_id_iluminacion`),
  ADD KEY `fk_Informacion_vivienda_Insta_sanitaria1_idx` (`insta_sanitaria_id_insta_sanitaria`),
  ADD KEY `fk_Informacion_vivienda_Tipo_suminis_agua1_idx` (`tipo_suminis_agua_id_tipo_suminis_agua`),
  ADD KEY `fk_informacion_vivienda_tipo_inst_sanitaria1_idx` (`tipo_inst_sanitaria_idtipo_inst_sanitaria`),
  ADD KEY `fk_informacion_vivienda_prov_agua1_idx` (`prov_agua_idprov_agua`);

--
-- Indices de la tabla `informe_social`
--
ALTER TABLE `informe_social`
  ADD PRIMARY KEY (`id_informe_social`),
  ADD KEY `fk_Informe_social_Formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `info_academica`
--
ALTER TABLE `info_academica`
  ADD PRIMARY KEY (`id_info_ac`),
  ADD KEY `fk_Info_academica_Periodo_academico1_idx` (`periodo_academico_id_periodo_ac`),
  ADD KEY `fk_Info_academica_Agno_ac1_idx` (`agno_ac_id_agno_ac`),
  ADD KEY `fk_Info_academica_Turno1_idx` (`turno_id_turno`),
  ADD KEY `fk_Info_academica_Facultad1_idx` (`facultad_id_facultad`),
  ADD KEY `fk_Info_academica_Carrera1_idx` (`carrera_id_carrera`),
  ADD KEY `fk_Info_academica_Especialidad1_idx` (`especialidad_id_especialidad`),
  ADD KEY `fk_Info_academica_Estatus_academico1_idx` (`estatus_academico_id_estatus_ac`),
  ADD KEY `fk_Info_academica_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Info_academica_Area_laboral1_idx` (`area_laboral_id_arlabo_ac`);

--
-- Indices de la tabla `info_enfermedad_impedimento`
--
ALTER TABLE `info_enfermedad_impedimento`
  ADD PRIMARY KEY (`id_infoenferm_imp`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `fk_Ingreso_Formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `insta_sanitaria`
--
ALTER TABLE `insta_sanitaria`
  ADD PRIMARY KEY (`id_insta_sanitaria`);

--
-- Indices de la tabla `libroxestudiante`
--
ALTER TABLE `libroxestudiante`
  ADD PRIMARY KEY (`id_libro_x_estudiante`),
  ADD KEY `fk_Libro_x_estudiante_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_libroxestudiante_materia1_idx` (`materia_id_materia1`);

--
-- Indices de la tabla `lugar_trabajo`
--
ALTER TABLE `lugar_trabajo`
  ADD PRIMARY KEY (`id_lugar_trabajo`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `fk_materia_carrera1_idx` (`carrera_id_carrera`),
  ADD KEY `fk_materia_especialidad1_idx` (`especialidad_id_especialidad`),
  ADD KEY `fk_materia_facultad1_idx` (`facultad_id_facultad`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`id_material`);

--
-- Indices de la tabla `material_pareds`
--
ALTER TABLE `material_pareds`
  ADD PRIMARY KEY (`id_pared`);

--
-- Indices de la tabla `material_pisos`
--
ALTER TABLE `material_pisos`
  ADD PRIMARY KEY (`id_piso`);

--
-- Indices de la tabla `material_techos`
--
ALTER TABLE `material_techos`
  ADD PRIMARY KEY (`id_techo`);

--
-- Indices de la tabla `materia_r/s`
--
ALTER TABLE `materia_r/s`
  ADD PRIMARY KEY (`id_materia_r/s`);

--
-- Indices de la tabla `materia_reprobada`
--
ALTER TABLE `materia_reprobada`
  ADD PRIMARY KEY (`id_materia_reprobada`),
  ADD KEY `fk_Materia_reprobada_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Materia_reprobada_Periodo_academico1_idx` (`periodo_academico_id_periodo_ac`),
  ADD KEY `fk_materia_reprobada_materia1_idx` (`materia_id_materia1`);

--
-- Indices de la tabla `materia_semestre`
--
ALTER TABLE `materia_semestre`
  ADD PRIMARY KEY (`id_materia_semestre`),
  ADD KEY `fk_Materia_Semestre_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Materia_Semestre_Materia_r/s1_idx` (`materia_r/s_id_materia_r/s`),
  ADD KEY `fk_materia_semestre_materia1_idx` (`materia_id_materia1`);

--
-- Indices de la tabla `mencion_honorifica`
--
ALTER TABLE `mencion_honorifica`
  ADD PRIMARY KEY (`id_mencion_hon`),
  ADD KEY `fk_Mension_honorifica_Carrera1_idx` (`carrera_id_carrera`),
  ADD KEY `fk_Mension_honorifica_Colegio1_idx` (`colegio_id_colegio`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`id_nacionalidad`),
  ADD KEY `fk_Nacionalidad_Pais1_idx` (`pais_id_pais`);

--
-- Indices de la tabla `nivel_escolaridad`
--
ALTER TABLE `nivel_escolaridad`
  ADD PRIMARY KEY (`id_nescol`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opcion`
--
ALTER TABLE `opcion`
  ADD PRIMARY KEY (`id_opcion`);

--
-- Indices de la tabla `otros_programa`
--
ALTER TABLE `otros_programa`
  ADD PRIMARY KEY (`id_otros`),
  ADD KEY `fk_Otros_programa_Programa1_idx` (`programa_id_programa`),
  ADD KEY `fk_Otros_programa_Carrera1_idx` (`carrera_id_carrera`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `parentesco`
--
ALTER TABLE `parentesco`
  ADD PRIMARY KEY (`id_parentesco`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `paz_salvo`
--
ALTER TABLE `paz_salvo`
  ADD PRIMARY KEY (`id_paz_salvo`),
  ADD KEY `fk_Paz_salvo_Carrera1_idx` (`carrera_id_carrera`),
  ADD KEY `fk_Paz_salvo_Agno_ac1_idx` (`agno_ac_id_agno_ac`);

--
-- Indices de la tabla `periodo_academico`
--
ALTER TABLE `periodo_academico`
  ADD PRIMARY KEY (`id_periodo_ac`);

--
-- Indices de la tabla `prestamo_de_libro`
--
ALTER TABLE `prestamo_de_libro`
  ADD PRIMARY KEY (`id_pres_de_lib`),
  ADD KEY `fk_Prestamo_de_libro_Agno_ac1_idx` (`agno_ac_id_agno_ac`),
  ADD KEY `fk_Prestamo_de_libro_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_prestamo_de_libro_banco_de_libros1_idx` (`banco_de_libros_id_libro`);

--
-- Indices de la tabla `prestamo_utiles`
--
ALTER TABLE `prestamo_utiles`
  ADD PRIMARY KEY (`id_pres_ut`),
  ADD KEY `fk_Prestamo_utiles_Carrera1_idx` (`carrera_id_carrera`),
  ADD KEY `fk_Prestamo_utiles_Turno1_idx` (`turno_id_turno`),
  ADD KEY `fk_Prestamo_utiles_Agno_ac1_idx` (`agno_ac_id_agno_ac`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id_programa`),
  ADD KEY `fk_Programa_Seccion1_idx` (`seccion_id_seccion`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`);

--
-- Indices de la tabla `prov_agua`
--
ALTER TABLE `prov_agua`
  ADD PRIMARY KEY (`idprov_agua`);

--
-- Indices de la tabla `rango`
--
ALTER TABLE `rango`
  ADD PRIMARY KEY (`id_rango`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`id_recurso`);

--
-- Indices de la tabla `residente`
--
ALTER TABLE `residente`
  ADD PRIMARY KEY (`id_residente`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `salud`
--
ALTER TABLE `salud`
  ADD PRIMARY KEY (`id_salud`),
  ADD KEY `fk_Salud_Formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id_seccion`);

--
-- Indices de la tabla `servicio_feria`
--
ALTER TABLE `servicio_feria`
  ADD PRIMARY KEY (`id_servicio_feria`);

--
-- Indices de la tabla `servicio_solicitado`
--
ALTER TABLE `servicio_solicitado`
  ADD PRIMARY KEY (`id_servicio_solicitado`),
  ADD KEY `fk_Servicio_solicitado_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Servicio_solicitado_Programa1_idx` (`programa_id_programa`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id_sexo`);

--
-- Indices de la tabla `situacion_economica`
--
ALTER TABLE `situacion_economica`
  ADD PRIMARY KEY (`id_situacion_economica`),
  ADD KEY `fk_Situacion_economica_Formulario1_idx` (`formulario_id_formulario`),
  ADD KEY `fk_Situacion_economica_Lugar_trabajo1_idx` (`lugar_trabajo_id_lugar_trabajo`),
  ADD KEY `fk_Situacion_economica_Condicion1_idx` (`condicion_id_condicion`);

--
-- Indices de la tabla `suminis_agua`
--
ALTER TABLE `suminis_agua`
  ADD PRIMARY KEY (`id_tipo_suminis_agua`);

--
-- Indices de la tabla `tamagno_vivienda`
--
ALTER TABLE `tamagno_vivienda`
  ADD PRIMARY KEY (`id_tamagno_vivienda`);

--
-- Indices de la tabla `tendencia`
--
ALTER TABLE `tendencia`
  ADD PRIMARY KEY (`id_tendencia`);

--
-- Indices de la tabla `tipo_de_sangre`
--
ALTER TABLE `tipo_de_sangre`
  ADD PRIMARY KEY (`id_tpsangre`);

--
-- Indices de la tabla `tipo_enfermedad_impedimento`
--
ALTER TABLE `tipo_enfermedad_impedimento`
  ADD PRIMARY KEY (`id_tipo_enf_imped`);

--
-- Indices de la tabla `tipo_inst_sanitaria`
--
ALTER TABLE `tipo_inst_sanitaria`
  ADD PRIMARY KEY (`idtipo_inst_sanitaria`);

--
-- Indices de la tabla `tipo_viviendas`
--
ALTER TABLE `tipo_viviendas`
  ADD PRIMARY KEY (`id_tipo_vivienda`);

--
-- Indices de la tabla `tipo_viviendas1`
--
ALTER TABLE `tipo_viviendas1`
  ADD PRIMARY KEY (`id_vivienda`);

--
-- Indices de la tabla `trabajo_compensatorio`
--
ALTER TABLE `trabajo_compensatorio`
  ADD PRIMARY KEY (`id_trab_comp`),
  ADD KEY `fk_Trabajo_compensatorio_Formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`id_transporte`),
  ADD KEY `fk_Transporte_Formulario1_idx` (`formulario_id_formulario`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `tutorias`
--
ALTER TABLE `tutorias`
  ADD PRIMARY KEY (`id_tutorias`),
  ADD KEY `fk_Tutorias_Carrera1_idx` (`carrera_id_carrera`),
  ADD KEY `fk_tutorias_materia1_idx` (`materia_id_materia1`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_Usuario_Rol1_idx` (`rol_id_rol`);

--
-- Indices de la tabla `zona_ubs`
--
ALTER TABLE `zona_ubs`
  ADD PRIMARY KEY (`id_zona_ub`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agno_ac`
--
ALTER TABLE `agno_ac`
  MODIFY `id_agno_ac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `alquiler_casillero`
--
ALTER TABLE `alquiler_casillero`
  MODIFY `id_alq_cas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `area_laboral`
--
ALTER TABLE `area_laboral`
  MODIFY `id_arlabo_ac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `asignacion_presupuestaria`
--
ALTER TABLE `asignacion_presupuestaria`
  MODIFY `id_asig_pres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `asigxform`
--
ALTER TABLE `asigxform`
  MODIFY `id_asigxform` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `aspecto_familiar`
--
ALTER TABLE `aspecto_familiar`
  MODIFY `id_aspfamiliar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ayuda_alimenticia`
--
ALTER TABLE `ayuda_alimenticia`
  MODIFY `id_ay_alim` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `banco_de_libros`
--
ALTER TABLE `banco_de_libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT de la tabla `cambio_residencia`
--
ALTER TABLE `cambio_residencia`
  MODIFY `id_cambio_residencia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `categoria_colegio`
--
ALTER TABLE `categoria_colegio`
  MODIFY `id_cat_col` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `certificaciones_seguro`
--
ALTER TABLE `certificaciones_seguro`
  MODIFY `id_cert_seg` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `colegio`
--
ALTER TABLE `colegio`
  MODIFY `id_colegio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `composicion_familiar`
--
ALTER TABLE `composicion_familiar`
  MODIFY `id_comparacion_familiar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `condicion`
--
ALTER TABLE `condicion`
  MODIFY `id_condicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `corregimiento`
--
ALTER TABLE `corregimiento`
  MODIFY `id_corregimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=666;
--
-- AUTO_INCREMENT de la tabla `culturaxestud`
--
ALTER TABLE `culturaxestud`
  MODIFY `id_culturaxestud` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `decision`
--
ALTER TABLE `decision`
  MODIFY `id_decision` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `deporte_cultura`
--
ALTER TABLE `deporte_cultura`
  MODIFY `id_deporte_cultura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `disciplinaxestud`
--
ALTER TABLE `disciplinaxestud`
  MODIFY `id_disciplinaxestud` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `disicplina`
--
ALTER TABLE `disicplina`
  MODIFY `id_disicplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id_distrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `enfermedad_impedimentoxestud`
--
ALTER TABLE `enfermedad_impedimentoxestud`
  MODIFY `idEnfermedad_impedimento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `enferm_imped`
--
ALTER TABLE `enferm_imped`
  MODIFY `id_catenfe_imp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `id_estado_civil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `estatus_academico`
--
ALTER TABLE `estatus_academico`
  MODIFY `id_estatus_ac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id_facultad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `feria_salud`
--
ALTER TABLE `feria_salud`
  MODIFY `id_feria_salud` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `financiamiento`
--
ALTER TABLE `financiamiento`
  MODIFY `id_financiamiento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id_formulario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gasto_familiar`
--
ALTER TABLE `gasto_familiar`
  MODIFY `id_gasto_familiar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `grupo_cultura`
--
ALTER TABLE `grupo_cultura`
  MODIFY `id_grup_cult` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `iluminacion`
--
ALTER TABLE `iluminacion`
  MODIFY `id_iluminacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `informacion_viviendas`
--
ALTER TABLE `informacion_viviendas`
  MODIFY `id_informacion_vivienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `informe_social`
--
ALTER TABLE `informe_social`
  MODIFY `id_informe_social` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `info_academica`
--
ALTER TABLE `info_academica`
  MODIFY `id_info_ac` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `info_enfermedad_impedimento`
--
ALTER TABLE `info_enfermedad_impedimento`
  MODIFY `id_infoenferm_imp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `libroxestudiante`
--
ALTER TABLE `libroxestudiante`
  MODIFY `id_libro_x_estudiante` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lugar_trabajo`
--
ALTER TABLE `lugar_trabajo`
  MODIFY `id_lugar_trabajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `material_pareds`
--
ALTER TABLE `material_pareds`
  MODIFY `id_pared` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `material_pisos`
--
ALTER TABLE `material_pisos`
  MODIFY `id_piso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `material_techos`
--
ALTER TABLE `material_techos`
  MODIFY `id_techo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `materia_r/s`
--
ALTER TABLE `materia_r/s`
  MODIFY `id_materia_r/s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `materia_reprobada`
--
ALTER TABLE `materia_reprobada`
  MODIFY `id_materia_reprobada` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materia_semestre`
--
ALTER TABLE `materia_semestre`
  MODIFY `id_materia_semestre` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `id_nacionalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `nivel_escolaridad`
--
ALTER TABLE `nivel_escolaridad`
  MODIFY `id_nescol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `opcion`
--
ALTER TABLE `opcion`
  MODIFY `id_opcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `otros_programa`
--
ALTER TABLE `otros_programa`
  MODIFY `id_otros` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `parentesco`
--
ALTER TABLE `parentesco`
  MODIFY `id_parentesco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `paz_salvo`
--
ALTER TABLE `paz_salvo`
  MODIFY `id_paz_salvo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `prestamo_de_libro`
--
ALTER TABLE `prestamo_de_libro`
  MODIFY `id_pres_de_lib` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `prov_agua`
--
ALTER TABLE `prov_agua`
  MODIFY `idprov_agua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `id_recurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `residente`
--
ALTER TABLE `residente`
  MODIFY `id_residente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `salud`
--
ALTER TABLE `salud`
  MODIFY `id_salud` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id_seccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `servicio_feria`
--
ALTER TABLE `servicio_feria`
  MODIFY `id_servicio_feria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `servicio_solicitado`
--
ALTER TABLE `servicio_solicitado`
  MODIFY `id_servicio_solicitado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `id_sexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `situacion_economica`
--
ALTER TABLE `situacion_economica`
  MODIFY `id_situacion_economica` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `suminis_agua`
--
ALTER TABLE `suminis_agua`
  MODIFY `id_tipo_suminis_agua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tamagno_vivienda`
--
ALTER TABLE `tamagno_vivienda`
  MODIFY `id_tamagno_vivienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tendencia`
--
ALTER TABLE `tendencia`
  MODIFY `id_tendencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipo_de_sangre`
--
ALTER TABLE `tipo_de_sangre`
  MODIFY `id_tpsangre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tipo_enfermedad_impedimento`
--
ALTER TABLE `tipo_enfermedad_impedimento`
  MODIFY `id_tipo_enf_imped` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `tipo_inst_sanitaria`
--
ALTER TABLE `tipo_inst_sanitaria`
  MODIFY `idtipo_inst_sanitaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_viviendas`
--
ALTER TABLE `tipo_viviendas`
  MODIFY `id_tipo_vivienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `tipo_viviendas1`
--
ALTER TABLE `tipo_viviendas1`
  MODIFY `id_vivienda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `trabajo_compensatorio`
--
ALTER TABLE `trabajo_compensatorio`
  MODIFY `id_trab_comp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `transporte`
--
ALTER TABLE `transporte`
  MODIFY `id_transporte` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tutorias`
--
ALTER TABLE `tutorias`
  MODIFY `id_tutorias` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `zona_ubs`
--
ALTER TABLE `zona_ubs`
  MODIFY `id_zona_ub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler_casillero`
--
ALTER TABLE `alquiler_casillero`
  ADD CONSTRAINT `fk_Alquiler_casillero_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Alquiler_casillero_Periodo_academico1` FOREIGN KEY (`periodo_academico_id_periodo_ac`) REFERENCES `periodo_academico` (`id_periodo_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asignacion_presupuestaria`
--
ALTER TABLE `asignacion_presupuestaria`
  ADD CONSTRAINT `fk_Asignacion_presupuestaria_Programa1` FOREIGN KEY (`programa_id_programa`) REFERENCES `programa` (`id_programa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asigxform`
--
ALTER TABLE `asigxform`
  ADD CONSTRAINT `fk_asigxform_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asigxform_Programa1` FOREIGN KEY (`programa_id_programa`) REFERENCES `programa` (`id_programa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `aspecto_familiar`
--
ALTER TABLE `aspecto_familiar`
  ADD CONSTRAINT `fk_Aspecto_familiar_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Aspecto_familiar_Rango1` FOREIGN KEY (`Rango_rd_rango`) REFERENCES `rango` (`id_rango`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ayuda_alimenticia`
--
ALTER TABLE `ayuda_alimenticia`
  ADD CONSTRAINT `fk_Ayuda_alimenticia_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cambio_residencia`
--
ALTER TABLE `cambio_residencia`
  ADD CONSTRAINT `fk_Cambio_residencia_Facilidad1` FOREIGN KEY (`facilidad_id_facilidad`) REFERENCES `facilidad` (`id_facilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cambio_residencia_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cambio_residencia_Residente1` FOREIGN KEY (`residente_id_residente`) REFERENCES `residente` (`id_residente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cambio_residencia_Tendencia1` FOREIGN KEY (`tendencia_id_tendencia`) REFERENCES `tendencia` (`id_tendencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cambio_residencia_Tipo_vivienda1` FOREIGN KEY (`tipo_vivienda_id_tipo_vivienda`) REFERENCES `tipo_viviendas` (`id_tipo_vivienda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `fk_Carrera_Facultad1` FOREIGN KEY (`facultad_id_facultad`) REFERENCES `facultad` (`id_facultad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `certificaciones_seguro`
--
ALTER TABLE `certificaciones_seguro`
  ADD CONSTRAINT `fk_Certificaciones_seguro_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `colegio`
--
ALTER TABLE `colegio`
  ADD CONSTRAINT `fk_Colegio_Categoria_colegio1` FOREIGN KEY (`categoria_colegio_id_cat_col`) REFERENCES `categoria_colegio` (`id_cat_col`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `composicion_familiar`
--
ALTER TABLE `composicion_familiar`
  ADD CONSTRAINT `fk_Composicion_familiar_Estado_civil1` FOREIGN KEY (`estado_civil_id_estado_civil`) REFERENCES `estado_civil` (`id_estado_civil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Composicion_familiar_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Composicion_familiar_Nivel_escolaridad1` FOREIGN KEY (`nivel_escolaridad_id_nescol`) REFERENCES `nivel_escolaridad` (`id_nescol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Composicion_familiar_Parentesco1` FOREIGN KEY (`parentesco_id_parentesco`) REFERENCES `parentesco` (`id_parentesco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `corregimiento`
--
ALTER TABLE `corregimiento`
  ADD CONSTRAINT `fk_Corregimiento_Distrito1` FOREIGN KEY (`distrito_id_distrito`) REFERENCES `distrito` (`id_distrito`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `culturaxestud`
--
ALTER TABLE `culturaxestud`
  ADD CONSTRAINT `fk_Culturaxestud_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Culturaxestud_Grupo_cultura1` FOREIGN KEY (`grupo_cultura_id_grup_cult`) REFERENCES `grupo_cultura` (`id_grup_cult`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `deporte_cultura`
--
ALTER TABLE `deporte_cultura`
  ADD CONSTRAINT `fk_Deporte_cultura_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `disciplinaxestud`
--
ALTER TABLE `disciplinaxestud`
  ADD CONSTRAINT `fk_Disciplinaxestud_Disicplina1` FOREIGN KEY (`disicplina_id_disicplina`) REFERENCES `disicplina` (`id_disicplina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Disciplinaxestud_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `fk_Distrito_Provincia1` FOREIGN KEY (`provincia_id_provincia`) REFERENCES `provincia` (`id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `enfermedad_impedimentoxestud`
--
ALTER TABLE `enfermedad_impedimentoxestud`
  ADD CONSTRAINT `fk_Enfermedad_impedimentoxestud_Tipo_enfermedad_impedimento1` FOREIGN KEY (`tipo_enfermedad_impedimento_id_tipo_enf_imped`) REFERENCES `tipo_enfermedad_impedimento` (`id_tipo_enf_imped`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_enfermedad_impedimentoxestud_formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `enferm_imped`
--
ALTER TABLE `enferm_imped`
  ADD CONSTRAINT `fk_enferm_imped_Tipo_enfermedad_impedimento1` FOREIGN KEY (`tipo_enfermedad_impedimento_id_tipo_enf_imped`) REFERENCES `tipo_enfermedad_impedimento` (`id_tipo_enf_imped`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `fk_Estudiantes_Corregimiento1` FOREIGN KEY (`corregimiento_id_corregimiento`) REFERENCES `corregimiento` (`id_corregimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_Distrito1` FOREIGN KEY (`distrito_id_distrito`) REFERENCES `distrito` (`id_distrito`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_Estado_civil1` FOREIGN KEY (`estado_civil_id_estado_civil`) REFERENCES `estado_civil` (`id_estado_civil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_Nacionalidad1` FOREIGN KEY (`nacionalidad_id_nacionalidad`) REFERENCES `nacionalidad` (`id_nacionalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_Provincia1` FOREIGN KEY (`provincia_id_provincia`) REFERENCES `provincia` (`id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_Sexo1` FOREIGN KEY (`sexo_id_sexo`) REFERENCES `sexo` (`id_sexo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Estudiantes_Tipo_de_sangre1` FOREIGN KEY (`tipo_de_sangre_id_tpsangre`) REFERENCES `tipo_de_sangre` (`id_tpsangre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `feria_salud`
--
ALTER TABLE `feria_salud`
  ADD CONSTRAINT `fk_Feria_salud_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_feria_salud_servicio_feria1` FOREIGN KEY (`servicio_feria_id_servicio_feria`) REFERENCES `servicio_feria` (`id_servicio_feria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `financiamiento`
--
ALTER TABLE `financiamiento`
  ADD CONSTRAINT `fk_Financiamiento_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Financiamiento_Recursos1` FOREIGN KEY (`recursos_id_recurso`) REFERENCES `recursos` (`id_recurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD CONSTRAINT `fk_Formulario_Estudiantes1` FOREIGN KEY (`estudiantes_id_estudiantes`) REFERENCES `estudiantes` (`id_estudiantes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Formulario_Periodo_academico1` FOREIGN KEY (`periodo_academico_id_periodo_ac`) REFERENCES `periodo_academico` (`id_periodo_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `gasto_familiar`
--
ALTER TABLE `gasto_familiar`
  ADD CONSTRAINT `fk_Gasto_familiar_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `informacion_viviendas`
--
ALTER TABLE `informacion_viviendas`
  ADD CONSTRAINT `fk_Informacion_vivienda_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informacion_vivienda_Iluminacion1` FOREIGN KEY (`iluminacion_id_iluminacion`) REFERENCES `iluminacion` (`id_iluminacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informacion_vivienda_Insta_sanitaria1` FOREIGN KEY (`insta_sanitaria_id_insta_sanitaria`) REFERENCES `insta_sanitaria` (`id_insta_sanitaria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informacion_vivienda_Opcion1` FOREIGN KEY (`opcion_id_opcion`) REFERENCES `opcion` (`id_opcion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informacion_vivienda_Tamaño_vivienda1` FOREIGN KEY (`tamagno_vivienda_id_tamaño_vivienda`) REFERENCES `tamagno_vivienda` (`id_tamagno_vivienda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informacion_vivienda_Tendencia1` FOREIGN KEY (`tendencia_id_tendencia`) REFERENCES `tendencia` (`id_tendencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informacion_vivienda_Tipo_suminis_agua1` FOREIGN KEY (`tipo_suminis_agua_id_tipo_suminis_agua`) REFERENCES `suminis_agua` (`id_tipo_suminis_agua`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informacion_vivienda_Tipo_vivienda1` FOREIGN KEY (`tipo_vivienda_id_tipo_vivienda`) REFERENCES `tipo_viviendas` (`id_tipo_vivienda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Informacion_vivienda_Zona_ub1` FOREIGN KEY (`zona_ub_id_zona_ub`) REFERENCES `zona_ubs` (`id_zona_ub`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_informacion_vivienda_prov_agua1` FOREIGN KEY (`prov_agua_idprov_agua`) REFERENCES `prov_agua` (`idprov_agua`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_informacion_vivienda_tipo_inst_sanitaria1` FOREIGN KEY (`tipo_inst_sanitaria_idtipo_inst_sanitaria`) REFERENCES `tipo_inst_sanitaria` (`idtipo_inst_sanitaria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `informe_social`
--
ALTER TABLE `informe_social`
  ADD CONSTRAINT `fk_Informe_social_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `info_academica`
--
ALTER TABLE `info_academica`
  ADD CONSTRAINT `fk_Info_academica_Agno_ac1` FOREIGN KEY (`agno_ac_id_agno_ac`) REFERENCES `agno_ac` (`id_agno_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Info_academica_Area_laboral1` FOREIGN KEY (`area_laboral_id_arlabo_ac`) REFERENCES `area_laboral` (`id_arlabo_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Info_academica_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Info_academica_Especialidad1` FOREIGN KEY (`especialidad_id_especialidad`) REFERENCES `especialidad` (`id_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Info_academica_Estatus_academico1` FOREIGN KEY (`estatus_academico_id_estatus_ac`) REFERENCES `estatus_academico` (`id_estatus_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Info_academica_Facultad1` FOREIGN KEY (`facultad_id_facultad`) REFERENCES `facultad` (`id_facultad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Info_academica_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Info_academica_Periodo_academico1` FOREIGN KEY (`periodo_academico_id_periodo_ac`) REFERENCES `periodo_academico` (`id_periodo_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Info_academica_Turno1` FOREIGN KEY (`turno_id_turno`) REFERENCES `turno` (`id_turno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `fk_Ingreso_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `libroxestudiante`
--
ALTER TABLE `libroxestudiante`
  ADD CONSTRAINT `fk_Libro_x_estudiante_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_libroxestudiante_materia1` FOREIGN KEY (`materia_id_materia1`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `fk_materia_carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materia_especialidad1` FOREIGN KEY (`especialidad_id_especialidad`) REFERENCES `especialidad` (`id_especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materia_facultad1` FOREIGN KEY (`facultad_id_facultad`) REFERENCES `facultad` (`id_facultad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia_reprobada`
--
ALTER TABLE `materia_reprobada`
  ADD CONSTRAINT `fk_Materia_reprobada_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Materia_reprobada_Periodo_academico1` FOREIGN KEY (`periodo_academico_id_periodo_ac`) REFERENCES `periodo_academico` (`id_periodo_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materia_reprobada_materia1` FOREIGN KEY (`materia_id_materia1`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia_semestre`
--
ALTER TABLE `materia_semestre`
  ADD CONSTRAINT `fk_Materia_Semestre_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Materia_Semestre_Materia_r/s1` FOREIGN KEY (`materia_r/s_id_materia_r/s`) REFERENCES `materia_r/s` (`id_materia_r/s`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materia_semestre_materia1` FOREIGN KEY (`materia_id_materia1`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mencion_honorifica`
--
ALTER TABLE `mencion_honorifica`
  ADD CONSTRAINT `fk_Mension_honorifica_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Mension_honorifica_Colegio1` FOREIGN KEY (`colegio_id_colegio`) REFERENCES `colegio` (`id_colegio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD CONSTRAINT `fk_Nacionalidad_Pais1` FOREIGN KEY (`pais_id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `otros_programa`
--
ALTER TABLE `otros_programa`
  ADD CONSTRAINT `fk_Otros_programa_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Otros_programa_Programa1` FOREIGN KEY (`programa_id_programa`) REFERENCES `programa` (`id_programa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `paz_salvo`
--
ALTER TABLE `paz_salvo`
  ADD CONSTRAINT `fk_Paz_salvo_Agno_ac1` FOREIGN KEY (`agno_ac_id_agno_ac`) REFERENCES `agno_ac` (`id_agno_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Paz_salvo_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `prestamo_de_libro`
--
ALTER TABLE `prestamo_de_libro`
  ADD CONSTRAINT `fk_Prestamo_de_libro_Agno_ac1` FOREIGN KEY (`agno_ac_id_agno_ac`) REFERENCES `agno_ac` (`id_agno_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Prestamo_de_libro_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_prestamo_de_libro_banco_de_libros1` FOREIGN KEY (`banco_de_libros_id_libro`) REFERENCES `banco_de_libros` (`id_libro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `prestamo_utiles`
--
ALTER TABLE `prestamo_utiles`
  ADD CONSTRAINT `fk_Prestamo_utiles_Agno_ac1` FOREIGN KEY (`agno_ac_id_agno_ac`) REFERENCES `agno_ac` (`id_agno_ac`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Prestamo_utiles_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Prestamo_utiles_Turno1` FOREIGN KEY (`turno_id_turno`) REFERENCES `turno` (`id_turno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `fk_Programa_Seccion1` FOREIGN KEY (`seccion_id_seccion`) REFERENCES `seccion` (`id_seccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `salud`
--
ALTER TABLE `salud`
  ADD CONSTRAINT `fk_Salud_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicio_solicitado`
--
ALTER TABLE `servicio_solicitado`
  ADD CONSTRAINT `fk_Servicio_solicitado_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Servicio_solicitado_Programa1` FOREIGN KEY (`programa_id_programa`) REFERENCES `programa` (`id_programa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `situacion_economica`
--
ALTER TABLE `situacion_economica`
  ADD CONSTRAINT `fk_Situacion_economica_Condicion1` FOREIGN KEY (`condicion_id_condicion`) REFERENCES `condicion` (`id_condicion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Situacion_economica_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Situacion_economica_Lugar_trabajo1` FOREIGN KEY (`lugar_trabajo_id_lugar_trabajo`) REFERENCES `lugar_trabajo` (`id_lugar_trabajo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `trabajo_compensatorio`
--
ALTER TABLE `trabajo_compensatorio`
  ADD CONSTRAINT `fk_Trabajo_compensatorio_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `transporte`
--
ALTER TABLE `transporte`
  ADD CONSTRAINT `fk_Transporte_Formulario1` FOREIGN KEY (`formulario_id_formulario`) REFERENCES `formulario` (`id_formulario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tutorias`
--
ALTER TABLE `tutorias`
  ADD CONSTRAINT `fk_Tutorias_Carrera1` FOREIGN KEY (`carrera_id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tutorias_materia1` FOREIGN KEY (`materia_id_materia1`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_Rol1` FOREIGN KEY (`rol_id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
