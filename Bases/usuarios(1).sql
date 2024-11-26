-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2024 a las 14:34:29
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
(37, 'ghhjk', '234567', '2024-10-23 11:43:05'),
(38, 'manu', '123456', '2024-10-23 11:44:25'),
(39, 'aer', '132456', '2024-10-23 11:45:50'),
(40, 'gfd', '1234', '2024-10-23 11:49:06'),
(41, 'qw', '1234', '2024-10-23 11:50:19'),
(42, 'jjajaj', '12345', '2024-10-23 11:56:32'),
(43, '1w', '123', '2024-10-23 11:57:06'),
(44, 'fd', '123', '2024-10-23 11:59:00'),
(45, 'Manu', '1122334455', '2024-10-23 13:46:10'),
(46, 'Manu', '1233', '2024-10-23 14:19:45'),
(47, 'manuel', '1234', '2024-10-23 14:21:10'),
(48, 'k', '2', '2024-10-23 14:25:56'),
(49, 'aa', 'aaaaa', '2024-10-23 14:27:32'),
(50, 'aaa', 'aaaaa', '2024-10-23 14:29:25'),
(51, 'Lucas', '11325689', '2024-10-23 14:44:56'),
(52, 'aaa', '123456', '2024-10-23 14:45:35'),
(53, 'manuel', '333', '2024-10-23 14:58:15'),
(54, 'manuel', '1234', '2024-10-23 15:03:39'),
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
(109, 'Mecatrónicallll', '115554444', '2024-10-31 14:48:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
