-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 20, 2022 at 03:12 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alchemyusuarios`
--

-- --------------------------------------------------------

--
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, ' bombardea a Ucrania EN VIVO: bombardeos rusos en una aldea en Zaporizhzhia terminaron con un muerto y tres heridos', 'La aviación rusa mató este miércoles a una persona e hirió a otras tres al lanzar 15 ataques con misiles contra la aldea ucraniana de Komyshuvaja, denunció Oleksandr Staruj, jefe de la Administración Militar Regional11 de Mayo de 2022', 'Las autoridades instaladas por Moscú en la región de Kherson, en el sur de Ucrania, dicen que planean pedirle al presidente Vladimir Putin que la convierta en parte de Rusia.\r\n\r\nMientras tanto, los volúmenes de gas ruso que pasan por Ucrania en ruta a Europa caen después de que Kiev dice que está suspendiendo los flujos a lo largo de una ruta clave por lo que el operador del gasoducto GTSOU llama interferencia rusa.', NULL),
(17, 'Prueba6', 'dfg', 'sadfsad', 'tm173ht3pqhweb8btery');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(3) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usuario`, `password`) VALUES
(1, 'diego', 'a1e2fecd0e27f698ff75b3b76bb78bdc'),
(2, 'Gisela', 'a1e2fecd0e27f698ff75b3b76bb78bdc'),
(3, 'Flavia', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
