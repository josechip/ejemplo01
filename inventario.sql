-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2016 a las 03:49:26
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `marc_id` int(11) NOT NULL,
  `marc_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`marc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`marc_id`, `marc_desc`) VALUES
(1, 'Sinkey'),
(2, 'Estrago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE IF NOT EXISTS `movimiento` (
  `movi_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `movi_fecha` date NOT NULL,
  `movi_cantidad` int(11) NOT NULL,
  `movi_accion` char(1) NOT NULL,
  PRIMARY KEY (`movi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `prod_id` int(11) NOT NULL,
  `prod_nombre` varchar(50) NOT NULL,
  `prod_stock` int(11) NOT NULL,
  `prod_precio` double NOT NULL,
  `prod_genero` char(1) NOT NULL,
  `id_talla` int(11) NOT NULL,
  `id_marc` int(11) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`prod_id`, `prod_nombre`, `prod_stock`, `prod_precio`, `prod_genero`, `id_talla`, `id_marc`) VALUES
(1, 'Pantalon', 50, 159, 'M', 38, 1),
(2, 'Pantalon', 30, 110, 'F', 38, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
