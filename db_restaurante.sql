-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2021 a las 04:37:09
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl-direcciones`
--

CREATE TABLE `tbl-direcciones` (
  `ID DIRECCION` int(11) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl-envio`
--

CREATE TABLE `tbl-envio` (
  `ID-ENVIO` int(10) NOT NULL,
  `DESCRIPCION-ENVIO` varchar(3000) NOT NULL,
  `FECHA` date NOT NULL,
  `DIRECCION` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl-facturas`
--

CREATE TABLE `tbl-facturas` (
  `ID FACTURA` int(11) NOT NULL,
  `DESCRIPCION DE LA FACTURA` varchar(200) NOT NULL,
  `FECHA` date NOT NULL,
  `DIRECCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl-inventario`
--

CREATE TABLE `tbl-inventario` (
  `ID PRODUCTO` int(10) NOT NULL,
  `PRODUCTO` text NOT NULL,
  `PRECIO` int(50) NOT NULL,
  `DIRECCION` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl-pedidos`
--

CREATE TABLE `tbl-pedidos` (
  `ID PEDIDO` int(11) NOT NULL,
  `DESCRIPCION DEL PEDIDO` varchar(200) NOT NULL,
  `FECHA` date NOT NULL,
  `DIRECCION` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl-direcciones`
--
ALTER TABLE `tbl-direcciones`
  ADD PRIMARY KEY (`ID DIRECCION`);

--
-- Indices de la tabla `tbl-envio`
--
ALTER TABLE `tbl-envio`
  ADD PRIMARY KEY (`ID-ENVIO`);

--
-- Indices de la tabla `tbl-facturas`
--
ALTER TABLE `tbl-facturas`
  ADD PRIMARY KEY (`ID FACTURA`);

--
-- Indices de la tabla `tbl-inventario`
--
ALTER TABLE `tbl-inventario`
  ADD PRIMARY KEY (`ID PRODUCTO`);

--
-- Indices de la tabla `tbl-pedidos`
--
ALTER TABLE `tbl-pedidos`
  ADD PRIMARY KEY (`ID PEDIDO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl-direcciones`
--
ALTER TABLE `tbl-direcciones`
  MODIFY `ID DIRECCION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl-envio`
--
ALTER TABLE `tbl-envio`
  MODIFY `ID-ENVIO` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl-facturas`
--
ALTER TABLE `tbl-facturas`
  MODIFY `ID FACTURA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl-inventario`
--
ALTER TABLE `tbl-inventario`
  MODIFY `ID PRODUCTO` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl-pedidos`
--
ALTER TABLE `tbl-pedidos`
  MODIFY `ID PEDIDO` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
