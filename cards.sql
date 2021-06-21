-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db:3306
-- Tiempo de generación: 20-06-2021 a las 12:56:37
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cards`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cardholder`
--

CREATE TABLE `cardholder` (
  `id` int(11) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pam` varchar(19) NOT NULL,
  `cvv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cardholder`
--

INSERT INTO `cardholder` (`id`, `surname`, `name`, `pam`, `cvv`) VALUES
(1, 'FERNANDEZ', 'SANTIAGO', '0000 0001 0002 0003', 343),
(2, 'PAUL', 'PABLO', '0000 0001 0002 8988', 549),
(3, 'CURTO', 'VANESA', '0000 0001 0002 0010', 987);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cardholder`
--
ALTER TABLE `cardholder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cardholder`
--
ALTER TABLE `cardholder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
