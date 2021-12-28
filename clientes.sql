-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-12-2021 a las 23:42:49
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.24

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
  `correo` varchar(250) DEFAULT NULL,
  `celular` varchar(250) DEFAULT NULL,
  `notificacion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `celular`, `notificacion`) VALUES
(34, 'JORGE ARTURO', 'arturo@hotmail.com', '8184625094', 'no'),
(35, 'ALVARO ', 'alvaro@hotmail.com', '3146570176', 'no'),
(37, 'GUILLERMO ', 'guillermo@yahoo.es', '3134729619', 'no'),
(39, 'GUSTAVO HENAO', 'gustavo@GMAIL.COM', '3125845586', 'no'),
(40, 'HERNANDO ', 'hernado@gmail.com', '3003162031', 'no'),
(41, 'HECTOR ', 'hector@gmail.com', '3138022491', 'no'),
(42, 'ALEJANDRO ', 'alejandro@hotmail.com', '3015601555', 'no'),
(43, 'ALBERTO ', 'alberto@yahoo.com', '3163230016', 'no'),
(44, 'JOSE ROBERTO ', 'jose@hotmail.com', '3102833190', 'no'),
(45, 'MARTHA ROCIO ', 'rocio@gmail.com', '3124979852', 'no'),
(46, 'DANIELA VALERO', 'daniela@hotmail.com', '3104693202', 'no'),
(47, 'MARIA PALACIO', 'mariapalacio@gmail.com', '311 315 1953', 'no'),
(50, 'MONICA ', 'monica@rghome.net', '3144571829', 'no'),
(51, 'GINA', 'gina@gmail.com', '3208877249', 'no'),
(52, 'DIANA ', 'diana@gmail.com', '3103259875', 'no');

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
