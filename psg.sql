-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 04 août 2023 à 12:15
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

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `Id_fonction` int(11) NOT NULL,
  `nom_role` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`Id_fonction`, `nom_role`) VALUES
(1, 'entraineur'),
(3, 'entraineur adjoint'),
(6, 'preparateur physique'),
(9, 'entraineur des gardiens'),
(10, 'analyste video'),
(11, 'kine'),
(13, 'psychologue');

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
(4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `Id_joueur` int(11) NOT NULL,
  `nom_joueur` varchar(250) DEFAULT NULL,
  `prenom_joueur` varchar(250) DEFAULT NULL,
  `nationalite` varchar(250) DEFAULT NULL,
  `pied_preferentiel` varchar(250) DEFAULT NULL,
  `photo_joueur` text DEFAULT NULL,
  `age` int(75) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `Id_statut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`Id_joueur`, `nom_joueur`, `prenom_joueur`, `nationalite`, `pied_preferentiel`, `photo_joueur`, `age`, `date_de_naissance`, `Id_statut`) VALUES
(1, 'Donnarumma', 'Gianluigi', 'Italienne', 'Droitier', 'https://th.bing.com/th/id/OIP.U5tyRqN47ugq-ZqrQNOqgQAAAA?pid=ImgDet&rs=1', 24, '1999-02-25', 1),
(4, 'Kimpembe', 'Presnel ', 'Français', 'Gaucher', 'https://s.yimg.com/xe/i/us/sp/v/soccer/wc/players/424389.2.png', 27, '1995-08-13', 1);

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

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE `staff` (
  `Id_staff` int(11) NOT NULL,
  `nom_staff` varchar(250) DEFAULT NULL,
  `prenom_staff` varchar(250) DEFAULT NULL,
  `nationalite_staff` varchar(250) DEFAULT NULL,
  `Id_fonction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `staff`
--

INSERT INTO `staff` (`Id_staff`, `nom_staff`, `prenom_staff`, `nationalite_staff`, `Id_fonction`) VALUES
(2, 'Martinez Garcia', 'Luis Enrique', 'Espagnol', 1),
(4, 'Aubert', 'Jean-Luc', 'Français', 9),
(5, 'Buedo', 'Borja Alvarez', 'Espagnol', 9),
(8, 'Elorza', 'Aitor Unzué', 'Espagnol', 3),
(9, 'Cabanellas', 'Rafel Pol', 'Espagnol', 3),
(14, ' Gomez', 'Pedro', 'Espagnol', 6),
(15, 'Piernas', 'Alberto', 'Espagnol', 6),
(16, 'Fonseca', 'Joaquin Valdes', 'Espagnol', 13);

-- --------------------------------------------------------

--
-- Structure de la table `statut_`
--

CREATE TABLE `statut_` (
  `Id_statut` int(11) NOT NULL,
  `joueur_statut` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `statut_`
--

INSERT INTO `statut_` (`Id_statut`, `joueur_statut`) VALUES
(1, 'Titulaire'),
(2, 'Remplaçant '),
(5, 'Réserviste');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `Id_utilisateur` int(11) NOT NULL,
  `nom_utilisateur` varchar(250) DEFAULT NULL,
  `prenom_utilisateur` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`Id_fonction`);

--
-- Index pour la table `joue`
--
ALTER TABLE `joue`
  ADD PRIMARY KEY (`Id_joueur`,`Id_position`),
  ADD KEY `FK_joue_Id_position` (`Id_position`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`Id_joueur`),
  ADD KEY `FK_joueur_Id_statut` (`Id_statut`);

--
-- Index pour la table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`Id_position`);

--
-- Index pour la table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Id_staff`),
  ADD KEY `FK_staff_Id_fonction` (`Id_fonction`);

--
-- Index pour la table `statut_`
--
ALTER TABLE `statut_`
  ADD PRIMARY KEY (`Id_statut`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`Id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `entraine`
--
ALTER TABLE `entraine`
  MODIFY `Id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `Id_fonction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `joue`
--
ALTER TABLE `joue`
  MODIFY `Id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `Id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `position`
--
ALTER TABLE `position`
  MODIFY `Id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `staff`
--
ALTER TABLE `staff`
  MODIFY `Id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `statut_`
--
ALTER TABLE `statut_`
  MODIFY `Id_statut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `Id_utilisateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `entraine`
--
ALTER TABLE `entraine`
  ADD CONSTRAINT `FK_entraine_Id_joueur` FOREIGN KEY (`Id_joueur`) REFERENCES `joueur` (`Id_joueur`),
  ADD CONSTRAINT `FK_entraine_Id_staff` FOREIGN KEY (`Id_staff`) REFERENCES `staff` (`Id_staff`);

--
-- Contraintes pour la table `joue`
--
ALTER TABLE `joue`
  ADD CONSTRAINT `FK_joue_Id_joueur` FOREIGN KEY (`Id_joueur`) REFERENCES `joueur` (`Id_joueur`),
  ADD CONSTRAINT `FK_joue_Id_position` FOREIGN KEY (`Id_position`) REFERENCES `position` (`Id_position`);

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `FK_joueur_Id_statut` FOREIGN KEY (`Id_statut`) REFERENCES `statut_` (`Id_statut`);

--
-- Contraintes pour la table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `FK_staff_Id_fonction` FOREIGN KEY (`Id_fonction`) REFERENCES `fonction` (`Id_fonction`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
