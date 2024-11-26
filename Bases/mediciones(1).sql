-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-11-2024 a las 14:34:20
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mediciones`
--
ALTER TABLE `mediciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mediciones`
--
ALTER TABLE `mediciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
