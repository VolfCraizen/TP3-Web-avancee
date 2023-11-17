-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2023 at 09:12 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librairietp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `date_de_naissance` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `date_de_naissance`) VALUES
(1, 'Gabriel Plouffe', '2005-01-01'),
(2, 'Citron', '2023-10-12'),
(3, 'Robert Blanchette', '2023-09-21'),
(12, 'Employer Create', '2023-11-16'),
(14, 'Gabriel Plouffe', '2023-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `code_postal` varchar(50) NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `courriel` varchar(50) NOT NULL,
  `Usager_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Client_Usager1_idx` (`Usager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `editeur`
--

DROP TABLE IF EXISTS `editeur`;
CREATE TABLE IF NOT EXISTS `editeur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `courriel` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `editeur`
--

INSERT INTO `editeur` (`id`, `nom`, `adresse`, `telephone`, `courriel`) VALUES
(1, 'Citron', '801 Brennan', '514-707-4570', 'gab2005@live.ca'),
(2, 'Gabriel', 'gab2005', '514-707-4570', 'gab2005@live.ca'),
(3, 'Volf Craizen.inc', '1712 joseph-janot', '+1-514-707-4570', 'dfgfdgfdg5@live.ca'),
(16, 'Plouffe', '801 Brennan', '+1 514-707-4570', 'gab2005@live.ca'),
(17, 'Employer Create', '801 Brennan', '+1 514-707-4570', 'gab2005@live.ca'),
(19, 'Employer Create', '801 Brennan', '514-707-4570', 'gab2005@live.ca');

-- --------------------------------------------------------

--
-- Table structure for table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `Client_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Facture_Client1_idx` (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `facture-livre`
--

DROP TABLE IF EXISTS `facture-livre`;
CREATE TABLE IF NOT EXISTS `facture-livre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qt` int NOT NULL,
  `Livre_id` int NOT NULL,
  `Facture_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Facture-Livre_Livre1_idx` (`Livre_id`),
  KEY `fk_Facture-Livre_Facture1_idx` (`Facture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `journaldebord`
--

DROP TABLE IF EXISTS `journaldebord`;
CREATE TABLE IF NOT EXISTS `journaldebord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `adresse_ip` varchar(50) NOT NULL,
  `id_utilisateur` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=649 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `journaldebord`
--

INSERT INTO `journaldebord` (`id`, `page`, `date`, `adresse_ip`, `id_utilisateur`) VALUES
(2, '/WebAvancee/tp3/auteur', '2023-11-16 07:28:07', '::1', '5'),
(3, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(4, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(5, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(6, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(7, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(8, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(9, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(10, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(11, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(12, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(13, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(14, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(15, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(16, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(17, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(18, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(19, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(20, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(21, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(22, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(23, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(24, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(25, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(26, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(27, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(28, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(29, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(30, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(31, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(32, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(33, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(34, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(35, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(36, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(37, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(38, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(39, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(40, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(41, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:08', '::1', '5'),
(42, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(43, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(44, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(45, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(46, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(47, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(48, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(49, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(50, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(51, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(52, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(53, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(54, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(55, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(56, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(57, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(58, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(59, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(60, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(61, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:09', '::1', '5'),
(62, '/WebAvancee/tp3/', '2023-11-16 07:28:10', '::1', '5'),
(63, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(64, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(65, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(66, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(67, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(68, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(69, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(70, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(71, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(72, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(73, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(74, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(75, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(76, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(77, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(78, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(79, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(80, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(81, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:10', '::1', '5'),
(82, '/WebAvancee/tp3/', '2023-11-16 07:28:10', '::1', '5'),
(83, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(84, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(85, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(86, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(87, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(88, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(89, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(90, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(91, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(92, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(93, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(94, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(95, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(96, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(97, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(98, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(99, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(100, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(101, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(102, '/WebAvancee/tp3/', '2023-11-16 07:28:11', '::1', '5'),
(103, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(104, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(105, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(106, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(107, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(108, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(109, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(110, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(111, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(112, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(113, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(114, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(115, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(116, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(117, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(118, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:11', '::1', '5'),
(119, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(120, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(121, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(122, '/WebAvancee/tp3/', '2023-11-16 07:28:12', '::1', '5'),
(123, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(124, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(125, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(126, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(127, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(128, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(129, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(130, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(131, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(132, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(133, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(134, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(135, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(136, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(137, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(138, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(139, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(140, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(141, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:12', '::1', '5'),
(142, '/WebAvancee/tp3/', '2023-11-16 07:28:13', '::1', '5'),
(143, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(144, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(145, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(146, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(147, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(148, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(149, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(150, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(151, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(152, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(153, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(154, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(155, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(156, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(157, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(158, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(159, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(160, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(161, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:13', '::1', '5'),
(162, '/WebAvancee/tp3/', '2023-11-16 07:28:13', '::1', '5'),
(163, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(164, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(165, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(166, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(167, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(168, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(169, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(170, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(171, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(172, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(173, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(174, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(175, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(176, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(177, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(178, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(179, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(180, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(181, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:14', '::1', '5'),
(182, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(183, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(184, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(185, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(186, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(187, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(188, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(189, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(190, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(191, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(192, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(193, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(194, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(195, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(196, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(197, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(198, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(199, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(200, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(201, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:15', '::1', '5'),
(202, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(203, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(204, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(205, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(206, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(207, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(208, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(209, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(210, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(211, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(212, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(213, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(214, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(215, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(216, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(217, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(218, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(219, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(220, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(221, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:20', '::1', '5'),
(222, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(223, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(224, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(225, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(226, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(227, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(228, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(229, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(230, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(231, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(232, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(233, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(234, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(235, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(236, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(237, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(238, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(239, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(240, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(241, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:28:50', '::1', '5'),
(242, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(243, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(244, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(245, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(246, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(247, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(248, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(249, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(250, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(251, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(252, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(253, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(254, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(255, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(256, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(257, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(258, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(259, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(260, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(261, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:29:50', '::1', '5'),
(262, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:34:33', '::1', '5'),
(263, '/WebAvancee/tp3/', '2023-11-16 07:34:41', '::1', '5'),
(264, '/WebAvancee/tp3/livre', '2023-11-16 07:34:44', '::1', '5'),
(265, '/WebAvancee/tp3/usager', '2023-11-16 07:35:10', '::1', '5'),
(266, '/WebAvancee/tp3/usager', '2023-11-16 07:35:50', '::1', '5'),
(267, '/WebAvancee/tp3/usager', '2023-11-16 07:36:52', '::1', '5'),
(268, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(269, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(270, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(271, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(272, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(273, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(274, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(275, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(276, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(277, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(278, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(279, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(280, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(281, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(282, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(283, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(284, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(285, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(286, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:52', '::1', '5'),
(287, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(288, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(289, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(290, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(291, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(292, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(293, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(294, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(295, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(296, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(297, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(298, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(299, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(300, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(301, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(302, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(303, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(304, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(305, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(306, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:53', '::1', '5'),
(307, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(308, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(309, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(310, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(311, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(312, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(313, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(314, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(315, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(316, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(317, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(318, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(319, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(320, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(321, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(322, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(323, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(324, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(325, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(326, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:36:58', '::1', '5'),
(327, '/WebAvancee/tp3/livre', '2023-11-16 07:37:26', '::1', '5'),
(328, '/WebAvancee/tp3/livre', '2023-11-16 07:37:29', '::1', '5'),
(329, '/WebAvancee/tp3/livre', '2023-11-16 07:37:31', '::1', '5'),
(330, '/WebAvancee/tp3/livre', '2023-11-16 07:38:02', '::1', '5'),
(331, '/WebAvancee/tp3/livre', '2023-11-16 07:38:07', '::1', '5'),
(332, '/WebAvancee/tp3/livre', '2023-11-16 07:39:38', '::1', '5'),
(333, '/WebAvancee/tp3/livre', '2023-11-16 07:40:29', '::1', '5'),
(334, '/WebAvancee/tp3/livre', '2023-11-16 07:40:31', '::1', '5'),
(335, '/WebAvancee/tp3/livre/create', '2023-11-16 07:40:32', '::1', '5'),
(336, '/WebAvancee/tp3/livre/store', '2023-11-16 07:40:41', '::1', '5'),
(337, '/WebAvancee/tp3/livre/store', '2023-11-16 07:42:33', '::1', '5'),
(338, '/WebAvancee/tp3/livre/store', '2023-11-16 07:42:42', '::1', '5'),
(339, '/WebAvancee/tp3/livre/store', '2023-11-16 07:42:54', '::1', '5'),
(340, '/WebAvancee/tp3/livre/create', '2023-11-16 07:43:28', '::1', '5'),
(341, '/WebAvancee/tp3/livre/store', '2023-11-16 07:43:37', '::1', '5'),
(342, '/WebAvancee/tp3/livre/store', '2023-11-16 07:43:56', '::1', '5'),
(343, '/WebAvancee/tp3/livre/store', '2023-11-16 07:44:52', '::1', '5'),
(344, '/WebAvancee/tp3/livre', '2023-11-16 07:44:53', '::1', '5'),
(345, '/WebAvancee/tp3/livre/create', '2023-11-16 07:44:54', '::1', '5'),
(346, '/WebAvancee/tp3/livre/store', '2023-11-16 07:45:03', '::1', '5'),
(347, '/WebAvancee/tp3/livre/store', '2023-11-16 07:45:53', '::1', '5'),
(348, '/WebAvancee/tp3/livre/create', '2023-11-16 07:45:57', '::1', '5'),
(349, '/WebAvancee/tp3/livre/create', '2023-11-16 07:46:23', '::1', '5'),
(350, '/WebAvancee/tp3/livre/store', '2023-11-16 07:46:33', '::1', '5'),
(351, '/WebAvancee/tp3/livre', '2023-11-16 07:46:33', '::1', '5'),
(352, '/WebAvancee/tp3/livre', '2023-11-16 07:47:20', '::1', '5'),
(353, '/WebAvancee/tp3/auteur', '2023-11-16 07:47:24', '::1', '5'),
(354, '/WebAvancee/tp3/auteur/create', '2023-11-16 07:47:25', '::1', '5'),
(355, '/WebAvancee/tp3/auteur/store', '2023-11-16 07:47:30', '::1', '5'),
(356, '/WebAvancee/tp3/auteur', '2023-11-16 07:47:30', '::1', '5'),
(357, '/WebAvancee/tp3/auteur/create', '2023-11-16 07:47:32', '::1', '5'),
(358, '/WebAvancee/tp3/auteur/store', '2023-11-16 07:47:38', '::1', '5'),
(359, '/WebAvancee/tp3/auteur', '2023-11-16 07:47:38', '::1', '5'),
(360, '/WebAvancee/tp3/auteur', '2023-11-16 07:54:03', '::1', '5'),
(361, '/WebAvancee/tp3/auteur', '2023-11-16 07:55:01', '::1', '5'),
(362, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:55:03', '::1', '5'),
(363, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:55:30', '::1', '5'),
(364, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:58:07', '::1', '5'),
(365, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:58:20', '::1', '5'),
(366, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:58:36', '::1', '5'),
(367, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:59:53', '::1', '5'),
(368, '/WebAvancee/tp3/journaldebord', '2023-11-16 07:59:54', '::1', '5'),
(369, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:00:00', '::1', '5'),
(370, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:00:21', '::1', '5'),
(371, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:00:38', '::1', '5'),
(372, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:00:39', '::1', '5'),
(373, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:00:55', '::1', '5'),
(374, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:01:06', '::1', '5'),
(375, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:01:14', '::1', '5'),
(376, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:05', '::1', '5'),
(377, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:06', '::1', '5'),
(378, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:06', '::1', '5'),
(379, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:06', '::1', '5'),
(380, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:24', '::1', '5'),
(381, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:24', '::1', '5'),
(382, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:24', '::1', '5'),
(383, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:39', '::1', '5'),
(384, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:02:40', '::1', '5'),
(385, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:03:24', '::1', '5'),
(386, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:04:48', '::1', '5'),
(387, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:04:48', '::1', '5'),
(388, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:04:53', '::1', '5'),
(389, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:04:54', '::1', '5'),
(390, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:05:38', '::1', '5'),
(391, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:05:38', '::1', '5'),
(392, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:05:39', '::1', '5'),
(393, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:05:39', '::1', '5'),
(394, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:06:04', '::1', '5'),
(395, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:06:05', '::1', '5'),
(396, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:06:05', '::1', '5'),
(397, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:06:45', '::1', '5'),
(398, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:07:02', '::1', '5'),
(399, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:07:17', '::1', '5'),
(400, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:07:50', '::1', '5'),
(401, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:11:15', '::1', '5'),
(402, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:13:06', '::1', '5'),
(403, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:15:51', '::1', '5'),
(404, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:16:46', '::1', '5'),
(405, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:17:48', '::1', '5'),
(406, '/WebAvancee/tp3/journaldebord', '2023-11-16 08:18:24', '::1', '5'),
(407, '/WebAvancee/tp3/login/logout', '2023-11-16 08:18:41', '::1', '5'),
(408, '/WebAvancee/tp3/', '2023-11-16 08:23:37', '::1', ''),
(409, '/WebAvancee/tp3/', '2023-11-16 08:27:53', '::1', ''),
(410, '/WebAvancee/tp3/auteur', '2023-11-16 08:27:56', '::1', ''),
(411, '/WebAvancee/tp3/auteur', '2023-11-16 08:31:59', '::1', ''),
(412, '/WebAvancee/tp3/auteur', '2023-11-16 08:32:00', '::1', ''),
(413, '/WebAvancee/tp3/editeur', '2023-11-16 08:32:02', '::1', ''),
(414, '/WebAvancee/tp3/auteur', '2023-11-16 08:32:03', '::1', ''),
(415, '/WebAvancee/tp3/auteur', '2023-11-16 08:32:45', '::1', ''),
(416, '/WebAvancee/tp3/auteur', '2023-11-16 08:32:48', '::1', ''),
(417, '/WebAvancee/tp3/livre', '2023-11-16 08:32:50', '::1', ''),
(418, '/WebAvancee/tp3/editeur', '2023-11-16 08:32:51', '::1', ''),
(419, '/WebAvancee/tp3/editeur', '2023-11-16 08:33:19', '::1', 'Guest'),
(420, '/WebAvancee/tp3/livre', '2023-11-16 08:33:21', '::1', 'Guest'),
(421, '/WebAvancee/tp3/', '2023-11-16 08:33:22', '::1', 'Guest'),
(422, '/WebAvancee/tp3/auteur', '2023-11-16 08:33:22', '::1', 'Guest'),
(423, '/WebAvancee/tp3/editeur', '2023-11-16 08:33:23', '::1', 'Guest'),
(424, '/WebAvancee/tp3/login', '2023-11-16 08:33:59', '::1', 'Guest'),
(425, '/WebAvancee/tp3/login/auth', '2023-11-16 08:34:10', '::1', 'Guest'),
(426, '/WebAvancee/tp3/home', '2023-11-16 08:34:10', '::1', 'Guest'),
(427, '/WebAvancee/tp3/livre', '2023-11-16 08:34:13', '::1', 'Guest'),
(428, '/WebAvancee/tp3/auteur', '2023-11-16 08:34:13', '::1', 'Guest'),
(429, '/WebAvancee/tp3/editeur', '2023-11-16 08:34:14', '::1', 'Guest'),
(430, '/WebAvancee/tp3/lang/change/en', '2023-11-16 08:34:16', '::1', 'Guest'),
(431, '/WebAvancee/tp3/editeur', '2023-11-16 08:34:16', '::1', 'Guest'),
(432, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 08:34:18', '::1', 'Guest'),
(433, '/WebAvancee/tp3/editeur', '2023-11-16 08:34:18', '::1', 'Guest'),
(434, '/WebAvancee/tp3/editeur', '2023-11-16 08:35:35', '::1', 'Guest'),
(435, '/WebAvancee/tp3/login/logout', '2023-11-16 08:35:36', '::1', 'Guest'),
(436, '/WebAvancee/tp3/login', '2023-11-16 08:35:36', '::1', 'Guest'),
(437, '/WebAvancee/tp3/livre', '2023-11-16 08:35:38', '::1', 'Guest'),
(438, '/WebAvancee/tp3/login', '2023-11-16 08:35:46', '::1', 'Guest'),
(439, '/WebAvancee/tp3/login/auth', '2023-11-16 08:35:52', '::1', 'Guest'),
(440, '/WebAvancee/tp3/home', '2023-11-16 08:35:52', '::1', '5'),
(441, '/WebAvancee/tp3/livre', '2023-11-16 08:35:55', '::1', '5'),
(442, '/WebAvancee/tp3/auteur', '2023-11-16 08:35:55', '::1', '5'),
(443, '/WebAvancee/tp3/login/logout', '2023-11-16 08:36:03', '::1', '5'),
(444, '/WebAvancee/tp3/login', '2023-11-16 08:36:03', '::1', 'Guest'),
(445, '/WebAvancee/tp3/login', '2023-11-16 08:36:04', '::1', 'Guest'),
(446, '/WebAvancee/tp3/login/auth', '2023-11-16 08:36:11', '::1', 'Guest'),
(447, '/WebAvancee/tp3/home', '2023-11-16 08:36:11', '::1', '4'),
(448, '/WebAvancee/tp3/livre', '2023-11-16 08:36:14', '::1', '4'),
(449, '/WebAvancee/tp3/auteur', '2023-11-16 08:36:15', '::1', '4'),
(450, '/WebAvancee/tp3/auteur', '2023-11-16 08:38:43', '::1', '4'),
(451, '/WebAvancee/tp3/login/logout', '2023-11-16 08:38:46', '::1', '4'),
(452, '/WebAvancee/tp3/login', '2023-11-16 08:38:46', '::1', 'Guest'),
(453, '/WebAvancee/tp3/livre', '2023-11-16 08:38:49', '::1', 'Guest'),
(454, '/WebAvancee/tp3/login', '2023-11-16 08:39:10', '::1', 'Guest'),
(455, '/WebAvancee/tp3/login/auth', '2023-11-16 08:39:15', '::1', 'Guest'),
(456, '/WebAvancee/tp3/home', '2023-11-16 08:39:15', '::1', '5'),
(457, '/WebAvancee/tp3/auteur', '2023-11-16 08:39:18', '::1', '5'),
(458, '/WebAvancee/tp3/editeur', '2023-11-16 08:39:18', '::1', '5'),
(459, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:39:40', '::1', '5'),
(460, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:39:40', '::1', '5'),
(461, '/WebAvancee/tp3/editeur', '2023-11-16 08:39:43', '::1', '5'),
(462, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:39:47', '::1', '5'),
(463, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:39:47', '::1', '5'),
(464, '/WebAvancee/tp3/editeur', '2023-11-16 08:40:06', '::1', '5'),
(465, '/WebAvancee/tp3/auteur', '2023-11-16 08:40:08', '::1', '5'),
(466, '/WebAvancee/tp3/auteur/destroy', '2023-11-16 08:40:10', '::1', '5'),
(467, '/WebAvancee/tp3/auteur', '2023-11-16 08:40:10', '::1', '5'),
(468, '/WebAvancee/tp3/editeur', '2023-11-16 08:40:28', '::1', '5'),
(469, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:40:30', '::1', '5'),
(470, '/WebAvancee/tp3/editeur', '2023-11-16 08:40:30', '::1', '5'),
(471, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:40:32', '::1', '5'),
(472, '/WebAvancee/tp3/editeur', '2023-11-16 08:40:32', '::1', '5'),
(473, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:40:35', '::1', '5'),
(474, '/WebAvancee/tp3/editeur', '2023-11-16 08:40:35', '::1', '5'),
(475, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:40:36', '::1', '5'),
(476, '/WebAvancee/tp3/editeur', '2023-11-16 08:40:36', '::1', '5'),
(477, '/WebAvancee/tp3/usager', '2023-11-16 08:40:38', '::1', '5'),
(478, '/WebAvancee/tp3/editeur', '2023-11-16 08:40:40', '::1', '5'),
(479, '/WebAvancee/tp3/auteur', '2023-11-16 08:40:40', '::1', '5'),
(480, '/WebAvancee/tp3/auteur/destroy', '2023-11-16 08:40:42', '::1', '5'),
(481, '/WebAvancee/tp3/auteur', '2023-11-16 08:40:42', '::1', '5'),
(482, '/WebAvancee/tp3/livre', '2023-11-16 08:40:43', '::1', '5'),
(483, '/WebAvancee/tp3/livre/destroy', '2023-11-16 08:40:46', '::1', '5'),
(484, '/WebAvancee/tp3/livre', '2023-11-16 08:40:46', '::1', '5'),
(485, '/WebAvancee/tp3/livre/destroy', '2023-11-16 08:40:49', '::1', '5'),
(486, '/WebAvancee/tp3/livre', '2023-11-16 08:40:49', '::1', '5'),
(487, '/WebAvancee/tp3/livre/destroy', '2023-11-16 08:40:51', '::1', '5'),
(488, '/WebAvancee/tp3/livre', '2023-11-16 08:40:51', '::1', '5'),
(489, '/WebAvancee/tp3/login/logout', '2023-11-16 08:40:54', '::1', '5'),
(490, '/WebAvancee/tp3/login', '2023-11-16 08:40:54', '::1', 'Guest'),
(491, '/WebAvancee/tp3/livre', '2023-11-16 08:40:58', '::1', 'Guest'),
(492, '/WebAvancee/tp3/auteur', '2023-11-16 08:40:58', '::1', 'Guest'),
(493, '/WebAvancee/tp3/editeur', '2023-11-16 08:40:59', '::1', 'Guest'),
(494, '/WebAvancee/tp3/login', '2023-11-16 08:41:00', '::1', 'Guest'),
(495, '/WebAvancee/tp3/', '2023-11-16 08:41:00', '::1', 'Guest'),
(496, '/WebAvancee/tp3/livre', '2023-11-16 08:41:01', '::1', 'Guest'),
(497, '/WebAvancee/tp3/auteur', '2023-11-16 08:41:02', '::1', 'Guest'),
(498, '/WebAvancee/tp3/login', '2023-11-16 08:41:03', '::1', 'Guest'),
(499, '/WebAvancee/tp3/login/auth', '2023-11-16 08:41:08', '::1', 'Guest'),
(500, '/WebAvancee/tp3/home', '2023-11-16 08:41:08', '::1', '5'),
(501, '/WebAvancee/tp3/editeur', '2023-11-16 08:41:11', '::1', '5'),
(502, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:41:13', '::1', '5'),
(503, '/WebAvancee/tp3/editeur', '2023-11-16 08:41:13', '::1', '5'),
(504, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:41:14', '::1', '5'),
(505, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:41:15', '::1', '5'),
(506, '/WebAvancee/tp3/editeur', '2023-11-16 08:41:17', '::1', '5'),
(507, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:41:18', '::1', '5'),
(508, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:41:18', '::1', '5'),
(509, '/WebAvancee/tp3/editeur', '2023-11-16 08:41:20', '::1', '5'),
(510, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:41:21', '::1', '5'),
(511, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:41:21', '::1', '5'),
(512, '/WebAvancee/tp3/editeur', '2023-11-16 08:41:23', '::1', '5'),
(513, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:41:26', '::1', '5'),
(514, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:41:26', '::1', '5'),
(515, '/WebAvancee/tp3/editeur', '2023-11-16 08:41:27', '::1', '5'),
(516, '/WebAvancee/tp3/editeur', '2023-11-16 08:41:28', '::1', '5'),
(517, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:41:29', '::1', '5'),
(518, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:41:29', '::1', '5'),
(519, '/WebAvancee/tp3/editeur', '2023-11-16 08:41:30', '::1', '5'),
(520, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:43:11', '::1', '5'),
(521, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:43:11', '::1', '5'),
(522, '/WebAvancee/tp3/editeur', '2023-11-16 08:43:20', '::1', '5'),
(523, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:43:29', '::1', '5'),
(524, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:43:29', '::1', '5'),
(525, '/WebAvancee/tp3/editeur', '2023-11-16 08:43:32', '::1', '5'),
(526, '/WebAvancee/tp3/editeur', '2023-11-16 08:46:50', '::1', '5'),
(527, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:46:52', '::1', '5'),
(528, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:46:52', '::1', '5'),
(529, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:47:30', '::1', '5'),
(530, '/WebAvancee/tp3/editeur', '2023-11-16 08:47:31', '::1', '5'),
(531, '/WebAvancee/tp3/editeur/destroy', '2023-11-16 08:47:33', '::1', '5'),
(532, '/WebAvancee/tp3/home/error/404', '2023-11-16 08:47:33', '::1', '5'),
(533, '/WebAvancee/tp3/editeur', '2023-11-16 08:47:35', '::1', '5'),
(534, '/WebAvancee/tp3/', '2023-11-16 08:50:42', '::1', '5'),
(535, '/WebAvancee/tp3/login/logout', '2023-11-16 08:50:44', '::1', '5'),
(536, '/WebAvancee/tp3/login', '2023-11-16 08:50:44', '::1', 'Guest'),
(537, '/WebAvancee/tp3/login', '2023-11-16 08:51:41', '::1', 'Guest'),
(538, '/WebAvancee/tp3/login', '2023-11-16 08:51:42', '::1', 'Guest'),
(539, '/WebAvancee/tp3/login', '2023-11-16 08:51:58', '::1', 'Guest'),
(540, '/WebAvancee/tp3/login', '2023-11-16 08:51:59', '::1', 'Guest'),
(541, '/WebAvancee/tp3/login', '2023-11-16 08:52:23', '::1', 'Guest'),
(542, '/WebAvancee/tp3/login', '2023-11-16 08:52:24', '::1', 'Guest'),
(543, '/WebAvancee/tp3/login', '2023-11-16 08:52:24', '::1', 'Guest'),
(544, '/WebAvancee/tp3/login', '2023-11-16 08:52:24', '::1', 'Guest'),
(545, '/WebAvancee/tp3/login', '2023-11-16 08:52:24', '::1', 'Guest'),
(546, '/WebAvancee/tp3/login', '2023-11-16 08:52:25', '::1', 'Guest'),
(547, '/WebAvancee/tp3/login', '2023-11-16 08:52:45', '::1', 'Guest'),
(548, '/WebAvancee/tp3/login', '2023-11-16 08:52:53', '::1', 'Guest'),
(549, '/WebAvancee/tp3/livre', '2023-11-16 08:52:58', '::1', 'Guest'),
(550, '/WebAvancee/tp3/auteur', '2023-11-16 08:53:00', '::1', 'Guest'),
(551, '/WebAvancee/tp3/auteur', '2023-11-16 08:53:43', '::1', 'Guest'),
(552, '/WebAvancee/tp3/auteur', '2023-11-16 08:55:36', '::1', 'Guest'),
(553, '/WebAvancee/tp3/auteur', '2023-11-16 08:55:37', '::1', 'Guest'),
(554, '/WebAvancee/tp3/auteur', '2023-11-16 08:55:56', '::1', 'Guest'),
(555, '/WebAvancee/tp3/auteur', '2023-11-16 08:57:52', '::1', 'Guest'),
(556, '/WebAvancee/tp3/auteur', '2023-11-16 08:58:35', '::1', 'Guest'),
(557, '/WebAvancee/tp3/auteur', '2023-11-16 08:58:54', '::1', 'Guest'),
(558, '/WebAvancee/tp3/auteur', '2023-11-16 08:58:54', '::1', 'Guest'),
(559, '/WebAvancee/tp3/auteur', '2023-11-16 08:58:55', '::1', 'Guest'),
(560, '/WebAvancee/tp3/auteur', '2023-11-16 08:59:00', '::1', 'Guest'),
(561, '/WebAvancee/tp3/auteur', '2023-11-16 08:59:10', '::1', 'Guest'),
(562, '/WebAvancee/tp3/auteur', '2023-11-16 08:59:22', '::1', 'Guest'),
(563, '/WebAvancee/tp3/auteur', '2023-11-16 08:59:30', '::1', 'Guest'),
(564, '/WebAvancee/tp3/auteur', '2023-11-16 08:59:48', '::1', 'Guest'),
(565, '/WebAvancee/tp3/auteur', '2023-11-16 08:59:59', '::1', 'Guest'),
(566, '/WebAvancee/tp3/auteur', '2023-11-16 09:00:08', '::1', 'Guest'),
(567, '/WebAvancee/tp3/auteur', '2023-11-16 09:00:54', '::1', 'Guest'),
(568, '/WebAvancee/tp3/auteur', '2023-11-16 09:00:55', '::1', 'Guest'),
(569, '/WebAvancee/tp3/auteur', '2023-11-16 09:01:09', '::1', 'Guest'),
(570, '/WebAvancee/tp3/auteur', '2023-11-16 09:01:26', '::1', 'Guest'),
(571, '/WebAvancee/tp3/auteur', '2023-11-16 09:02:04', '::1', 'Guest'),
(572, '/WebAvancee/tp3/auteur', '2023-11-16 09:02:15', '::1', 'Guest'),
(573, '/WebAvancee/tp3/auteur', '2023-11-16 09:02:30', '::1', 'Guest'),
(574, '/WebAvancee/tp3/auteur', '2023-11-16 09:02:52', '::1', 'Guest'),
(575, '/WebAvancee/tp3/auteur', '2023-11-16 09:03:50', '::1', 'Guest'),
(576, '/WebAvancee/tp3/auteur', '2023-11-16 09:05:39', '::1', 'Guest'),
(577, '/WebAvancee/tp3/', '2023-11-16 09:05:40', '::1', 'Guest'),
(578, '/WebAvancee/tp3/livre', '2023-11-16 09:05:41', '::1', 'Guest'),
(579, '/WebAvancee/tp3/livre', '2023-11-16 09:05:42', '::1', 'Guest'),
(580, '/WebAvancee/tp3/auteur', '2023-11-16 09:05:42', '::1', 'Guest'),
(581, '/WebAvancee/tp3/editeur', '2023-11-16 09:05:43', '::1', 'Guest'),
(582, '/WebAvancee/tp3/login', '2023-11-16 09:05:44', '::1', 'Guest'),
(583, '/WebAvancee/tp3/editeur', '2023-11-16 09:05:44', '::1', 'Guest'),
(584, '/WebAvancee/tp3/auteur', '2023-11-16 09:05:45', '::1', 'Guest'),
(585, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:05:46', '::1', 'Guest'),
(586, '/WebAvancee/tp3/auteur', '2023-11-16 09:05:46', '::1', 'Guest'),
(587, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:05:47', '::1', 'Guest'),
(588, '/WebAvancee/tp3/auteur', '2023-11-16 09:05:47', '::1', 'Guest'),
(589, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:05:47', '::1', 'Guest'),
(590, '/WebAvancee/tp3/auteur', '2023-11-16 09:05:47', '::1', 'Guest'),
(591, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:05:48', '::1', 'Guest'),
(592, '/WebAvancee/tp3/auteur', '2023-11-16 09:05:48', '::1', 'Guest'),
(593, '/WebAvancee/tp3/', '2023-11-16 09:05:49', '::1', 'Guest'),
(594, '/WebAvancee/tp3/livre', '2023-11-16 09:05:52', '::1', 'Guest'),
(595, '/WebAvancee/tp3/livre', '2023-11-16 09:05:57', '::1', 'Guest'),
(596, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:06:00', '::1', 'Guest'),
(597, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:04', '::1', 'Guest'),
(598, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:08:09', '::1', 'Guest'),
(599, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:09', '::1', 'Guest'),
(600, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:08:10', '::1', 'Guest'),
(601, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:10', '::1', 'Guest'),
(602, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:08:10', '::1', 'Guest'),
(603, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:10', '::1', 'Guest'),
(604, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:08:11', '::1', 'Guest'),
(605, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:11', '::1', 'Guest'),
(606, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:08:11', '::1', 'Guest'),
(607, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:11', '::1', 'Guest'),
(608, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:08:12', '::1', 'Guest'),
(609, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:12', '::1', 'Guest'),
(610, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:08:13', '::1', 'Guest'),
(611, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:13', '::1', 'Guest'),
(612, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:08:13', '::1', 'Guest'),
(613, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:13', '::1', 'Guest'),
(614, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:08:14', '::1', 'Guest'),
(615, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:14', '::1', 'Guest'),
(616, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:08:58', '::1', 'Guest'),
(617, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:09:00', '::1', 'Guest'),
(618, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:09:00', '::1', 'Guest'),
(619, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:09:17', '::1', 'Guest'),
(620, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:09:18', '::1', 'Guest'),
(621, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:09:20', '::1', 'Guest'),
(622, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:09:20', '::1', 'Guest'),
(623, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:09:21', '::1', 'Guest'),
(624, '/WebAvancee/tp3/auteur/show/1', '2023-11-16 09:09:21', '::1', 'Guest'),
(625, '/WebAvancee/tp3/', '2023-11-16 09:09:22', '::1', 'Guest'),
(626, '/WebAvancee/tp3/livre', '2023-11-16 09:09:23', '::1', 'Guest'),
(627, '/WebAvancee/tp3/livre/show/3', '2023-11-16 09:09:28', '::1', 'Guest'),
(628, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:09:30', '::1', 'Guest'),
(629, '/WebAvancee/tp3/livre/show/3', '2023-11-16 09:09:30', '::1', 'Guest'),
(630, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:09:32', '::1', 'Guest'),
(631, '/WebAvancee/tp3/livre/show/3', '2023-11-16 09:09:32', '::1', 'Guest'),
(632, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:09:33', '::1', 'Guest'),
(633, '/WebAvancee/tp3/livre/show/3', '2023-11-16 09:09:33', '::1', 'Guest'),
(634, '/WebAvancee/tp3/livre/show/3', '2023-11-16 09:09:35', '::1', 'Guest'),
(635, '/WebAvancee/tp3/livre', '2023-11-16 09:09:37', '::1', 'Guest'),
(636, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:09:41', '::1', 'Guest'),
(637, '/WebAvancee/tp3/livre', '2023-11-16 09:09:41', '::1', 'Guest'),
(638, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:09:43', '::1', 'Guest'),
(639, '/WebAvancee/tp3/livre', '2023-11-16 09:09:43', '::1', 'Guest'),
(640, '/WebAvancee/tp3/login', '2023-11-16 09:09:49', '::1', 'Guest'),
(641, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:09:50', '::1', 'Guest'),
(642, '/WebAvancee/tp3/login', '2023-11-16 09:09:50', '::1', 'Guest'),
(643, '/WebAvancee/tp3/lang/change/fr', '2023-11-16 09:09:51', '::1', 'Guest'),
(644, '/WebAvancee/tp3/login', '2023-11-16 09:09:51', '::1', 'Guest'),
(645, '/WebAvancee/tp3/lang/change/en', '2023-11-16 09:09:51', '::1', 'Guest'),
(646, '/WebAvancee/tp3/login', '2023-11-16 09:09:51', '::1', 'Guest'),
(647, '/WebAvancee/tp3/login/auth', '2023-11-16 09:10:03', '::1', 'Guest'),
(648, '/WebAvancee/tp3/home', '2023-11-16 09:10:03', '::1', '5');

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `date_de_publication` date NOT NULL,
  `prix` int NOT NULL,
  `rabais` int NOT NULL,
  `Editeur_id` int NOT NULL,
  `Auteur_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Livre_Editeur_idx` (`Editeur_id`),
  KEY `fk_Livre_Auteur1_idx` (`Auteur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `date_de_publication`, `prix`, `rabais`, `Editeur_id`, `Auteur_id`) VALUES
(3, 'Organiser du code', '2023-10-24', 43, 54, 1, 1),
(8, 'Modification pour les nuls', '2023-06-14', 34, 53, 2, 3),
(11, 'abc', '2023-10-31', 453, 45, 1, 1),
(27, '435', '2023-11-01', 43, 4, 1, 1),
(29, 'abc', '2023-11-15', 34, 54, 2, 1),
(30, 'abc', '2023-11-15', 5, 5, 1, 1),
(32, 'Employer Create', '2023-11-16', 13, 2, 16, 1),
(34, 'Diviser par 0', '2023-11-14', 34, 43, 17, 1),
(35, 'Diviser par 0', '2023-11-14', 34, 43, 17, 1),
(36, 'Diviser par 0', '2023-11-14', 34, 43, 17, 1),
(37, 'Diviser par 0', '2023-11-14', 34, 43, 17, 1),
(38, 'abc', '2023-11-20', 345, 45, 19, 12),
(40, 'abc', '2023-11-20', 345, 45, 19, 12),
(41, 'Modification pour les nuls', '2023-11-08', 34, 54, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE IF NOT EXISTS `privilege` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `nom`) VALUES
(1, 'Admin'),
(2, 'Employer'),
(3, 'Aucun');

-- --------------------------------------------------------

--
-- Table structure for table `usager`
--

DROP TABLE IF EXISTS `usager`;
CREATE TABLE IF NOT EXISTS `usager` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Privilege_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_Usager_Privilege1_idx` (`Privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `usager`
--

INSERT INTO `usager` (`id`, `username`, `password`, `Privilege_id`) VALUES
(4, 'Employer', '$2y$10$sdL.jnIOxHJGlussWeyLa.cgp.NxA/NiWWlq7AmT7aEydYCpF6J/e', 2),
(5, 'Admin', '$2y$10$EfQMMAwW/iOGJItWFpjmDO402ozChsBRtgs1vtZlLGa5j/ohbZTyu', 1),
(8, 'Usager', '$2y$10$fKQx5CJNn1QGczcEFwElEeuWXpeuLmFzGUUZgy4zaXuQ4EtjNRxeq', 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_Client_Usager1` FOREIGN KEY (`Usager_id`) REFERENCES `usager` (`id`);

--
-- Constraints for table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `fk_Facture_Client1` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `facture-livre`
--
ALTER TABLE `facture-livre`
  ADD CONSTRAINT `fk_Facture-Livre_Facture1` FOREIGN KEY (`Facture_id`) REFERENCES `facture` (`id`),
  ADD CONSTRAINT `fk_Facture-Livre_Livre1` FOREIGN KEY (`Livre_id`) REFERENCES `livre` (`id`);

--
-- Constraints for table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `fk_Livre_Auteur1` FOREIGN KEY (`Auteur_id`) REFERENCES `auteur` (`id`),
  ADD CONSTRAINT `fk_Livre_Editeur` FOREIGN KEY (`Editeur_id`) REFERENCES `editeur` (`id`);

--
-- Constraints for table `usager`
--
ALTER TABLE `usager`
  ADD CONSTRAINT `fk_Usager_Privilege1` FOREIGN KEY (`Privilege_id`) REFERENCES `privilege` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
