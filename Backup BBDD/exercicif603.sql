-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2019 a las 14:25:36
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `exercicif603`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `DNI` varchar(9) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Poblacion` varchar(50) DEFAULT NULL,
  `Telf` varchar(20) DEFAULT NULL,
  `Fecha_alta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `DNI`, `Nombre`, `Direccion`, `Poblacion`, `Telf`, `Fecha_alta`) VALUES
(1, '46994319y', 'pablo', 'asd', 'awdas', '1234', '0000-00-00 00:00:00'),
(2, '46994318m', 'fanny', 'alsjdknb', 'oasdibfn', '665892574', '2019-02-04 00:00:00'),
(3, '46994320x', 'Miquel', 'esdf', 'sdfg', '665478965', '2019-02-09 11:53:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaventas`
--

CREATE TABLE `lineaventas` (
  `ID_lineaVenta` int(11) NOT NULL,
  `ID_Producto` int(11) DEFAULT NULL,
  `ID_Venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lineaventas`
--

INSERT INTO `lineaventas` (`ID_lineaVenta`, `ID_Producto`, `ID_Venta`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 1, 2),
(5, 1, 2),
(14, 1, 2),
(15, 1, 22),
(16, 2, 22),
(17, 3, 22),
(18, 2, 22),
(19, 1, 23),
(20, 2, 23),
(21, 2, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Producto` int(11) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `StockActual` int(11) DEFAULT NULL,
  `PVP` decimal(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Producto`, `Descripcion`, `StockActual`, `PVP`) VALUES
(1, 'asus', 5, '666'),
(2, 'dell', 0, '3'),
(3, 'AlienWare', 100, '2100'),
(5, 'Hp Pavilion', 12, '1245'),
(6, 'Dell inspiron', 40, '1000'),
(7, 'AlienWare 15r2', 12, '2300'),
(8, 'Acer aspire', 30, '900'),
(9, 'Acer ', 21, '600'),
(10, 'Samsung s8 plus', 500, '670'),
(11, 'Asus Zenfone', 2, '400'),
(12, 'G.Skill raton', 40, '40'),
(13, 'Xiaomi A2', 500, '148');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID_Venta` int(11) NOT NULL,
  `ID_Cliente` int(11) DEFAULT NULL,
  `FechaVenta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`ID_Venta`, `ID_Cliente`, `FechaVenta`) VALUES
(1, 1, '2019-02-04 15:07:27'),
(2, 2, '2019-02-04 00:00:00'),
(22, 1, '2019-02-08 20:59:36'),
(23, 1, '2019-02-08 21:07:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indices de la tabla `lineaventas`
--
ALTER TABLE `lineaventas`
  ADD PRIMARY KEY (`ID_lineaVenta`),
  ADD KEY `2_LineaVentas` (`ID_Producto`),
  ADD KEY `3_LineaVentas` (`ID_Venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID_Venta`),
  ADD KEY `2_Ventas` (`ID_Cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lineaventas`
--
ALTER TABLE `lineaventas`
  MODIFY `ID_lineaVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID_Venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
