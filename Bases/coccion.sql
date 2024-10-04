-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2024 a las 17:29:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

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
  `tempDarVuelta` int(11) NOT NULL,
  `tempFinal` int(11) NOT NULL,
  `punto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coccion`
--

INSERT INTO `coccion` (`id`, `corte`, `tempDarVuelta`, `tempFinal`, `punto`) VALUES
(1, 'carne', 60, 70, 'cocido'),
(2, 'pollo', 60, 80, ''),
(3, 'cerdo', 65, 95, ''),
(4, 'carne', 58, 65, 'punto'),
(5, 'carne', 53, 58, 'crudo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coccion`
--
ALTER TABLE `coccion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coccion`
--
ALTER TABLE `coccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
