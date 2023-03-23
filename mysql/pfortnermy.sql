-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-03-2023 a las 05:58:47
-- Versión del servidor: 8.0.32-0ubuntu0.22.04.2
-- Versión de PHP: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pfortnermy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint UNSIGNED NOT NULL,
  `codigo_empresa` varchar(3) NOT NULL,
  `codigo_linea` varchar(2) NOT NULL,
  `numero_pedido` int NOT NULL,
  `paciente_apellido` varchar(40) NOT NULL,
  `paciente_dni` int NOT NULL,
  `estado` varchar(12) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `codigo_empresa`, `codigo_linea`, `numero_pedido`, `paciente_apellido`, `paciente_dni`, `estado`, `createdAt`, `updatedAt`) VALUES
(1, '099', '05', 123456, 'SANCHEZ', 45222999, 'FINALIZADO', '2023-03-05', '2023-03-06'),
(2, '001', '01', 22222, 'JUAREZ', 988887, 'FINALIZADO', '2023-03-05', '2023-03-05'),
(4, '011', '05', 777777, 'PEREYRA', 32444444, 'EN PROCESO', '2023-03-06', '2023-03-06'),
(5, '011', '05', 777777, 'PEREYRA', 32444444, 'EN PROCESO', '2023-03-06', '2023-03-06'),
(6, '010', '05', 44444, 'ROMERO', 34577878, 'EN PROCESO', '2023-03-06', '2023-03-06'),
(7, '001', '05', 11111, 'CARLES', 634342, 'EN PROCESO', '2023-03-06', '2023-03-06'),
(8, '002', '01', 22222, 'CIRILLO', 2134555, 'EN PROCESO', '2023-03-06', '2023-03-06'),
(9, '004', '05', 55555, 'ROMANI', 25777546, 'EN PROCESO', '2023-03-06', '2023-03-06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
