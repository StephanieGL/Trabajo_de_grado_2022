-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2022 a las 01:46:42
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ganado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganado_datos`
--

CREATE TABLE `ganado_datos` (
  `ID` int(5) DEFAULT NULL,
  `Edad(años)` int(1) DEFAULT NULL,
  `Tipo de Ganado` varchar(6) DEFAULT NULL,
  `Fecha de entrada` varchar(10) DEFAULT NULL,
  `Fecha de nacimineto` varchar(10) DEFAULT NULL,
  `Peso(KG)` int(3) DEFAULT NULL,
  `Raza` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ganado_datos`
--

INSERT INTO `ganado_datos` (`ID`, `Edad(años)`, `Tipo de Ganado`, `Fecha de entrada`, `Fecha de nacimineto`, `Peso(KG)`, `Raza`) VALUES
(10001, 5, 'bovino', '20/10/2022', '15/01/2017', 710, 'Gyrolando'),
(10002, 4, 'bovino', '20/10/2022', '10/03/2018', 650, 'Gyrolando'),
(10003, 5, 'bovino', '20/10/2022', '05/02/2017', 720, 'Gyrolando'),
(10004, 2, 'bovino', '20/10/2022', '01/08/2020', 480, 'Gyrolando'),
(10005, 1, 'bovino', '20/10/2022', '22/05/2021', 380, 'Gyrolando');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ganado_datos`
--
ALTER TABLE `ganado_datos` ADD FULLTEXT KEY `Fecha de nacimineto` (`Fecha de nacimineto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
