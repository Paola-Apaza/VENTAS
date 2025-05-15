-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2025 a las 22:43:52
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
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `caja_id` int(5) NOT NULL,
  `caja_numero` int(5) NOT NULL,
  `caja_nombre` varchar(100) NOT NULL,
  `caja_efectivo` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`caja_id`, `caja_numero`, `caja_nombre`, `caja_efectivo`) VALUES
(1, 1, 'Caja Principal', 68.50),
(2, 2, 'Segunda Caja', 7777777777777777311744.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(7) NOT NULL,
  `categoria_nombre` varchar(50) NOT NULL,
  `categoria_ubicacion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(1, 'Lacteos', ''),
(2, 'Embutidos', ''),
(3, 'Pescadería', ''),
(5, 'Bebidas', ''),
(6, 'Carnes', ''),
(7, 'Abarrotes', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(10) NOT NULL,
  `cliente_tipo_documento` varchar(20) NOT NULL,
  `cliente_numero_documento` varchar(35) NOT NULL,
  `cliente_nombre` varchar(50) NOT NULL,
  `cliente_apellido` varchar(50) NOT NULL,
  `cliente_provincia` varchar(30) NOT NULL,
  `cliente_ciudad` varchar(30) NOT NULL,
  `cliente_direccion` varchar(70) NOT NULL,
  `cliente_telefono` varchar(20) NOT NULL,
  `cliente_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_tipo_documento`, `cliente_numero_documento`, `cliente_nombre`, `cliente_apellido`, `cliente_provincia`, `cliente_ciudad`, `cliente_direccion`, `cliente_telefono`, `cliente_email`) VALUES
(1, 'Otro', 'N/A', 'Publico', 'General', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(2, 'DNI', '12993042', 'Paola', 'Apaza', 'La Paz', 'La Paz', 'Av. LaPaz', '', 'Apazapaola@gmail.com'),
(3, 'CI', '0589954756', 'Johan', 'Barrionuevo Atahuachi', 'La Paz', 'Viacha', 'av.woe', '68393434', 'BarrionuevoAtahuachi@gmail.com'),
(4, 'CI', '922196951236874123695147895123', 'Melody', 'Calcina', 'La Paz', 'El Alto', 'Villa Exaltacion', '79522282', 'melody@gmail.com'),
(5, 'CI', '9221962', 'Noelia', 'Condori', 'La Paz', 'El Alto', 'Av. Argentina', '78596654', 'noelia@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL,
  `empresa_nombre` varchar(90) NOT NULL,
  `empresa_telefono` varchar(20) NOT NULL,
  `empresa_email` varchar(50) NOT NULL,
  `empresa_direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `empresa_nombre`, `empresa_telefono`, `empresa_email`, `empresa_direccion`) VALUES
(1, 'FRESHMARKET', '2556528288', 'freshmarket@gmail.com', 'Av. Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(77) NOT NULL,
  `producto_nombre` varchar(100) NOT NULL,
  `producto_stock_total` int(25) NOT NULL,
  `producto_tipo_unidad` varchar(20) NOT NULL,
  `producto_precio_compra` decimal(30,2) NOT NULL,
  `producto_precio_venta` decimal(30,2) NOT NULL,
  `producto_marca` varchar(35) NOT NULL,
  `producto_modelo` varchar(35) NOT NULL,
  `producto_estado` varchar(20) NOT NULL,
  `producto_foto` varchar(500) NOT NULL,
  `categoria_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_stock_total`, `producto_tipo_unidad`, `producto_precio_compra`, `producto_precio_venta`, `producto_marca`, `producto_modelo`, `producto_estado`, `producto_foto`, `categoria_id`) VALUES
