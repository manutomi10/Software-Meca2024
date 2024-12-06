-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-12-2024 a las 14:34:51
-- Versión del servidor: 10.11.3-MariaDB-1+rpi1
-- Versión de PHP: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `meca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coccion`
--

CREATE TABLE `coccion` (
  `id` int(11) NOT NULL,
  `corte` varchar(50) NOT NULL,
  `tempDarVuelta` varchar(11) NOT NULL,
  `tempFinal` varchar(11) NOT NULL,
  `punto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coccion`
--

INSERT INTO `coccion` (`id`, `corte`, `tempDarVuelta`, `tempFinal`, `punto`) VALUES
(1, 'carne', '065', '100', 'cocido'),
(2, 'pollo', '065', '100', 'cocido'),
(3, 'cerdo', '065', '100', 'cocido'),
(4, 'carne', '065', '100', 'a punto'),
(5, 'carne', '05', '010', 'crudo'),
(6, 'cruz', '000', '000', 'crudo'),
(7, 'pollo', '065', '100', 'crudo'),
(8, 'pollo', '065', '100', 'a punto'),
(9, 'cerdo', '030', '040', 'crudo'),
(10, 'cerdo', '065', '100', 'a punto'),
(11, 'cruz', '000', '000', 'a punto'),
(12, 'cruz', '000', '000', 'cocido');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `datos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `datos` (
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediciones`
--

CREATE TABLE `mediciones` (
  `id` int(11) NOT NULL,
  `valor` float NOT NULL,
  `fechahora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mediciones`
--

INSERT INTO `mediciones` (`id`, `valor`, `fechahora`) VALUES
(1, 100, '2024-08-14 09:10:42'),
(2, 100, '2024-08-14 09:10:43'),
(3, 200, '2024-08-14 09:16:24'),
(4, 200, '2024-08-14 09:16:26'),
(5, 200, '2024-08-14 09:16:26'),
(6, 200, '2024-08-14 09:16:26'),
(7, 400, '2024-08-14 09:22:35'),
(8, 1000000, '2024-08-14 09:24:19'),
(9, 100, '2024-08-14 09:30:14'),
(10, 200, '2024-08-14 09:33:09'),
(11, 500, '2024-08-14 09:37:34'),
(12, 600, '2024-08-14 09:37:53'),
(13, 600, '2024-08-14 09:37:53'),
(14, 123, '2024-08-14 09:38:11'),
(16, 444, '2024-08-14 09:39:12'),
(17, 444, '2024-08-14 09:39:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `telefono`, `fecha_registro`) VALUES
(31, 'lauty', '1234567', '2024-10-23 02:09:53'),
(32, 'Manuel', '1564323123', '2024-10-23 02:13:41'),
(33, 'Manuel', '6616312', '2024-10-23 02:49:23'),
(34, 'emi', '125768', '2024-10-23 03:23:51'),
(35, 'manu', '123456', '2024-10-23 11:40:18'),
(36, 'nahu', '12345678', '2024-10-23 11:41:19'),
(55, 'Ass', '1234', '2024-10-23 15:42:50'),
(56, 'Dd', '1', '2024-10-23 16:10:12'),
(57, 'manuel', '1234', '2024-10-23 16:11:47'),
(58, 'h', '12', '2024-10-23 16:41:27'),
(59, 'sw', '1234', '2024-10-24 12:28:01'),
(60, 'Mecatrónica', '115554444', '2024-10-24 15:34:17'),
(61, 'Mecatrónica', '115554444', '2024-10-24 16:22:38'),
(62, 'Mecatrónica', '115554444', '2024-10-24 17:03:49'),
(63, 'Mecatrónica', '115554444', '2024-10-24 17:04:01'),
(64, 'Mecatrónica', '115554444', '2024-10-24 17:07:45'),
(65, 'Mecatrónica', '115554444', '2024-10-24 17:08:52'),
(66, 'Mecatrónica', '115554444', '2024-10-24 17:11:42'),
(67, 'Mecatrónica', '115554444', '2024-10-24 17:32:29'),
(68, 'Mecatrónica', '115554444', '2024-10-24 18:59:42'),
(69, 'Mecatrónica', '115554444', '2024-10-25 14:10:40'),
(70, 'Mecatrónica', '115554444', '2024-10-25 14:11:40'),
(71, 'Mecatrónica', '115554444', '2024-10-25 15:50:32'),
(72, 'Mecatrónica', '11555444', '2024-10-25 16:21:46'),
(73, 'Mecatrónica2', '115554444', '2024-10-25 16:26:58'),
(74, 'Mecatrónica2', '11555444432', '2024-10-25 16:50:06'),
(75, 'Mecatrónica', '115554444', '2024-10-25 16:53:11'),
(76, 'Mecatrónica', '115554444', '2024-10-25 16:53:12'),
(77, 'Mecatrónica', '115554444', '2024-10-25 20:05:57'),
(78, 'Mecatrónica', '115554444', '2024-10-25 20:09:07'),
(79, 'Mecatrónica', '115554444', '2024-10-25 20:23:47'),
(80, 'Mecatrónica', '115554444', '2024-10-25 21:08:32'),
(81, 'Mecatrónica', '115554444', '2024-10-25 22:02:33'),
(82, 'Mecatrónica', '115554444', '2024-10-25 22:02:58'),
(83, 'Mecatrónica', '115554444', '2024-10-25 22:28:44'),
(84, 'Mecatrónica', '115554444', '2024-10-25 22:32:21'),
(85, 'Mecatrónica', '115554444', '2024-10-25 22:44:25'),
(86, 'Mecatrónica', '115554444', '2024-10-25 22:52:31'),
(87, 'Mecatrónica', '115554444', '2024-10-25 23:03:55'),
(88, 'Mecatrónica', '115554444', '2024-10-25 23:09:12'),
(89, 'Mecatrónica', '115554444', '2024-10-25 23:42:08'),
(90, 'Mecatrónica', '115554444', '2024-10-30 12:44:49'),
(91, 'Mecatrónica', '115554444', '2024-10-30 14:19:39'),
(92, 'Mecatrónicah', '115554444', '2024-10-30 14:27:11'),
(93, 'Mecatrónica', '115554444', '2024-10-30 14:37:09'),
(94, 'Mecatrónica', '115554444', '2024-10-30 14:38:27'),
(95, 'Mecatrónica', '115554444', '2024-10-30 14:39:05'),
(96, 'Mecatrónicaojkkj', '115554444', '2024-10-30 14:41:56'),
(97, 'Mecatrónica', '115554444', '2024-10-30 14:44:07'),
(98, 'Mecatrónica', '115554444', '2024-10-30 15:27:17'),
(99, 'Mecatrónica', '115554444', '2024-10-30 15:28:59'),
(100, 'Mecatrónica', '115554444', '2024-10-30 15:28:59'),
(101, 'Mecatrónicasdsdfsdfas', '1155544446', '2024-10-30 15:30:13'),
(102, 'Mecatrónicajhh', '115554444', '2024-10-31 13:09:52'),
(103, 'Mecatrónicahj', '115554444', '2024-10-31 13:15:16'),
(104, 'Mecatrónicagdjytdch', '115554444', '2024-10-31 13:16:44'),
(105, 'Mecatrónicagsf', '115554444', '2024-10-31 14:26:41'),
(106, 'Mecatrónica', '115554444', '2024-10-31 14:37:51'),
(107, 'Mecatrónicajhmvvb', '115554444', '2024-10-31 14:41:30'),
(108, 'Mecatrónicaasasdasdasdasd', '115554444', '2024-10-31 14:46:21'),
(109, 'Mecatrónicallll', '115554444', '2024-10-31 14:48:22'),
(110, 'Mecatrónica', '115554444', '2024-11-26 14:39:18'),
(111, 'Mecatrónica', '115554444', '2024-11-26 14:53:18'),
(112, 'Mecatrónica', '115554444', '2024-11-26 14:55:42'),
(113, 'Mecatrónica', '115554444', '2024-11-28 17:46:03'),
(114, 'Mecatrónica', '115554444', '2024-11-28 17:51:57'),
(115, 'Mecatrónica', '115554444', '2024-11-28 19:07:32'),
(116, 'Mecatrónica', '115554444', '2024-11-28 19:11:57'),
(117, 'Mecatrónica', '115554444', '2024-11-28 19:35:53'),
(118, 'Mecatrónica', '115554444', '2024-11-28 20:12:52'),
(119, 'Mecatrónica', '115554444', '2024-11-29 11:19:16'),
(120, 'Mecatrónica', '115554444', '2024-11-29 11:25:36'),
(121, 'Mecatrónica', '115554444', '2024-11-29 11:28:52'),
(122, 'Mecatrónica', '115554444', '2024-11-29 11:32:50'),
(123, 'Mecatrónica', '115554444', '2024-11-29 13:36:06'),
(124, 'Mecatrónica', '115554444', '2024-11-29 13:39:47'),
(125, 'Mecatrónica', '115554444', '2024-11-29 13:43:25'),
(126, 'Mecatrónica', '115554444', '2024-11-29 14:20:13'),
(127, 'Mecatrónica', '115554444', '2024-11-29 14:23:47'),
(128, 'Mecatrónica', '115554444', '2024-11-29 14:24:10'),
(129, 'Mecatrónica', '115554444', '2024-11-29 14:28:27'),
(130, 'Mecatrónica', '115554444', '2024-11-29 14:44:17'),
(131, 'Mecatrónica', '115554444', '2024-12-02 13:18:11'),
(132, 'Mecatrónica', '115554444', '2024-12-02 13:18:29'),
(133, 'Mecatrónica', '115554444', '2024-12-02 13:38:19'),
(134, 'Mecatrónica', '115554444', '2024-12-02 13:45:22'),
(135, 'Mecatrónica', '115554444', '2024-12-02 13:50:39'),
(136, 'Mecatrónica', '115554444', '2024-12-02 13:52:56'),
(137, 'Mecatrónica', '115554444', '2024-12-02 14:07:02'),
(138, 'Mecatrónica', '115554444', '2024-12-02 14:09:19'),
(139, 'Mecatrónica', '115554444', '2024-12-02 14:13:23'),
(140, 'Mecatrónica', '115554444', '2024-12-02 14:14:05'),
(141, 'Mecatrónica', '115554444', '2024-12-02 14:15:05'),
(142, 'Mecatrónica', '115554444', '2024-12-02 14:16:25'),
(143, 'Mecatrónica', '115554444', '2024-12-02 14:17:26'),
(144, 'Mecatrónica', '115554444', '2024-12-02 14:22:18'),
(145, 'Mecatrónica', '115554444', '2024-12-02 14:23:51'),
(146, 'Mecatrónica', '115554444', '2024-12-02 14:25:04'),
(147, 'Mecatrónica', '115554444', '2024-12-02 14:28:00'),
(148, 'Mecatrónica', '115554444', '2024-12-02 14:29:34'),
(149, 'Mecatrónica', '115554444', '2024-12-02 14:35:25'),
(150, 'Mecatrónica', '115554444', '2024-12-02 14:37:59'),
(151, 'Mecatrónica', '115554444', '2024-12-02 14:40:16'),
(152, 'Mecatrónica', '115554444', '2024-12-02 14:47:12'),
(153, 'Mecatrónica', '115554444', '2024-12-02 14:49:33'),
(154, 'Mecatrónica', '115554444', '2024-12-02 14:51:22'),
(155, 'Mecatrónica', '115554444', '2024-12-02 14:54:05'),
(156, 'Mecatrónica', '115554444', '2024-12-02 14:54:28'),
(157, 'Mecatrónica', '115554444', '2024-12-02 15:04:57'),
(158, 'Mecatrónica', '115554444', '2024-12-02 15:07:54'),
(159, 'Mecatrónica', '115554444', '2024-12-02 15:08:56'),
(160, 'Mecatrónica', '115554444', '2024-12-02 15:10:11'),
(161, 'Mecatrónica', '115554444', '2024-12-02 15:14:10'),
(162, 'Mecatrónica', '115554444', '2024-12-02 15:16:57'),
(163, 'Mecatrónica', '115554444', '2024-12-02 15:34:22'),
(164, 'Mecatrónica', '115554444', '2024-12-02 15:35:29'),
(165, 'Mecatrónica', '115554444', '2024-12-02 15:36:39'),
(166, 'Mecatrónica', '115554444', '2024-12-02 15:37:13'),
(167, 'Mecatrónica', '115554444', '2024-12-02 15:42:07'),
(168, 'Mecatrónica', '115554444', '2024-12-02 15:47:03'),
(169, 'Mecatrónica', '115554444', '2024-12-02 15:54:02'),
(170, 'Mecatrónica', '115554444', '2024-12-02 15:54:31'),
(171, 'Mecatrónica', '115554444', '2024-12-02 15:58:09'),
(172, 'Mecatrónica', '115554444', '2024-12-02 16:01:24'),
(173, 'Mecatrónica', '115554444', '2024-12-02 16:01:39'),
(174, 'Mecatrónica', '115554444', '2024-12-02 16:02:29'),
(175, 'Mecatrónica', '115554444', '2024-12-02 16:08:30'),
(176, 'Mecatrónica', '115554444', '2024-12-02 16:13:01'),
(177, 'Mecatrónica', '115554444', '2024-12-02 16:13:59'),
(178, 'Mecatrónica', '115554444', '2024-12-02 16:16:05'),
(179, 'Mecatrónica', '115554444', '2024-12-02 16:25:32'),
(180, 'Mecatrónica', '115554444', '2024-12-02 16:25:39'),
(181, 'Mecatrónica', '115554444', '2024-12-02 16:28:29'),
(182, 'Mecatrónica', '115554444', '2024-12-02 16:30:55'),
(183, 'Mecatrónica', '115554444', '2024-12-02 16:31:37'),
(184, 'Mecatrónica', '115554444', '2024-12-02 16:35:55'),
(185, 'Mecatrónica', '115554444', '2024-12-02 16:37:40'),
(186, 'Mecatrónica', '115554444', '2024-12-02 16:38:12'),
(187, 'Mecatrónica', '115554444', '2024-12-02 16:49:00'),
(188, 'Mecatrónica', '115554444', '2024-12-02 16:55:06'),
(189, 'Mecatrónica', '115554444', '2024-12-02 17:11:28'),
(190, 'Mecatrónica', '115554444', '2024-12-02 17:12:17'),
(191, 'Mecatrónica', '115554444', '2024-12-02 17:15:16'),
(192, 'Mecatrónica', '115554444', '2024-12-02 17:21:55'),
(193, 'Mecatrónica', '115554444', '2024-12-02 17:26:35'),
(194, 'Mecatrónica', '115554444', '2024-12-02 17:30:18'),
(195, 'Mecatrónica', '115554444', '2024-12-03 18:23:59'),
(196, 'Mecatrónica', '115554444', '2024-12-03 19:09:35'),
(197, 'Mecatrónica', '115554444', '2024-12-03 19:29:41'),
(198, 'Mecatrónica', '115554444', '2024-12-05 14:51:50'),
(199, 'Mecatrónica', '115554444', '2024-12-05 14:52:32'),
(200, 'Mecatrónica', '115554444', '2024-12-05 15:22:19'),
(201, 'Mecatrónica', '115554444', '2024-12-05 15:24:58'),
(202, 'Mecatrónica', '115554444', '2024-12-05 15:25:57'),
(203, 'Mecatrónica', '115554444', '2024-12-05 15:27:45'),
(204, 'Mecatrónica', '115554444', '2024-12-05 15:32:02'),
(205, 'Mecatrónica', '115554444', '2024-12-05 15:38:31'),
(206, 'Mecatrónica', '115554444', '2024-12-05 15:40:24'),
(207, 'Mecatrónica', '115554444', '2024-12-05 15:41:06'),
(208, 'Mecatrónica', '115554444', '2024-12-05 15:43:09'),
(209, 'Mecatrónica', '115554444', '2024-12-05 15:46:32'),
(210, 'Mecatrónica', '115554444', '2024-12-05 15:50:56'),
(211, 'Mecatrónica', '115554444', '2024-12-05 15:58:23'),
(212, 'Mecatrónica', '115554444', '2024-12-05 15:58:28'),
(213, 'Mecatrónica', '115554444', '2024-12-05 16:02:20'),
(214, 'Mecatrónica', '115554444', '2024-12-05 16:08:02'),
(215, 'Mecatrónica', '115554444', '2024-12-05 16:11:52');

-- --------------------------------------------------------

--
-- Estructura para la vista `datos`
--
DROP TABLE IF EXISTS `datos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `datos`  AS SELECT `usuarios`.`id` AS `id`, `usuarios`.`nombre` AS `nombre`, `usuarios`.`telefono` AS `telefono`, `usuarios`.`chatId` AS `chatId`, `usuarios`.`fecha_registro` AS `fecha_registro` FROM `usuarios` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coccion`
--
ALTER TABLE `coccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mediciones`
--
ALTER TABLE `mediciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coccion`
--
ALTER TABLE `coccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `mediciones`
--
ALTER TABLE `mediciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
