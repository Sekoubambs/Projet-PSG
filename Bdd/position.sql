-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 20 août 2023 à 16:26
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `psg`
--

-- --------------------------------------------------------

--
-- Structure de la table `position`
--

CREATE TABLE `position` (
  `Id_position` int(11) NOT NULL,
  `cote_terrain` varchar(250) DEFAULT NULL,
  `poste` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `position`
--

INSERT INTO `position` (`Id_position`, `cote_terrain`, `poste`) VALUES
(1, NULL, 'Gardien'),
(2, 'central', 'Défenseur'),
(5, 'gauche', 'Défenseur'),
(6, 'droit', 'Défenseur'),
(9, 'central', 'Milieu défensif'),
(10, 'droit', 'Milieu relayeur'),
(11, 'gauche', 'Milieu relayeur'),
(14, 'central', 'Milieu offensif'),
(16, 'droit', 'Milieu offensif'),
(17, 'gauche', 'Milieu offensif');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`Id_position`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `position`
--
ALTER TABLE `position`
  MODIFY `Id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
