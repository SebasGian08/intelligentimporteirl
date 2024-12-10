-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-12-2024 a las 10:16:02
-- Versión del servidor: 10.6.18-MariaDB-cll-lve
-- Versión de PHP: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intellig_usuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `portada` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Banner1', 'Banner1', 'img_2b772700a492a2d57cace04806841504.jpg', '2024-08-17 01:42:06', 'banner1', 1),
(2, 'Banner2', 'Banner2', 'img_f484811b0fbaa9498930bd90fe9f01f3.jpg', '2024-08-17 01:42:13', 'banner2', 1),
(3, 'Banner3', 'Banner3', 'portada_categoria.png', '2024-08-17 01:42:20', 'banner3', 2),
(4, 'Audifonos', 'Audifonos', 'img_63562d76c590032a610c744a645a5e9a.jpg', '2024-08-17 01:42:27', 'audifonos', 1),
(5, 'Amplificador de voz', 'Amplificador de voz', 'img_9809cf658c9855a3aab2c2e00408e71d.jpg', '2024-08-17 03:40:05', 'amplificador-de-voz', 1),
(6, 'parlantes', 'parlantes', 'img_7f2929d2f89a6cb629c27c2757016717.jpg', '2024-08-17 03:54:27', 'parlantes', 1),
(7, 'Microfono', 'Microfono', 'img_f4bdb7edd76866507e0a1dc5451676af.jpg', '2024-08-19 00:34:08', 'microfono', 1),
(8, 'Zona Gamer', 'Zona Gamer', 'img_9c5b86a60017156fed9e9ed41555d3ea.jpg', '2024-08-19 00:34:28', 'zona-gamer', 1),
(9, 'Megafonos', 'Megafonos', 'img_42c6fd22cf32702ee2eaa73faba11615.jpg', '2024-08-19 00:38:52', 'megafonos', 1),
(10, 'Accesorios', 'Accesorios', 'img_f8f3181b9b9e7e256feec3fd0d6ef75f.jpg', '2024-08-23 02:37:59', 'accesorios', 1),
(11, 'Pedestales', 'Pedestales', 'img_7289dbac3888b0147c0c3f8022a13ff7.jpg', '2024-08-25 15:04:29', 'pedestales', 1),
(12, 'ventilador', 'ventilador multifunción con luz led de 30w', 'img_6486f6187e26c32950f2adf47ac375fa.jpg', '2024-10-27 08:56:00', 'ventilador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(3, 'Roberto', 'roberto@gmail.com', 'hola', '2800:4b0:4303:5', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-03 21:52:05'),
(4, 'Aaaaa', 'daniesdasdal@gmail.com', 'sebas', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-12 17:57:10'),
(5, '8054002077', 'garycharles@dominatingkeywords.com', 'I am not offering you SEO, nor PPC. It\'s something completely different. Just send me keywords of your interest and I\'ll give you traffic guarantees on each of them. Let me demonstrate how it works and you will be surprised by the results.', '138.122.193.51', 'PC', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-10-23 13:52:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(267, 1, 'pro_5aabe510da36d4810fe14ae5bc272230.jpg'),
(269, 3, 'pro_ec0a57b038a5883886823e5aa79863df.jpg'),
(271, 5, 'pro_4b559d436c1191077e9155e5b62cadab.jpg'),
(274, 7, 'pro_3a5b9f090b6781c0723e00a0d30a1d65.jpg'),
(276, 8, 'pro_dc57212587aec5420e3b170725843acc.jpg'),
(278, 10, 'pro_ea01dc63311e2d174d637c334978644f.jpg'),
(281, 4, 'pro_49e6c4b074face18e47b737dde1e9039.jpg'),
(282, 4, 'pro_092560e40e50bc24716824d894450438.jpg'),
(283, 4, 'pro_b02937c843d3392f7c0d1026fe4b27aa.jpg'),
(290, 12, 'pro_7e1bb5aea26062bf72a70bdfadaa7c7a.jpg'),
(291, 13, 'pro_9501a45b4343d8c5fcb2950c3956a981.jpg'),
(292, 9, 'pro_d69447e83eacc2b0b3d26f4b0a773c09.jpg'),
(293, 9, 'pro_f02a152dc35c8a04dee131a947b3f370.jpg'),
(294, 0, 'pro_27acc34205bc8c045d8d6be70452a610.jpg'),
(299, 2, 'pro_bf14bba1c51e6fd7c31c7dbd21fe9a34.jpg'),
(300, 14, 'pro_02167d3bb50f1fcd6b2786b0ae62c71a.jpg'),
(301, 15, 'pro_fc2f2723a592c1c040a9188eb3ad52b6.jpg'),
(302, 16, 'pro_4b2f82065f6bcbda97959529e92ecadd.jpg'),
(303, 17, 'pro_9e1210c0fe9fe881e01fba6c1012d082.jpg'),
(304, 18, 'pro_5741e76c05ae2fd0b29b72679d7cdc53.jpg'),
(305, 19, 'pro_4794934b2b95702a1f35c8c2018a404e.jpg'),
(306, 20, 'pro_58a02d6353f2534a9aa2271d940accd4.jpg'),
(307, 0, 'pro_f486a0ca6df29ea29894c78462fc9456.jpg'),
(308, 22, 'pro_a76979f6955c1e1e3c6d39061623582b.jpg'),
(309, 23, 'pro_105dff372581b81e7e056193771549f7.jpg'),
(310, 24, 'pro_25bef12a9a5a4119eb2443c8ab4f9261.jpg'),
(311, 25, 'pro_829dfec80c6309efa28bb9280a4c82a6.jpg'),
(312, 26, 'pro_19ef3fe47ebebbb79b8f8843f1eb646b.jpg'),
(313, 27, 'pro_410f3879744fce162e19f6f0ede71de0.jpg'),
(314, 27, 'pro_daf995e017f088d0923ebf9c4596ba39.jpg'),
(315, 27, 'pro_353dc8162a481674525bc7d230a1951d.jpg'),
(316, 28, 'pro_f343ccd91b600077cff3a8a3570b4f07.jpg'),
(317, 29, 'pro_37e5193a3fae261fe674ad5d0bcd22dc.jpg'),
(318, 0, 'pro_f9965113ead8a9447f50074b8be0c3ae.jpg'),
(319, 0, 'pro_2477522690514ef9938bdb9df58b96e6.jpg'),
(320, 21, 'pro_fa100d25e19e302992a4757968b0226d.jpg'),
(321, 30, 'pro_7502e93fe70ee1ff721d937bbb18560f.jpg'),
(322, 30, 'pro_a16ef7bce079c7e72cf95b1384ede163.jpg'),
(323, 0, 'pro_e9a6d5e952f049b7cbce3bd3f07a5043.jpg'),
(324, 0, 'pro_457ca71d6b50f5da0a91ae83935b7ba2.jpg'),
(325, 31, 'pro_46a15955b5745896087be8e683a96cbd.jpg'),
(326, 31, 'pro_0cb4ecbc4236801996a5a8301df8207e.jpg'),
(327, 32, 'pro_7807a72019c63bf8886e1952e3c7b98d.jpg'),
(328, 32, 'pro_8bee003514b9ad333e02f64e0ff83c3f.jpg'),
(329, 32, 'pro_242d7531bede13acc14e5ab761132a01.jpg'),
(330, 33, 'pro_e6eb948c552551ca65d64202a543a51e.jpg'),
(331, 33, 'pro_fffdf8cad1227ebc0fdc30d423af8cc5.jpg'),
(332, 33, 'pro_628b63a0cdcc7871af88bf68daa1f607.jpg'),
(333, 34, 'pro_6c9e27054567089bb9886d06c6200181.jpg'),
(334, 34, 'pro_3954ab630b6e3399eea41b08a708ed7e.jpg'),
(335, 34, 'pro_4f5ea15243a05f9e65469a7a6514b62c.jpg'),
(336, 35, 'pro_a83e1c9a88febe18f5c7ee5a867aed52.jpg'),
(337, 35, 'pro_4c517b08b8a12a5ce007c36632e1982e.jpg'),
(338, 35, 'pro_15c3fe9a6bf6feedb19d01a8db364003.jpg'),
(339, 35, 'pro_5a5e9d37bc40360031db95087a6f8eeb.jpg'),
(340, 36, 'pro_1c42b045ab32e9eab9e3c03a02186de8.jpg'),
(341, 36, 'pro_cff208894082f306c68922757a858004.jpg'),
(342, 36, 'pro_0b692df9d34ebc5684a6c495be26c784.jpg'),
(343, 0, 'pro_299073285a84db44cfb0c726feee1d5e.jpg'),
(344, 0, 'pro_36e29b263a7f109464641914d24787f7.jpg'),
(345, 37, 'pro_27f336adcfe2edc588fc3694e2b6e9a9.jpg'),
(347, 37, 'pro_242ad6e28ef8273621bd739c07052678.jpg'),
(348, 38, 'pro_6a4e66fe41abd630b7cf017ae863acee.jpg'),
(349, 38, 'pro_5c7881864ad71a437bd58faad519c3a5.jpg'),
(350, 38, 'pro_7070d68fc7bce0e7da0fbb346ea19649.jpg'),
(351, 6, 'pro_b281698bfdca3acb3a874fa1de7915e3.jpg'),
(352, 6, 'pro_34c4181f60509d86a1759b139df769e4.jpg'),
(353, 5, 'pro_7b9455f885c7f54f2b8c8650682e8504.jpg'),
(354, 39, 'pro_75d275ce947d1ba7c60b923af1043fb6.jpg'),
(355, 39, 'pro_ac8ff6b814044eca039ceaf2e841e8d3.jpg'),
(356, 11, 'pro_1c2dc86b9b5bac9310d3cd3796441ad5.jpg'),
(357, 15, 'pro_a986dcdf74e3d8a6103513a6b66151c9.jpg'),
(358, 7, 'pro_c44b0ce7fad4bfe921be8cc28896d6bc.jpg'),
(359, 40, 'pro_3fce1c3d6fb98f3d275ab8c032db188d.jpg'),
(360, 40, 'pro_0376447e8763a3731c5a05a0631f7c5d.jpg'),
(361, 41, 'pro_f9eee4bcef21510ad79d03e9519d511f.jpg'),
(362, 41, 'pro_0ce70c6f09f82a45aca239e5bab136d9.jpg'),
(363, 41, 'pro_6707a053bc372545f175e1ca517b2dcb.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) DEFAULT NULL,
  `datospaypal` text DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(14, NULL, NULL, NULL, 1, '2024-02-08 12:27:32', 5.00, 331.00, 3, 'juan, juan', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(30, 4, 1, 1, 0, 0, 0),
(31, 4, 2, 0, 0, 0, 0),
(32, 4, 3, 1, 1, 1, 0),
(33, 4, 4, 1, 0, 0, 0),
(34, 4, 5, 1, 0, 1, 0),
(35, 4, 6, 0, 0, 0, 0),
(36, 4, 7, 1, 0, 0, 0),
(37, 4, 8, 1, 0, 0, 0),
(38, 4, 9, 0, 0, 0, 0),
(39, 2, 1, 1, 0, 0, 0),
(40, 2, 2, 0, 0, 0, 0),
(41, 2, 3, 0, 0, 0, 0),
(42, 2, 4, 1, 1, 1, 1),
(43, 2, 5, 0, 0, 0, 0),
(44, 2, 6, 1, 1, 1, 1),
(45, 2, 7, 0, 0, 0, 0),
(46, 2, 8, 0, 0, 0, 0),
(47, 2, 9, 0, 0, 0, 0),
(75, 5, 1, 1, 0, 0, 0),
(76, 5, 2, 0, 0, 0, 0),
(77, 5, 3, 0, 0, 0, 0),
(78, 5, 4, 1, 1, 1, 0),
(79, 5, 5, 0, 0, 0, 0),
(80, 5, 6, 1, 1, 1, 0),
(81, 5, 7, 1, 0, 0, 0),
(82, 5, 8, 1, 0, 0, 0),
(83, 5, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) DEFAULT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nombrefiscal` varchar(80) DEFAULT NULL,
  `direccionfiscal` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '24091989', 'Sebastian', 'Vasquez', 123456, 'admin@admin.com', 'c165991bb44520e4a1b546ec52cd68907cf66d3c82b77e5b7c2a64282249803e', 'CF', 'Abel OSH', 'Ciudad', 'e10427c1b535b82b128b-c0638ef48eb3333bc295-39c19a494859b6f24f34-2fa228f5ce280379b9ee', 1, '2021-08-20 01:34:15', 1),
(2, '24091990', 'Intelligent', 'Import', 987654321, 'sistema@intelligentimport.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, '156a00add683e9cddf1f-4e0a6d92ae80d9e42d80-dc233f6ec4c238c6966d-e8daa1769c08b775489b', 5, '2021-08-20 02:58:47', 1),
(3, '84654864', 'Abigail', 'Garcia', 4687987, 'abis@grupocodware.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '468798', 'Ricardo HP', 'Ciudad de Guatemala', NULL, 2, '2021-08-20 03:41:28', 1),
(4, '798465877', 'Fernando', 'Guerra', 468498, 'fer@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 0),
(6, '74162233', 'Juan', 'De La Cruz', 987654321, 'juan@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 3, '2023-05-27 15:25:56', 0),
(7, '7456123', 'Cliente', 'Adriana', 123456789, 'piura@admin.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 3, '2024-01-27 01:12:35', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', 'img_dbad84b64b0736ee8dedf9dd818fb12a.jpg', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', 'img_f00aaf29d0ab2a33c11adff2f3a3d146.jpg', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p class=\"stext-113 cl6 p-b-26\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.</p> <p class=\"stext-113 cl6 p-b-26\">Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula.</p> <p class=\"stext-113 cl6 p-b-26\">Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p class=\"stext-113 cl6 p-b-26\">Mauris non lacinia magna. Sed nec lobortis dolor. Vestibulum rhoncus dignissim risus, sed consectetur erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam maximus mauris sit amet odio convallis, in pharetra magna gravida. Praesent sed nunc fermentum mi molestie tempor. Morbi vitae viverra odio. Pellentesque ac velit egestas, luctus arcu non, laoreet mauris. Sed in ipsum tempor, consequat odio in, porttitor ante. Ut mauris ligula, volutpat in sodales in, porta non odio. Pellentesque tempor urna vitae mi vestibulum, nec venenatis nulla lobortis. Proin at gravida ante. Mauris auctor purus at lacus maximus euismod. Pellentesque vulputate massa ut nisl hendrerit, eget elementum libero iaculis.</p> <div class=\"bor16 p-l-29 p-b-9 m-t-22\"> <p class=\"stext-114 cl6 p-r-40 p-b-11\">Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn\'t really do it, they just saw something. It seemed obvious to them after a while.</p> <span class=\"stext-111 cl8\"> - Steve Job&rsquo;s </span></div> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.685802352331!2d-90.73646108521129!3d14.559951589828378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85890e74b3771e19%3A0x68ec9eeea79fd9a7!2sEl%20Arco%20de%20Santa%20Catalina!5e0!3m2!1ses!2sgt!4v1624005005655!5m2!1ses!2sgt\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></div>', 'img_d5e6dacb8bb7cea573bcc5f1c9f7d66a.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s1.jpg\" alt=\"Tienda Uno\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s2.jpg\" alt=\"Sucural dos\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s3.jpg\" alt=\"Sucural tres\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1),
(10, 'luis', '<p>a</p>', '', '2023-11-07 10:34:56', 'luis', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 9, '10002010', 'Megafono recargables de 40w BATBLACK BT-MF40', '<p class=\"ui-pdp-description__content\">Meg&aacute;fono 40W con bater&iacute;a recargable con un alcance de cobertura hasta 400m aproximadamente. Ideal para marchas, eventos, deportes, colegios e instituciones. Cuenta con un mango de agarre con peso balanceado para utilizarlo con una mano.<br /><br />ESPECIFICACIONES<br /><br />MODELO BT-MF40<br />MATERIAL ABS, alto impacto<br />MARCA Batblack<br />TIPO Meg&aacute;fono con bater&iacute;a recargable C/Sistema De Grabaci&oacute;n<br />VOLTAJE DE CARGA 220V AC<br />POTENCIA 40 W<br />RANGO Hasta 400 Metros (En condiciones ideales con l&iacute;neas de vista libre. El alcance varia dependiendo del terreno, condiciones ambientales, interferencias y obstrucciones de todo tipo)<br />BATER&Iacute;A 1 Bater&iacute;a Lithium Recargable 3.7V 1200mAh<br />FUNCIONES<br />&bull; Reproductor de MP3 mediante USB/ micro SD<br />&bull; Conexi&oacute;n bluetooth<br />&bull; Sistema de grabaci&oacute;n 300 seg.<br />&bull; Sirena de Emergencia 2 tonos<br />MEDIDAS DEL EMPAQUE Alto: 21,0 cm<br />Largo: 14,0 cm<br />Ancho: 13,0 cm<br /><br /></p>', 65.00, 10, NULL, '2024-08-17 01:45:40', 'megafono-recargables-de-40w-batblack-bt-mf40', 1),
(2, 7, '10002009', 'Micrófono alámbrico profesional BATBLACK BT-1006D', '<p>Micr&oacute;fono alambrico profesional BATBLACK modelo BT-1006D, especialmente dise&ntilde;ado para volcalistas y locutores, este microfono permite una mayor distancia entre el microfono y la fuente de sonido al tiempo que reduce la distorsion.</p> <p>reduce eficazmente el ruido y el polvo en el aire para hacer el sonido mas hermoso.</p> <p>ESPECIFICACIONES TECNICAS:</p> <p>- material del cuerpo de metal</p> <p>- tipo de capsula dinamico</p> <p>- frecuencia de respuesta 100-10khz</p> <p>- patron polar unidireccional</p> <p>- salida de impedencia 600ohm+-3db</p> <p>CONTENIDO DE LA CAJA:</p> <p>- 1 microfono alambrico</p> <p>- 1 soporte para microfono</p> <p>- 5 metros de cable conectores xrl a xrl</p> <p>- 1 esponja antipop</p> <p>- estuche de plastico resistente</p>', 85.00, 25, NULL, '2024-08-17 01:56:19', 'microfono-alambrico-profesional-batblack-bt-1006d', 1),
(3, 10, '10002034', 'Aro led rgb de 10\" con trípode', '<p>aro led rgb de 10\" con tripode</p>', 45.00, 4, NULL, '2024-08-17 01:58:32', 'aro-led-rgb-de-10\"-con-tripode', 1),
(4, 6, '10002001', 'Parlante portátil maxtron de 15\"', '<p>- parlante portatil de 15\" + twitter</p> <p>- bateria interna recargable de acido 12v. 7amp.</p> <p>- conexion bluetooth hasta 10 metros</p> <p>- lector de memoria usb/sd</p> <p>- sintonizador de radio fm</p> <p>- iluminacion led</p> <p>- incluye ruedas y asa para facil transporte</p> <p>- pantalla digital y botones de funcion en la parte posterio</p> <p>- control de encendido de las luces led</p> <p>- entrada en linea cannon dual 6.35mm/xrl para microfono</p> <p>- entrada en linea cannon dual 6.35mm/xrl para guitarra</p> <p>- entradas auxiliares 3.5mm y rca para fuentes externas de audio</p> <p>- potencia 500w rms</p> <p>- medidas: altura 65cm, ancho 45cm</p> <p>INCLUYE:</p> <p>- control remoto</p> <p>- microfono inalambrico uhf</p> <p>- cable de poder</p> <p>- manual de usuario</p> <p>- compatible con: pc, laptop, tv, dvd, smartphone, tablet y otros equipos de audio</p> <p>&nbsp;</p> <p>&nbsp;</p>', 599.00, 5, NULL, '2024-08-17 02:00:57', 'parlante-portatil-maxtron-de-15\"', 1),
(5, 8, '10002007', 'Teclado gamer rgb MICRONICS', '<p>teclado gamer MICRONICS modelo SPARTANO MIC K807</p> <p>CARACTERISTICAS:</p> <p>- teclado gamer con iluminacion rgb</p> <p>- retoiluminacion rgb led multicolores, ideal para navegar y jugar en ambientes oscuros</p> <p>- 9 efectos de iluminacion, adecuadas segun el estilo de usuario</p> <p>- botones para subir y bajar la intensidad de la luz</p> <p>- 12 teclas con funciones multimedia e internet&nbsp;</p> <p>- 19 teclas antighosting, evita que al pulsar mas de una tecla al mismo tiempo genere colision de comandos</p> <p>- peso extra para mayor estabilidad</p> <p>- cable de nylon trenzado de 150cm</p> <p>- distribucion de teclas, espa&ntilde;ol - idioma: espa&ntilde;ol/internacional</p> <p>- compatible con sisitemas operativos windows.</p>', 69.00, 4, NULL, '2024-08-17 02:02:33', 'teclado-gamer-rgb-micronics', 1),
(6, 8, '10002039', 'Teclado gamer rgb MICRONICS', '<p>teclado gamer rgb MICRONICS modelo SPARKO MIC K700 RGB</p> <p>CARACTERISTICAS:</p> <p>- teclas elevadas grabadas a laser, resistente al borrado por desgaste</p> <p>- iluminacion led rgb en fondo y teclas, permite un uso comodo en ambientes oscuros</p> <p>- teclas anti ghosting</p> <p>- brillo graduable</p> <p>- 12 teclas con funciones multimedia, accionadas mediante la tecla FN</p> <p>- sistema water proof, permite la salida de liquidos en caso de derrames</p> <p>- laterales dise&ntilde;ados en aluminio resistente a golpes</p> <p>- peso extra para mayor estabilidad</p> <p>- distribucion de teclas espa&ntilde;ol-espa&ntilde;a</p> <p>- idioma, espa&ntilde;ol internacional</p> <p>- compatible con sistemas operativos windows y otros.</p>', 69.00, 4, NULL, '2024-08-17 02:03:58', 'teclado-gamer-rgb-micronics', 1),
(7, 4, '10002002', 'Auriculares con pantalla LCD', '<p>los auriculares con pantalla LCD modelo V8, son dispositivos que combinan tecnologia avanzada con funcionalidad, proporsionando una experiencia auditiva mejorada. A continuacion te detallo las caracteristicas clave de este modelo</p> <p>1._PANTALLA LCD: muestra datos como el nivel de bateria, el estado de conexion bluetooth, el volumen actual, y la pista de audio en reproduccion</p> <p>2._INTERFAZ DE USUARIO: permite controlar funciones del auricular directamente desde la pantalla, como cambiar de pista, ajuste de volumen y mas</p> <p>3._CALIDAD DE SONIDO: los v8 estan equipados con drivers de calidad para ofrecer un sonido claro y potente , con un buen balance de graves y agudos</p> <p>4._CANCELACION DE RUIDO ON/OFF: incluye tecnologia de cancelacion de ruido para reducir el ruido ambiental y mejorar la inmersion sonora</p> <p>5._ BLUETOOTH V5.3: ofrece conexion estable y rapida con otros dispositivos</p> <p>6._CONTROLES INTEGRADOS: los controles tactiles permiten gestionar la reproduccion de musica, responder llamadas , activar el asistente de voz, ecualizador para diferentes generos, alarma, linterna, idioma, etc</p>', 99.00, 40, NULL, '2024-08-17 02:05:59', 'auriculares-con-pantalla-lcd', 1),
(8, 8, '10002033', 'Pad para mouse con diseño', '<p>pad mouse con dise&ntilde;o</p>', 10.00, 12, NULL, '2024-08-17 02:07:48', 'pad-para-mouse-con-diseno', 1),
(9, 10, '10002008', 'Luz delantera para bicicleta', '<p>4 en 1: luz&nbsp; led de 800 lumines, timbre de 130 decibeles, banco de energia y sujetador para celular</p>', 49.00, 5, NULL, '2024-08-17 02:10:11', 'luz-delantera-para-bicicleta', 1),
(10, 10, '10002035', 'Memoria usb kingston', '', 20.00, 12, NULL, '2024-08-17 02:12:15', 'memoria-usb-kingston', 1),
(11, 7, '10002004', 'Microfono inalambrico uhf doble batblack BT-Q2M', '<p>Microfono inalambrico BATBLACK modelo BT-Q2M, sistema de microfono inalambrico uhf, son menos susceptibles a las interferencias, reduciendo la frecuencia del sonido que se esta&nbsp; cortando, tambien reduciendo las restricciones en el lugar de uso, funciona hasta 50 metros en espacios abiertos y sin obstaculos<br />Ideal para karaoke en casa, animaci&oacute;n, perifoneo, comercios, etc<br />CARACTER&Iacute;STICAS:<br />- Frecuencia uhf<br />- Alcance 50 metros<br />- Efectos de sonido<br />INCLUYE:<br />- 2 micr&oacute;fonos uhf<br />- 1 receptor recargable<br />- 1 cable de carga v8<br />- 2 sujetadores anti deslizantes<br />- 4 pilas AA</p>', 290.00, 5, NULL, '2024-08-17 02:14:27', 'microfono-inalambrico-uhf-doble-batblack-bt-q2m', 1),
(12, 5, '10002003', 'Amplificador de voz profesional BATBLACK BT-V317', '<p>- mini amplificador de voz BATBLACK modelo BT-V317&nbsp;</p> <p>- admite tarjeta micro sd de 32gb</p> <p>- opcion de grabacion</p> <p>- entrada usb, reproduce directamente archivos de audio mp3</p> <p>- radio fm busqueda automatica</p> <p>- mas de 10 horas de uso continuo despues de una carga completa</p> <p>- comodo y conveniente para profesores , entrenadores guias turisticos, animadores, etc</p> <p>ESPECIFICACIONES:</p> <p>- max. salida power 100w</p> <p>- impedencia de salida 4 ohm</p> <p>- voltage de carga dc 5v/500ma</p> <p>- tiempo de carga 4-6 horas</p> <p>- bateria recargable 18650 lithium, bateria 3.7v/1800mah</p> <p>- temperatura de trabajo -10&deg;c hasta 45&deg;c</p> <p>- tiempo de trabajo : modo musica 4 a 5 horas , modo MIC 8 a 10 horas</p>', 160.00, 22, NULL, '2024-08-23 02:44:58', 'amplificador-de-voz-profesional-batblack-bt-v317', 1),
(13, 11, '10002005', 'Pedestal profesional BATBLACK BT-261', '<p>Pedestal profesional para caja acustica BATBLACK&nbsp; modelo BT-261. de uso profesional, capacidad de carga 80 kilos, altura minima 1.20 matros, altura maxima 2.20 metros tubos y articulaciones de metal</p>', 150.00, 5, NULL, '2024-08-25 15:06:57', 'pedestal-profesional-batblack-bt-261', 1),
(14, 7, '10002011', 'Micrófono inalámbrico vhf BATBLACK BT-V67R', '<p>Micr&oacute;fono inal&aacute;mbrico vhf BATBLACK modelo BT-V67R</p> <p>ESPECIFICACIONES TECNICAS:</p> <p>- rango de frecuencia 180-270mhz</p> <p>- estabilidad de frecuencia +-0.003%</p> <p>- frecuencia de respuesta 40hz-18khz</p> <p>- distorsion armonica &lt;0.5%</p> <p>- salida xrl balanceada y 1/4 desbalanceada</p> <p>- salida de voltaje 1/4&nbsp; 0-300mv</p> <p>- distancia de trabajo 60 metros</p> <p>TRANSMISOR:</p> <p>- RF salida power &lt;10mv</p> <p>- modo de modulacion fm</p> <p>- max. modulacion de frecuencia +-45khz</p> <p>- bateria AA*2&nbsp; 1.5v</p> <p>- duracion de la bateria 6 horas continuas</p> <p>RECEPTOR:</p> <p>- potencia promedio 6w</p> <p>- sencibilidad RF -85dbm</p> <p>- voltaje ac 220v/60hz</p> <p>&nbsp;</p>', 210.00, 15, NULL, '2024-08-25 21:01:20', 'microfono-inalambrico-vhf-batblack-bt-v67r', 1),
(15, 7, '10002012', 'Micrófono profesional uhf BATBLACK BT-678', '<p>Micr&oacute;fono inal&aacute;mbrico profesional UHF batblack modelo BT-367, dise&ntilde;ado pensado en la facilidad de uso, estos sistemas uhf cuentan con un elegante receptor de dos canales con pantalla digital led.</p> <p>- microfonos inalambricos, te permitira libre movimiento en unespacio</p> <p>- de uso perofesional como conferencias, presentaciones de uso personal como karaoke y mas</p> <p>- elimina cualquier distorsion y nivel de ruido significativo</p> <p>ESPECIFICACIONES TECNICAS</p> <p>RECEPTOR:</p> <p>- rango dinamico 96db</p> <p>- distorsion 0.3%</p> <p>- frecuencia de respuesta 30-20khz/+-2db</p> <p>- relacion se&ntilde;al ruido 96db</p> <p>- sensibilidad de recepcion -95db</p> <p>- retraso de transmision 3ms</p> <p>- fuente de alimentacion cc12v 500ma</p> <p>- salida de audio 1*6.35mm, salida balanceada 2*xrl</p> <p>- frecuencia variable</p> <p>- alcance 60 metros</p> <p>MICROFONOS:</p> <p>- salida de potencia 10mw</p> <p>- radiacion armonica -50dbc</p> <p>- bateria AA*2 de 1.5v</p> <p>- duracion de la bateria 5 horas continuas</p> <p>CONTENIDO DE LA CAJA:</p> <p>- 1 receptor</p> <p>- 2 microfonos inalambricos</p> <p>- 1 transformador de corriente</p> <p>- 1 cable de plug a plug</p> <p>- 4 pilas AA</p> <p>- 1 estuche de plastico resistente</p>', 420.00, 5, NULL, '2024-08-25 21:06:20', 'microfono-profesional-uhf-batblack-bt-678', 1),
(16, 9, '10002013', 'Megafono recargables de 60w', '<p>Meg&aacute;fono recargable de 60w BATBLACK modelo BT-MF60</p> <p>ESPECIFICACIONES:</p> <p>- megafono de 60w</p> <p>- utilza bateria recargable&nbsp;</p> <p>- bateria de litio 1800mah 3.7v</p> <p>- entrada usb, bluetooth, micro sd, mp3</p> <p>- sistema de grabacion 350 segundos</p> <p>- sirena de emergencia&nbsp;</p> <p>- diametro 13.5 cm, largo 21 cm</p> <p>- material abs de alto impacto</p> <p>- rango audible 500 metros</p>', 85.00, 20, NULL, '2024-08-25 21:25:33', 'megafono-recargables-de-60w', 1),
(17, 7, '10002014', 'Microfono profesional inalambrico uhf BATBLACK BT-M8822', '<p>- frecuencia uhf 740-770mhz (frecuencia variable)</p> <p>- tecnologia digital avanzada, puede trabjar simultaneamente en varias salas sin interferencias</p> <p>- funcion SCAN, ajusta la frecuencia de forma automatica</p> <p>- 300 frecuencias pre establecidas</p> <p>- radio de trabajo 80 metros</p> <p>RECEPTOR:</p> <p>- fuente de alimentacion 9v 1.5a</p> <p>- potencia 6w</p> <p>- relacion se&ntilde;al/ruido &gt;90db</p> <p>- imagen y rechazo no escencial &gt;100db</p> <p>- rechazo al borde del canal &gt;80db</p> <p>- sencibilidad de recepcion &gt;17dbuv</p> <p>MICROFONOS:</p> <p>- potencia del transmisor 30mw (max.)</p> <p>- tipo de modulacion fm</p> <p>- desviacion 25khz</p> <p>- emision espuria &gt;40db</p> <p>- voltaje de bateria 3v (2*1.5v AA)</p> <p>- duracion de la bateria, uso continuo 5 horas</p>', 750.00, 5, NULL, '2024-08-25 21:37:38', 'microfono-profesional-inalambrico-uhf-batblack-bt-m8822', 1),
(18, 7, '10002015', 'Microfono inalambrico profesional uhf BATBLACK BT-U168', '<p>- 2 microfonos inalambricos de mano, que te permite libre movimiento en un espacio</p> <p>- de uso profesional como conferencias, presentaciones o de uso personal como karaoke y mas</p> <p>- el receptor de se&ntilde;al cuenta con una pantalla digital led</p> <p>- elimina cualquier distorcion y nivel de ruido significativo</p> <p>MICROFONOS:</p> <p>- potencia de salida 5mw</p> <p>- directividad patron de unidirectividad</p> <p>- corriente de trabajo 150ma</p> <p>- fuente de alimentacion 2AA*1.5v</p> <p>- modo de oscilacion modulo KT</p> <p>- tipo de transmisor microfono dinamico</p> <p>- material del cuerpo plastico de alta calidad</p> <p>- duracion de la bateria 5 horas continuas</p> <p>RECEPTOR:</p> <p>- modo de oscilacion&nbsp; KT module</p> <p>- sencibilidad de recepcion 5dbuv</p> <p>- relacion de interferencia de ilusion &gt;80db</p> <p>- tencion de trabajo dc 12-15v</p> <p>- corriente de trabajo 450ma</p> <p>- relacion de interferencia del canal&gt;80db</p> <p>- relacion se&ntilde;al/ruido &gt;100db</p> <p>- voltaje de corriente alterna 100-240v</p> <p>- radio de trabajo 50 metros</p>', 270.00, 25, NULL, '2024-08-25 21:45:13', 'microfono-inalambrico-profesional-uhf-batblack-bt-u168', 1),
(19, 7, '10002016', 'microfono inalambrico profesional uhf BATBLACK BT-M40', '<p>- frecuencia 660-690 mhz (frecuencia variable)</p> <p>- tecnologia digital avanzada, sin perturbaciones e interferencias&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - bateria de alta eficiencia, permite que el microfono funcione durante un periodo de tiempo mas polongado&nbsp;</p> <p>- el receptor y el transmisor usan la pantalla lcd para indicar la frecuencia y el nivel de la bateria</p> <p>- 300 frecuencias pre establecidas</p> <p>- dise&ntilde;o para usar en escenarios grandes y peque&ntilde;os, salas de baile, salas de conferencias.etc</p> <p>- distancia de trabajo 50 metros</p> <p>RECEPTOR:</p> <p>- fuente de alimentacion dc 12v 500ma</p> <p>- ancho de banda 30mhz</p> <p>- ancho de canal 300khz</p> <p>- relacion se&ntilde;al/ruido &gt;96db</p> <p>- sencibilidad de recepcion&nbsp; -95dbm</p> <p>- transferencia retardo&nbsp; &lt;3ms</p> <p>MICROFONOS:</p> <p>- potencia del transmisor 30mw</p> <p>- tipo de modulacion fm</p> <p>- cambiar frecuencia IR SYNC</p> <p>- radiacion armonica &lt;-50dbc</p> <p>- voltaje de bateria 2AA de 1.5v</p> <p>- duracionde las pilas, uso continuo 5 horas</p>', 499.00, 5, NULL, '2024-08-26 09:57:31', 'microfono-inalambrico-profesional-uhf-batblack-bt-m40', 1),
(20, 7, '10002017', 'microfono inalambrico profesional uhf BATBLACK BT-58', '<p>microfono inalambrico profesional uhf batblack modelo BT-58, ofrece varias caracteristicas utiles, especialmente para los que buscan una opcion practica de karaoke y cualquier evento.</p> <p>MICROFONO:&nbsp;</p> <p>- potencia de salida rf &lt;-10mw</p> <p>- modo de modulacion fm</p> <p>- bateria AA*2 1.5v</p> <p>- tiempo de duracion de la bateria 8 horas</p> <p>RECEPTOR:</p> <p>- jack de antena tnc 50ohm</p> <p>- potencia nominal 6.5w</p> <p>- s/n &gt;103db(1khz-A)</p> <p>- frecuencia espejo &gt;110db</p> <p>- reduccion de ruido &gt;90db</p> <p>- rf sensibilidad -105dbm</p> <p>- canales duales&nbsp;</p> <p>- voltaje dc 12-18v&nbsp; adaptador</p>', 399.00, 10, NULL, '2024-08-26 10:02:55', 'microfono-inalambrico-profesional-uhf-batblack-bt-58', 1),
(21, 7, '10002018', 'microfono inalambrico profesional uhf BATBLACK BT-M43PRO', '<p>microfono inalambrico profesional uhf BATBLACK modelo BT-M43PRO, frecuencia 660-690mhz, bateria de alta eficiencia, permite que el microfono funcione durante un periodo de tiempo mas prolongado, el receptor y transmisor tienen la pantalla luminosa y clara, para indicar la frecuencia, dise&ntilde;o para usar en escenarios grandes y peque&ntilde;os ,salas de baile, eventos, etc. distancia de trabajo 50 metros.</p> <p>RECEPTOR:</p> <p>- fuente de alimentacion dc 12v 500ma</p> <p>- potencia &lt;3w</p> <p>- relacion se&ntilde;al ruido &gt;96db</p> <p>- sensibilidad de recepcion -95dbm</p> <p>- transferencia retardo &lt;3ms</p> <p>MICROFONO:</p> <p>- potencia del transmisor 30mw</p> <p>- tipo de modulacion fm</p> <p>- radiacion armonica &lt;-50dbc</p> <p>- voltaje de la bateria 2 AA de 1.5v</p> <p>- uso continuo 5 horas</p> <p>INCLUYE:</p> <p>- 2 microfonos inalambricos</p> <p>- 1 receptor</p> <p>- cable de plug a plug</p> <p>- transformador de corriente&nbsp;</p> <p>- 4 pilas</p> <p>- maleta de metal</p> <p>&nbsp;</p>', 390.00, 10, NULL, '2024-08-26 10:07:45', 'microfono-inalambrico-profesional-uhf-batblack-bt-m43pro', 1),
(22, 7, '10002019', 'microfono inalambrico profesional mixto uhf BATBLACK BT-E168', '<p>microfono inalambrico profesional batblack modelo BT-E168, microfonos inalambricos , te permitiran libre movimiento en un espacio, de uso profesional como conferencias, presentaciones, eventos, de uso personal como karaoke y mas, el receptor de se&ntilde;al cuenta con pantalla digital led, elimina cualquier distorsion y nivel de ruido significativo.</p> <p>CARACTERISTICAS TECNICAS:</p> <p>- relacion se&ntilde;al ruido &gt;100db</p> <p>- rango dinamico de respuesta &gt;100db</p> <p>- modo de modulacion analogico</p> <p>- radiacion perdida &lt;60dbc</p> <p>- distancia de trabajo 50 metros</p> <p>- respuesta de frecuencia +-40hz-16khz</p> <p>- distorcion de audio &lt;-0.2%</p> <p>- modo de trabajo &lt;100ma</p> <p>-estabilidad de frecuencia +-0.3%</p> <p>INCLUYE:</p> <p>- 1 microfono tipo vincha</p> <p>- 1 microfono de mano</p> <p>- 1 transmisor&nbsp;</p> <p>- 1 receptor</p> <p>- cable de plug a plug</p> <p>- cargador de corriente continua</p> <p>- 2 sujetadores antideslizantes</p> <p>- 4 pilas AA</p> <p>- maleta de plastico resistente</p>', 280.00, 5, NULL, '2024-08-26 10:11:53', 'microfono-inalambrico-profesional-mixto-uhf-batblack-bt-e168', 1),
(23, 7, '10002020', 'microfono inalambrico profesional uhf BATBLACK BT-M559B', '<p>microfono inalambrico profesional uhf batblack modelo BT-M559B, frecuencia uhf 649.3-678.8mhz , baterias de alta eficiencia , el microfono puede usarse continuamente durante 5 horas, distancia de trabajo 40 metros, es adecuado para salones de baile, aulas, karaoke u uso domestico</p> <p>RECEPTOR:</p> <p>- fuente de alimentacion dc 15v-17v</p> <p>- potencia 1w</p> <p>- relacion se&ntilde;al ruido &gt;100db</p> <p>- imagen y rechazo no escencial &gt;80db</p> <p>- rechazo al borde del canal &gt;80db</p> <p>- sensibilidad de recepcion 5dbuv (&gt;20db)</p> <p>MICROFONO:</p> <p>- potencia del transmisor 30mw</p> <p>- tipo de modulacion fm</p> <p>- emision espuria &gt;40db</p> <p>- bateria AA*2 1.5v&nbsp;</p> <p>- uso continuo 5 horas</p>', 390.00, 10, NULL, '2024-08-26 10:16:04', 'microfono-inalambrico-profesional-uhf-batblack-bt-m559b', 1),
(24, 7, '10002021', 'microfono inalambrico profesional uhf tipo vincha BATBLACK BT-M43BP', '<p>microfono inalambrico profesional uhf tipo vincha BATBLACK modelo BT-M43BP, frecuencia 660-690 mhz, tecnologia digital avanzada, sin perturbaciones e interferencias, bateria de alta eficiencia, permite que el microfono funcione durante un periodo de tiempo mas prolongado.</p> <p>el receptor y el transmisor usan la pantalla lcd para indicar la frecuencia</p> <p>dise&ntilde;o de circuito de un solo chip , de frecuencia fija, distancia de trabajo 50 metros</p> <p>RECEPTOR:</p> <p>- fuente de alimentacion dc 12v 500ma</p> <p>- potencia &lt;3w</p> <p>- relacion se&ntilde;al ruido &gt;95db</p> <p>- imagen y rechazo no escencial &gt;80db</p> <p>- rechazo al borde del canal &gt;80db</p> <p>- sencibilidad de recepcion -95dbuv</p> <p>BODY PACK:</p> <p>- frecuencia uhf 660-690mhz</p> <p>- ancho de banda 30mhz</p> <p>- radiacion armonica &lt;-50dbc</p> <p>- bateria AA*2&nbsp; 1.5V</p> <p>- duracion de la bateria 5 horas de uso continuo</p>', 390.00, 5, NULL, '2024-08-26 10:19:47', 'microfono-inalambrico-profesional-uhf-tipo-vincha-batblack-bt-m43bp', 1),
(25, 7, '10002022', 'microfono inalambrico profesional uhf tipo vincha BATBLACK BT-M40BP', '<p>microfono inalambrico profesional uhf tipo vincha BATBLACK modelo BT-M40BP</p> <p>CARACTERISTICAS:</p> <p>- frecuencia uhf 660-690 mhz</p> <p>- tecnologia digital avanzada, sin perturbaciones e interferencias</p> <p>- 300 frecuencias pre establecidas (frecuencia variable)</p> <p>- dise&ntilde;o para usar en escenarios grandes y peque&ntilde;os, salas de baile, salas de conferencias, etc</p> <p>- distancia de trabajo 50 metros</p> <p>RECEPTOR:</p> <p>- fuente de alimentacion dc12v 500ma</p> <p>- potencia &lt;3w</p> <p>- relacion se&ntilde;al ruido &gt;95db</p> <p>- imagen y rechazo no escencial &gt;80db</p> <p>- rechazo al borde del canal &gt;80db</p> <p>- sensibilidad de recepcion -95dbuv</p> <p>BODY PACK:</p> <p>- frecuencia UHF 660-690mhz</p> <p>- ancho de banda 30mhz</p> <p>- interruptor de frecuencia IR SYNC</p> <p>- radiacion armonica &lt;-50dbc</p> <p>- bateria doble AA DE 2*1.5V</p> <p>- duracion de la bateria uso continuo &gt;5 horas</p> <p>&nbsp;</p>', 499.00, 5, NULL, '2024-08-26 10:25:53', 'microfono-inalambrico-profesional-uhf-tipo-vincha-batblack-bt-m40bp', 1),
(26, 7, '10002023', 'microfono inalambrico profesional uhf tipo vincha BATBLACK BT-58KIT', '<p>microfono inalambrico profesional uhf tipo vincha batblack modelo BT-58KIT, es un microfono versatil que se utiza principalmente para aplicaciones en vivo y presentaciones donde la movilidad es importante.</p> <p>CARACTERISTICAS TECNICAS:</p> <p>- rango de frecuencia uhf 740-839.7mhz</p> <p>- frecuencia de respuesta 40hz-18khz</p> <p>- rango de audio dinamico &gt;105db</p> <p>- T.H.D &lt;0.5%</p> <p>- salida voltaje de plug 1/4&uml; 0-500mv: xrl 0-500mv</p> <p>- rango de cobertura 60 metros</p> <p>- temperatura de operacion -10&deg;c-50&deg;c</p> <p>TRANSMISOR:</p> <p>- RF salida power &lt;10mw</p> <p>- modo de la modulacion FM</p> <p>- maxima modulacion de frecuencia +-38khz</p> <p>- bateria AA 1.5v *2</p> <p>- duracion de la bateria 8 horas</p> <p>RECEPTOR:</p> <p>- antena jack TNC 50ohm</p> <p>- potencia promedio 6.5w</p> <p>- sensibilidad RF -105dbm</p> <p>- canales duales</p> <p>- voltaje dc12-18v, adaptador</p>', 420.00, 5, NULL, '2024-08-26 10:30:25', 'microfono-inalambrico-profesional-uhf-tipo-vincha-batblack-bt-58kit', 1),
(27, 7, '10002024', 'microfono alámbrico SHURE SM58', '<p>microfono alambrico SHURE modeelo SM58LC, es un microfono mas iconicos y utilizados en el mundo de la musica y el audio profesional. aqui tienes sus principales caracteristicas:</p> <p>- tipo: microfono dinamico</p> <p>- patron polar: cardioide</p> <p>- respuesta de frecuencia: 50hz-15khz</p> <p>- impedencia desalida: 150 ohm(300 ohm reales)</p> <p>- sensibilidad: -54.5 dbv/pa(1.85mv)</p> <p>- conector: xrl de 3 pines</p> <p>- peso: 298 gramos</p> <p>CARACTERISTICAS GENERALES:</p> <p>- durabilidad: conocido por su resistencia y durabilidad, puede soportar condiciones dificiles y uso intensivo en vivo</p> <p>- sonido: tiene una respuesta de frecuencia adaptada que enfatiza las frecuencias medias y atenua los graves para minimizar el ruido de manipulacion.</p> <p>- rechazo de ruido: el patron polar cardioide ayuda a minimizar la captacion de sonido fuera del eje, lo que reduce el ruido de fondo.</p> <p>- uso comun: ideal para vocalistas, tanto en vivo como en estudio, asi como para presentaciones en publico</p> <p>- filtro: incorporado con un filtro pop esferico que reduce los sonidos oclusivos(\"P\" y \"B\").</p> <p>este microfono es muy valorado por su calidad de sonido, confiabilidad y asequibilidad, y es una eleccion comun tanto como para profesionales y afisionados.</p> <p>&nbsp;</p>', 550.00, 3, NULL, '2024-08-26 10:35:17', 'microfono-alambrico-shure-sm58', 1),
(28, 10, '10002025', 'esponja antipop para microfonos BATBLACK BT-149C', '<p>esponja acustica aislante de ruidos externos y proteccion del microfono BATBLACK modelo BT-149C, tiene el tama&ntilde;o adecuado para la mayoria de los microfonos de mano con una entrada redonda en la parte inferior.</p> <p>la esponja proporciona una reduccion de ruido del viento, estallidos, silbidos y mas. mantiene tambien limpio tu microfono.</p> <p>el packs contiene 5 esponjas de colores (azul, naranja, amarillo, rojo y negro)&nbsp;&nbsp;</p>', 20.00, 20, NULL, '2024-08-26 10:42:45', 'esponja-antipop-para-microfonos-batblack-bt-149c', 1),
(29, 10, '10002026', 'esponja antipop para microfonos BATBLACK BT-149', '<p>esponja antipop para microfono color negro BATBLACK modelo BT-149, tienen el tama&ntilde;o adecuado para la mayoria de microfonos de mano con una entrada redonda en la parte inferior.</p> <p>la esponja proporciona una recuccion deruido del viento, estallidos, silvidos y mas. mantiene tambien limpio tu microfono.</p> <p>el packs contiene 5 esponjas de color negro</p>', 20.00, 20, NULL, '2024-08-26 10:46:03', 'esponja-antipop-para-microfonos-batblack-bt-149', 1),
(30, 6, '10002027', 'Parlante portátil MAXTRON DINAMIC MX301BT', '<p>parlante portatil maxtron modelo DINAMIC MX301BT</p> <p>CARACTERISTICAS:</p> <p>- 2 woofer de 5\"</p> <p>- 2 tweeter de 1.5\"</p> <p>- conexion bluetooth, puerto usb, / micro sd, radio fm, entrada auxiliar</p> <p>- bateria interna recargable de litio 7.4v/4000mah</p> <p>- sistema tws, se puede emparejar otro modelo similar mediante bluetooth</p> <p>INCLUYE:</p> <p>- 1 microfono alambrico</p> <p>- control remoto</p> <p>- transformador de corriente</p> <p>- manual de usuario</p> <p>&nbsp;</p>', 249.00, 2, NULL, '2024-08-26 11:02:15', 'parlante-portatil-maxtron-dinamic-mx301bt', 1),
(31, 6, '10002028', 'Parlante portátil maxtron', '<p>parlante portatil maxtron modelo IBIZA MX600B, dise&ntilde;ado para reunines y fiestas</p> <p>CARACTERISTICAS:</p> <p>- tower bluetooth speaker 8\" *2</p> <p>- pantalla led y botones de control</p> <p>- conexion bluetooth estable de largo alcance</p> <p>- lector de memoria usb/micro sd</p> <p>- sintonizador de radio fm</p> <p>- conexion de carga, entrada ac 220v</p> <p>- conexion de carga, entrada dc 9v</p> <p>- entrada jack de 6.35mm para microfono</p> <p>- entrada auxiliar jack de 3.5mm para fuentes externas de audio</p> <p>- boton mic priority , funcion microfono animadores</p> <p>- boton rec play , funcion para grabar canciones y audio a usb</p> <p>- entrada dc 12v, conexion bateria de carro</p> <p>- tama&ntilde;o: altura 58cm, largo 28cm, ancho 27cm</p> <p>INCLUYE:</p> <p>- 1 microfono inalambrico</p> <p>- control remoto</p> <p>- adaptador de corriente&nbsp;</p> <p>&nbsp;</p>', 290.00, 3, NULL, '2024-08-26 11:11:38', 'parlante-portatil-maxtron', 1),
(32, 6, '10002029', 'Parlante portátil de 8 pulgadas SONIVOX VS-SS2161', '<p>parlante portatil de 8 pulgadas SONIVOX modelo VS-SS2161, es un dispositivo de audio portatil dise&ntilde;ado para ofrecer una experiencia de sonido potente y de alta calidad .</p> <p>ideal para eventos,&nbsp; fiestas, o reuniones, proporsionando una buena calidad de sonido y portabilidad</p> <p>CARACTERISTICAS:</p> <p>- tama&ntilde;o del la bocina 8 pulgadas&nbsp;</p> <p>- potencia 25w rms proporsinando un sonido claro y potente</p> <p>- bluetooth, puerto usb, entrada auxiliar, tarjeta micro sd, radio fm, entrada para microfono</p> <p>- bateria recargable (duracion aproximada 6 horas)</p> <p>- luces led</p> <p>- dise&ntilde;o portatil, cuenta con asa para facilitar su transporte</p> <p>- colores disponibles rojo y azul</p> <p>INCLUYE:</p> <p>- 1 microfono inalambrico</p> <p>- control remoto</p> <p>- cable de carga&nbsp;</p> <p>- manual de usuario</p>', 240.00, 10, NULL, '2024-08-26 11:15:07', 'parlante-portatil-de-8-pulgadas-sonivox-vs-ss2161', 1),
(33, 6, '10002030', 'Parlante portátil de 8 pulgadas rgb SONIVOX VS-SS2281', '<p>parlante portatl de 8 pulgadas rgb SONIVOX modelo VS-SS2281, es un equipo compacto y versatil dise&ntilde;ado para ofrecer una experiencia de sonido vibrante con efectos de iluminacion rgb</p> <p>ESPECIFICACIONES:</p> <p>- Tama&ntilde;o del boofer 8\"</p> <p>- potencia de salida 2500w pmpo</p> <p>- conexion bluetooth, puerto usb, entrada auxiliar, tarjeta micro sd, radio fm, entrada para microfono y guitarra</p> <p>- duracion de la bateria aprox. 6 horas</p> <p>- iluminacion led rgb integrada que cambia de color</p> <p>- material de plastico resistente, incluye asa y ruedas para su facil transporte.</p> <p>INCLUYE:</p> <p>- 1 microfono inalambrico</p> <p>- control remoto</p> <p>- cable de carga</p> <p>- manual de usuario</p>', 265.00, 5, NULL, '2024-08-26 11:20:49', 'parlante-portatil-de-8-pulgadas-rgb-sonivox-vs-ss2281', 1),
(34, 6, '10002031', 'parlante portatil de 12 pulgadas SONIVOX VS-SS2285', '<p>parlante portatil de 12 pulgadas SONIVOX modelo VS-SS2285, es un dispositivo dise&ntilde;ado para ofrecer un sonido potente en un formato conveniente y transportable.</p> <p>ESPECIFICACIONES:</p> <p>- tama&ntilde;o del woofer 12 pulgadas</p> <p>- potencia de salida 4500w pmpo</p> <p>- bluetooth, puerto usb, entrada auxiliar, tarjeta micro sd, radio fm, entrada para microfono y guitarra</p> <p>- luces led on/off</p> <p>- hecho de plastico resistente con dise&ntilde;o portatil incluye asa y ruedas para facilitar su transporte</p> <p>INCLUYE:</p> <p>1 microfono inalambrico</p> <p>cable de carga&nbsp;</p> <p>control remoto</p> <p>manual de usuario</p>', 340.00, 5, NULL, '2024-08-26 11:26:47', 'parlante-portatil-de-12-pulgadas-sonivox-vs-ss2285', 1),
(35, 4, '10002032', 'auricular bluetooth aiwa', '<p>auricular bluetooth marca AIWA modelo AWK20NCB</p> <p>ESPECIFICACIONES:</p> <p>- bluetooth v5.0</p> <p>- reduccion de ruido activa, alrededor de 20db</p> <p>- cobertura de radio frecuencia 2.402ghz-2480ghz</p> <p>- rango de transmision10 metros</p> <p>- respuesta de frecuencia 20hz-20khz</p> <p>- impedencia 32ohm</p> <p>- sencibilidad del auricular 90db+-3db</p> <p>- sencibilidad del microfono -43db</p> <p>- bateria de iones de litio recargable 3.7v 250mah</p> <p>- tiempo de carga 2 horas</p> <p>- horas de funcionamiento 11 horas</p> <p>- tiempo de espera 300 horas</p>', 249.00, 2, NULL, '2024-08-30 07:11:40', 'auricular-bluetooth-aiwa', 1),
(36, 8, '10002036', 'parlante para pc CYBERTEL EVOLUTION CYB S206U', '<p>parlante para pc y laptop CYBERTEL modelo EVOLUTION CYB S206U</p> <p>CARACTERISTICAS:</p> <p>- sistema de audio 2.0</p> <p>- bocinas 2.5\" en cada satelite</p> <p>- control de volumen y encendido de satelite</p> <p>- alimentacion por conector usb</p> <p>- conector jack de 3.5mm</p> <p>- compatible con pc, laptop, tv, dvd y otros dispositivos de audio</p>', 25.00, 10, NULL, '2024-08-30 08:08:59', 'parlante-para-pc-cybertel-evolution-cyb-s206u', 1),
(37, 8, '10002037', 'teclado gamer con mouse MICRONICS', '<p>teclado gamer+mouse MICRONICS modelo XFORCE MIC GT8808 RGB</p> <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CARACTERISTICAS</p> <p>TECLADO:</p> <p>- retro iluminacion led en fondo y teclas</p> <p>- teclas con grabado laser resistente al borrado por desgaste</p> <p>- 12 teclas multimedia</p> <p>- 19 teclas antighosting</p> <p>- cable de nylon trenzado, mayor durabilidad</p> <p>- filtro anti electromagnetismo</p> <p>- sistema anti derrames, permite la salida de liquidos</p> <p>- distribucion de teclas. espa&ntilde;ol-espa&ntilde;a</p> <p>- compatible con sistemas operativos windows</p> <p>MOUSE:</p> <p>- mouse optico gamer de 6 botones</p> <p>- iluminacion led de 7 colores</p> <p>- scroll retro iluminado</p> <p>- sencibilidad graduable hasta 3200 dpi</p> <p>- 2 botones de avance y retroceso</p> <p>- comodidad de agarre, peso extra</p> <p>- cable de nylon trenzado de 150 cm</p> <p>- filtro anti electromagnetismo</p> <p>- compatible con sisitemas operativos windows</p>', 99.00, 5, NULL, '2024-08-30 08:32:10', 'teclado-gamer-con-mouse-micronics', 1),
(38, 8, '10002038', 'auricular gamer con microfono', '<p>auricular gamer con microfono CYBERTEL modelo CYB HG502-P4 RGB</p> <p>CARACTERISTICAS:</p> <p>- iluminacion led rgb</p> <p>- almohadillas y banda protectora de cuero</p> <p>- microfono flexible</p> <p>- control de volumen en orejera</p> <p>- cable de nylon trenzado</p> <p>- conector usb para encendido de luces</p> <p>- conector jack de 3.5mm TRRS \"L\" para audio y microfono</p> <p>- compatible con pc laptop y otros equipos</p>', 68.00, 5, NULL, '2024-08-30 08:36:55', 'auricular-gamer-con-microfono', 1),
(39, 8, '10002040', 'teclado estándar cybertel EVOLUTION CYB K200', '<p>teclado estandar CYBERTEL modelo EVOLUTION CYB K200</p> <p>CARACTERISTICAS:</p> <p>- teclado estandar</p> <p>- teclas semi curvas</p> <p>- teclas A, S, W, D y direccionales rojas</p> <p>- conexion usb</p> <p>- longitud del cable 140cm</p> <p>- barniz uv anti borrado (letras resistentes al borrado por desgaste)</p> <p>- sistema anti derrame, permite la salida de liquidos en caso de derrame sobre la superficie del teclado</p> <p>- distribucion de letras , espa&ntilde;ol-espa&ntilde;a</p> <p>- idioma, espa&ntilde;ol internacional</p> <p>- compatible con sistemas operativos windows</p>', 35.00, 5, NULL, '2024-08-30 08:53:47', 'teclado-estandar-cybertel-evolution-cyb-k200', 1),
(40, 7, '10002041', 'microfono inalambrico uhf con bluetooth BATBLACK BT-772', '<p>microfono inalambrico profesional uhf BATBLACK modelo BT-772, con un elegante receptor y 2 canales con pantalla digital led, carcasa de metal multifrecuencia 300 canales, entrada BGM y salida REC</p> <p>RECEPTOR:</p> <p>- rango dinamico 96db</p> <p>- radio de trabajo 60 metros</p> <p>- distorcion 0.3%</p> <p>- frecuencia de respuesta 30-20khz/+-2db</p> <p>- relacion se&ntilde;al ruido 96db</p> <p>- sensibilidad de recepcion -95db</p> <p>- retraso de transmision 3ms</p> <p>- fuente de alimentacion cc12v 500ma</p> <p>- salida de audio 1*6,3 mm</p> <p>- salida equilibrada 2*xrl</p> <p>MICROFONOS:</p> <p>- salida de potencia 10-30mw</p> <p>- radiacion armonica -50dbc</p> <p>- bateria AA*2 1.5v</p> <p>- duracion de la bateria 5 horas continuas</p>', 769.00, 5, NULL, '2024-09-19 08:15:53', 'microfono-inalambrico-uhf-con-bluetooth-batblack-bt-772', 1),
(41, 12, '10002042', 'ventilador multifunción con luz led de 30w OPALUX OP-LF30DM', '<p>ventilador de techo con iluminacion led dimmable, con mando a distancia es un modelo moderno y minimalista con el que consigue un ambiente de frescura y bienestar, sin aspas visibles que hagan ruidos molestos, cuenta con 3 velocidades, eficiencia energetica de tipo A+.</p> <p>con el control remoto puede ajustar la intencidad de brillo y regular la velocidad del ventilador</p> <p><strong>caracteristicas:</strong></p> <p>- voltaje 85-265v&nbsp; 60hz</p> <p>- potencia 30w</p> <p>- color de temperatura 8000k</p> <p>- 3 velocidades</p> <p>- medidas diametro 26cm, alto 8cm</p> <p>- base estandar E27</p> <p>- modo de control : control remoto</p>', 55.00, 50, NULL, '2024-10-27 08:50:20', 'ventilador-multifuncion-con-luz-led-de-30w-opalux-op-lf30dm', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) NOT NULL,
  `datosreembolso` text NOT NULL,
  `observacion` text NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor', 1),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Vendedor', 'Operador de tienda', 1),
(5, 'Cliente Codware FH', 'Cliente Codware FH', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Roberto', 'toolsfordeveloper@gmail.com', '2021-08-20 04:05:10'),
(2, 'Admin', 'aaa@gmail.com', '2024-06-12 17:31:58'),
(3, 'Sebas', 'ad@gmail.com', '2024-06-12 17:56:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
