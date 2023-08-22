-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 21 août 2023 à 11:51
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
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `Id_joueur` int(11) NOT NULL,
  `Id_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `joue`
--

INSERT INTO `joue` (`Id_joueur`, `Id_position`) VALUES
(1, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2),
(8, 5),
(9, 5),
(10, 5),
(11, 6),
(12, 6),
(13, 6),
(14, 9),
(15, 9),
(16, 10),
(17, 11),
(18, 11),
(19, 10),
(20, 10),
(21, 9),
(22, 9),
(23, 17),
(24, 16),
(25, 16),
(26, 16),
(27, 18),
(28, 18),
(29, 17),
(30, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD PRIMARY KEY (`Id_joueur`,`Id_position`),
  ADD KEY `FK_joue_Id_position` (`Id_position`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `joue`
--
ALTER TABLE `joue`
  MODIFY `Id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `FK_joue_Id_joueur` FOREIGN KEY (`Id_joueur`) REFERENCES `joueur` (`Id_joueur`),
  ADD CONSTRAINT `FK_joue_Id_position` FOREIGN KEY (`Id_position`) REFERENCES `position` (`Id_position`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
