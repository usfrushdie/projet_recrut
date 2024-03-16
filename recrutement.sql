-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 16 mars 2024 à 12:15
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `recrutement`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidatures`
--

DROP TABLE IF EXISTS `candidatures`;
CREATE TABLE IF NOT EXISTS `candidatures` (
  `ID_OFFRE` int NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`EMAIL`,`ID_OFFRE`),
  KEY `ID_OFFRE` (`ID_OFFRE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

DROP TABLE IF EXISTS `competences`;
CREATE TABLE IF NOT EXISTS `competences` (
  `EMAIL` varchar(50) NOT NULL,
  `TITRE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `EMAIL` varchar(50) NOT NULL,
  `TITRE` varchar(50) DEFAULT NULL,
  `ENTREPRISE` varchar(50) DEFAULT NULL,
  `VILLE` varchar(50) DEFAULT NULL,
  `DATE_DEBUT` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `DESCRIPTION` text,
  PRIMARY KEY (`EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

DROP TABLE IF EXISTS `formations`;
CREATE TABLE IF NOT EXISTS `formations` (
  `EMAIL` varchar(50) NOT NULL,
  `ETABLISSEMENT` varchar(50) DEFAULT NULL,
  `DIPLOME` varchar(50) DEFAULT NULL,
  `VILLE` varchar(50) DEFAULT NULL,
  `DATE_DEBUT` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `DESCRIPTION` text,
  PRIMARY KEY (`EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `info_comp`
--

DROP TABLE IF EXISTS `info_comp`;
CREATE TABLE IF NOT EXISTS `info_comp` (
  `EMAIL` varchar(50) NOT NULL,
  `POSTE_ACTUEL` varchar(50) DEFAULT NULL,
  `ADRESSE` varchar(50) DEFAULT NULL,
  `TEL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

DROP TABLE IF EXISTS `offres`;
CREATE TABLE IF NOT EXISTS `offres` (
  `ID_OFFRE` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(50) DEFAULT NULL,
  `TITRE` varchar(50) DEFAULT NULL,
  `DESCRIPTION` text,
  PRIMARY KEY (`ID_OFFRE`),
  UNIQUE KEY `ID_OFFRE` (`ID_OFFRE`),
  KEY `EMAIL` (`EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

DROP TABLE IF EXISTS `personnes`;
CREATE TABLE IF NOT EXISTS `personnes` (
  `EMAIL` varchar(50) NOT NULL,
  `MOT_DE_PASSE` varchar(50) DEFAULT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `PRENOM` varchar(50) DEFAULT NULL,
  `STATUT` char(1) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`EMAIL`, `MOT_DE_PASSE`, `NOM`, `PRENOM`, `STATUT`) VALUES
('alice@example.com', 'motdepasse123', 'Alice', 'Dupont', 'C'),
('bob@example.com', 'password456', 'Bob', 'Martin', 'R'),
('charlie@example.com', 'securepass', 'Charlie', 'Dubois', 'C'),
('david@example.com', 'davidpass', 'David', 'Lefevre', 'R'),
('emily@example.com', 'emilypass', 'Emily', 'Bernard', 'C');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

DROP TABLE IF EXISTS `projets`;
CREATE TABLE IF NOT EXISTS `projets` (
  `EMAIL` varchar(50) NOT NULL,
  `NOM_PROJET` varchar(50) DEFAULT NULL,
  `DESCRIPTION` text,
  PRIMARY KEY (`EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