(1, 'LLL222', 'Leche', 43, 'Botella', 5.50, 6.00, 'Pil', '2L', 'Habilitado', '', 1),
(5, '232l', 'Mantequilla', 54, 'Unidad', 15.00, 16.00, 'Regia', '', 'Habilitado', '', 1),
(6, 'dfohoef45', 'Chorizo', 40, 'Kilogramo', 30.00, 40.00, 'Sofia', '', 'Habilitado', '', 2),
(7, 'owhfuf55', 'Salchicha', 50, 'Libra', 10.00, 15.00, 'Sofia', '', 'Habilitado', '', 2),
(8, 'eufhewu', 'Jamón', 30, 'Otro', 8.00, 12.00, 'Sofia', '', 'Habilitado', '', 2),
(9, 'igiophi', 'Pacú', 24, 'Kilogramo', 20.00, 25.00, '', '', 'Habilitado', '', 3),
(10, 'ojiyfkb', 'Surubí', 20, 'Kilogramo', 30.00, 40.00, '', '', 'Habilitado', '', 3),
(11, 'tuyiuyfi5789', 'Sábalo', 35, 'Kilogramo', 12.00, 20.00, '', '', 'Habilitado', '', 3),
(12, 'igi79gi', 'Café Nescafe Original Tapa Negra', 70, 'Unidad', 60.00, 68.00, 'Nescafe', 'Tapa Negra', 'Habilitado', '', 7),
(13, 'sigfiwruf', 'Café Nescafe Original Tapa Roja', 50, 'Unidad', 60.00, 68.00, 'Nescafe', 'Tapa Roja', 'Habilitado', '', 7),
(14, 'crerssd34', 'Crema de Leche', 66, 'Lata', 22.00, 26.50, 'Nestle', '300 gr', 'Habilitado', '', 7),
(15, 'yedtfiu', 'Azúcar Blanca', 90, 'Kilogramo', 5.00, 6.50, 'Guabira', '', 'Habilitado', '', 7),
(16, 'coquitasdufg', 'Coca Cola 3L', 80, 'Botella', 14.00, 16.00, 'Coca Cola', '3 litros', 'Habilitado', '', 5),
(17, 'coquitadwoej', 'Coca Cola 2L', 80, 'Botella', 10.00, 11.50, 'Coca Cola', '2 litros', 'Habilitado', '', 5),
(18, 'hfyutfi', 'Fernet Branca 1L', 40, 'Botella', 100.00, 118.00, 'Fernet', 'Branca 1L', 'Habilitado', '', 5),
(19, 'iyfutdod', 'Pepsi 2L', 70, 'Botella', 7.00, 9.00, 'Pepsi', '2Litros', 'Habilitado', '', 5),
(20, 'iuguho', 'Filete de pechuga', 15, 'Kilogramo', 40.00, 46.50, 'Sofia', '', 'Habilitado', '', 6),
(21, 'cmol', 'Carne Molida de Primera', 20, 'Kilogramo', 70.00, 76.50, '', '', 'Habilitado', '', 6),
(22, 'chues', 'Hueso Rojo', 16, 'Kilogramo', 8.00, 9.00, '', '', 'Habilitado', '', 6),
(23, 'csil', 'Silpancho Freshmarket', 20, 'Kilogramo', 63.00, 66.00, 'Freshmarket', '', 'Habilitado', '', 6),
(24, 'cpollo', 'Pollo firial entero', 32, 'Kilogramo', 17.00, 19.90, 'Sofia', '', 'Habilitado', '', 6),
(25, 'lqueso', 'Queso crema bondle', 50, 'Unidad', 19.00, 21.50, 'Pil andina', '200 gr', 'Habilitado', '', 1),
(26, 'lcrem', 'Crema de leche', 32, 'Unidad', 17.00, 18.50, 'Delizia', '500 ml', 'Habilitado', '', 1),
(27, 'lquem', 'Queso Mozzarella', 30, 'Unidad', 99.00, 102.00, 'La Colonia', 'Barra kg', 'Habilitado', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(7) NOT NULL,
  `usuario_nombre` varchar(50) NOT NULL,
  `usuario_apellido` varchar(50) NOT NULL,
  `usuario_email` varchar(50) NOT NULL,
  `usuario_usuario` varchar(30) NOT NULL,
  `usuario_clave` varchar(535) NOT NULL,
  `usuario_foto` varchar(200) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_email`, `usuario_usuario`, `usuario_clave`, `usuario_foto`, `caja_id`) VALUES
(1, 'Administrador', 'Principal', '', 'Administrador', '$2y$10$Jgm6xFb5Onz/BMdIkNK2Tur8yg/NYEMb/tdnhoV7kB1BwIG4R05D2', '', 1),
(42, 'Brenda Wanda', 'Castro', '', 'Brenda', '$2y$10$c8YQA/JRkZq2Gn21CKyGqegd2YiPG7xWRYXpt3W6ao9azqs/1bdXm', '', 1),
(43, 'Wanda', 'Castro', '', 'BrendaW', '$2y$10$qciZT7rqRQ3S.pANZJ2OiOakw01Wd3ZrowzZc.hmunic1Nrmbyoia', '', 1),
(44, 'gary', 'nina', '', 'GGry', '$2y$10$UYHYsbvrkEPUZdQmmadKZOYO2/pbpPkRuOxMNdXoLpTCiuoPtCKz6', '', 1),
(45, 'uoiqh', 'Castraadad', '', 'brBrRdndas', '$2y$10$MP88cBHFlgFjkZxnb8V5V.pc7QAjey64Ab07cMyyhmQhK2wH8wqm6', '', 1),
(46, 'fer', 'torrez', 'erv@gmail.commmmm', 'admin', '$2y$10$94WYKdPYLVxlIbflwP7Xz.CFjGjyAX9aQfWTRyltobx8Vbmn437e6', '', 1),
(47, 'Paola', 'Apaza', 'paola@gmail.com', 'Paola', '$2y$10$4l/N9mfR1DL1xvdRBlCNQOWGwnV4CgnMQQUseoVuc0lZlsL70Vpei', '', 1),
(48, 'Noelia', 'Condori', 'noelia@gmail.com', 'Noelia', '$2y$10$M3HAR7YRec.ssQdFRYGBSO/Gk.nI29Lq1BhPq7LY2XLwys5vC.cFi', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `venta_id` int(30) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `venta_fecha` date NOT NULL,
  `venta_hora` varchar(17) NOT NULL,
  `venta_total` decimal(30,2) NOT NULL,
  `venta_pagado` decimal(30,2) NOT NULL,
  `venta_cambio` decimal(30,2) NOT NULL,
  `usuario_id` int(7) NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`venta_id`, `venta_codigo`, `venta_fecha`, `venta_hora`, `venta_total`, `venta_pagado`, `venta_cambio`, `usuario_id`, `cliente_id`, `caja_id`) VALUES
(1, 'N5P9W2P1C5-1', '2024-11-17', '08:29 pm', 12.00, 15.00, 3.00, 42, 1, 1),
(2, 'E1U7C9H2Q1-2', '2024-11-17', '08:46 pm', 30.00, 35.00, 5.00, 42, 1, 1),
(3, 'S8A1Z2Y0M1-3', '2025-03-10', '11:58 am', 96.00, 100.00, 4.00, 43, 1, 2),
(4, 'B0M9E8A8K2-4', '2025-03-17', '02:36 pm', 26.50, 30.00, 3.50, 42, 1, 1),
(5, 'R6P8Y4H2U0-5', '2025-04-07', '11:43 am', 53.00, 60.00, 7.00, 42, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `venta_detalle_id` int(100) NOT NULL,
  `venta_detalle_cantidad` int(10) NOT NULL,
  `venta_detalle_precio_compra` decimal(30,2) NOT NULL,
  `venta_detalle_precio_venta` decimal(30,2) NOT NULL,
  `venta_detalle_total` decimal(30,2) NOT NULL,
  `venta_detalle_descripcion` varchar(200) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `venta_detalle`
--

INSERT INTO `venta_detalle` (`venta_detalle_id`, `venta_detalle_cantidad`, `venta_detalle_precio_compra`, `venta_detalle_precio_venta`, `venta_detalle_total`, `venta_detalle_descripcion`, `venta_codigo`, `producto_id`) VALUES
(1, 2, 5.50, 6.00, 12.00, 'Leche', 'N5P9W2P1C5-1', 1),
(2, 5, 5.50, 6.00, 30.00, 'Leche', 'E1U7C9H2Q1-2', 1),
(3, 6, 15.00, 16.00, 96.00, 'Mantequilla', 'S8A1Z2Y0M1-3', 5),
(4, 1, 22.00, 26.50, 26.50, 'Crema de Leche', 'B0M9E8A8K2-4', 14),
(5, 2, 22.00, 26.50, 53.00, 'Crema de Leche', 'R6P8Y4H2U0-5', 14);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`caja_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`venta_id`),
  ADD UNIQUE KEY `venta_codigo` (`venta_codigo`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indices de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD PRIMARY KEY (`venta_detalle_id`),
  ADD KEY `venta_id` (`venta_codigo`),
  ADD KEY `producto_id` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `caja_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  MODIFY `venta_detalle_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`);

--
-- Filtros para la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD CONSTRAINT `venta_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `venta_detalle_ibfk_3` FOREIGN KEY (`venta_codigo`) REFERENCES `venta` (`venta_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
