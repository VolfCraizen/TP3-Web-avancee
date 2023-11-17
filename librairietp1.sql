-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2023 at 10:16 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `date_de_naissance`) VALUES
(1, 'Gabriel Plouffe', '2023-10-20'),
(2, 'Citron', '2023-10-12'),
(3, 'Robert Blanchette', '2023-09-21'),
(6, 'Gabriel Plouffe', '2023-11-14'),
(7, 'Gabriel Plouffe', '2023-11-09'),
(8, 'Gabriel Plouffe', '2023-11-16');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `editeur`
--

INSERT INTO `editeur` (`id`, `nom`, `adresse`, `telephone`, `courriel`) VALUES
(1, 'Citron', '801 Brennan', '514-707-4570', 'gab2005@live.ca'),
(2, 'Gabriel', 'gab2005', '514-707-4570', 'gab2005@live.ca'),
(3, 'Volf Craizen.inc', 'Volf', '435345', 'dfgfdgfdg5@live.ca');

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
  `date` date NOT NULL,
  `adresse_ip` varchar(50) NOT NULL,
  `id_utilisateur` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `date_de_publication`, `prix`, `rabais`, `Editeur_id`, `Auteur_id`) VALUES
(3, 'Ne plus diviser par 0', '2023-10-24', 43, 54, 1, 1),
(8, 'Modification pour les nuls', '2023-06-14', 34, 53, 2, 3),
(11, 'abc', '2023-10-31', 453, 45, 1, 1),
(27, '435', '2023-11-01', 43, 4, 1, 1),
(29, 'abc', '2023-11-15', 34, 54, 2, 1),
(30, 'abc', '2023-11-15', 5, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE IF NOT EXISTS `privilege` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `nom`) VALUES
(1, 'Admin');

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
  KEY `fk_Usager_Privilege1_idx` (`Privilege_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
