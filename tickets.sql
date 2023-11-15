-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2023 a las 05:24:14
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tickets`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleto_compra`
--

CREATE TABLE `boleto_compra` (
  `id_boleto` int(11) NOT NULL COMMENT 'Clave Primaria de la tabla boleto_compra.',
  `nom_local` text NOT NULL COMMENT 'Se almacena el nombre del local en donde se compra los productos.',
  `nom_producto` text NOT NULL COMMENT 'Se aloja el nombre de los productos que se compran.',
  `precio` double NOT NULL COMMENT 'Se guarda el valor del producto unitario.',
  `cantidad` int(11) NOT NULL COMMENT 'Aloja el número de productos comprados ',
  `fecha_compra` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Este campo almacena de forma automática la fecha y hora que se creó el registro.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `boleto_compra`
--

INSERT INTO `boleto_compra` (`id_boleto`, `nom_local`, `nom_producto`, `precio`, `cantidad`, `fecha_compra`) VALUES
(1, 'Pantastico', 'Pan de Molde', 1500.5, 2, '2023-11-15 01:16:05'),
(2, 'Pantastico', 'factura dulce', 890.37, 1, '2023-11-15 01:16:59'),
(3, 'verdulife', 'Morrones', 1050.16, 2, '2023-11-15 01:21:46'),
(4, 'verdulife', 'Ajo', 120, 3, '2023-11-15 01:22:13'),
(5, 'verdulife', 'Zapallo', 780.94, 1, '2023-11-15 01:23:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boleto_compra`
--
ALTER TABLE `boleto_compra`
  ADD PRIMARY KEY (`id_boleto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boleto_compra`
--
ALTER TABLE `boleto_compra`
  MODIFY `id_boleto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave Primaria de la tabla boleto_compra.', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
