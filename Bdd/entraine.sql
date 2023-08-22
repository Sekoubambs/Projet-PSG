-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 21 août 2023 à 11:55
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
-- Structure de la table `entraine`
--

CREATE TABLE `entraine` (
  `Id_joueur` int(11) NOT NULL,
  `Id_staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `entraine`
--

INSERT INTO `entraine` (`Id_joueur`, `Id_staff`) VALUES
(1, 2),
(1, 4),
(1, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `entraine`
--
ALTER TABLE `entraine`
  ADD PRIMARY KEY (`Id_joueur`,`Id_staff`),
  ADD KEY `FK_entraine_Id_staff` (`Id_staff`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `entraine`
--
ALTER TABLE `entraine`
  MODIFY `Id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `entraine`
--
ALTER TABLE `entraine`
  ADD CONSTRAINT `FK_entraine_Id_joueur` FOREIGN KEY (`Id_joueur`) REFERENCES `joueur` (`Id_joueur`),
  ADD CONSTRAINT `FK_entraine_Id_staff` FOREIGN KEY (`Id_staff`) REFERENCES `staff` (`Id_staff`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
