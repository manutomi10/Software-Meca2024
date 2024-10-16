-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-10-2024 a las 13:59:46
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
(1, 'carne', '060', '070', 'cocido'),
(2, 'pollo', '060', '080', 'cocido'),
(3, 'cerdo', '065', '095', 'cocido'),
(4, 'carne', '058', '065', 'a punto'),
(5, 'carne', '053', '058', 'crudo');

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
