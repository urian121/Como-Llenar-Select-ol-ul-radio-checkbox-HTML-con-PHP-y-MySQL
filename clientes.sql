-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2021 a las 03:01:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`) VALUES
(34, 'JORGE ARTURO', 'arturo@hotmail.com'),
(35, 'ALVARO ', 'alvaro@hotmail.com'),
(37, 'GUILLERMO ', 'guillermo@yahoo.es'),
(39, 'GUSTAVO HENAO', 'gustavo@GMAIL.COM'),
(40, 'HERNANDO ', 'hernado@gmail.com'),
(41, 'HECTOR ', 'hector@gmail.com'),
(42, 'ALEJANDRO ', 'alejandro@hotmail.com'),
(43, 'ALBERTO ', 'alberto@yahoo.com'),
(44, 'JOSE ROBERTO ', 'jose@hotmail.com'),
(45, 'MARTHA ROCIO ', 'rocio@gmail.com'),
(46, 'DANIELA VALERO', 'daniela@hotmail.com'),
(47, 'MARIA PALACIO', 'mariapalacio@gmail.com'),
(50, 'MONICA ', 'monica@rghome.net'),
(51, 'GINA', 'gina@gmail.com'),
(52, 'DIANA ', 'diana@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
