-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 21 août 2023 à 01:38
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
  `date_de_naissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`Id_joueur`, `nom_joueur`, `prenom_joueur`, `nationalite`, `pied_preferentiel`, `photo_joueur`, `age`, `date_de_naissance`) VALUES
(1, 'Donnarumma', 'Gianluigi', 'Italienne', 'Droitier', 'https://img.a.transfermarkt.technology/portrait/header/315858-1672304477.jpg?lm=1', 24, '1999-02-25'),
(4, 'Kimpembe', 'Presnel ', 'Français', 'Gaucher', 'https://img.a.transfermarkt.technology/portrait/header/282041-1672304083.jpg?lm=1', 27, '1995-08-13'),
(5, 'Tenas', 'Arnau', ' Espagne', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/466783-1602239229.jpg?lm=1', 22, '2001-05-30'),
(6, 'Marquinhos', NULL, 'Brésil', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/181767-1672303747.jpg?lm=1', 29, '1994-05-14'),
(7, 'Skriniar', 'Milan', 'Slovaquie', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/204069-1598256813.jpg?lm=1', 28, '1995-02-11'),
(8, 'Hernández', 'Lucas', 'France', 'gauche', 'https://img.a.transfermarkt.technology/portrait/header/281963-1667830435.jpg?lm=1', 27, '1996-02-14'),
(9, 'Mendes', 'Nuno', 'Portugal', 'gauche', 'https://img.a.transfermarkt.technology/portrait/header/616341-1672304855.jpg?lm=1', 21, '2002-06-19'),
(10, 'Bernat', 'Juan', 'Espagne', 'gauche', 'https://img.a.transfermarkt.technology/portrait/header/126719-1672304606.jpg?lm=1', 30, '1993-03-01'),
(11, 'Hakimi', 'Achraf', 'Maroc', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/398073-1672304327.jpg?lm=1', 24, '1998-11-04'),
(12, 'Mukiele', 'Nordi', 'France', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/348026-1672303364.jpg?lm=1', 25, '1997-11-01'),
(13, 'Dagba', 'Colin', ' France', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/460629-1602849414.jpg?lm=1', 24, '1998-09-09'),
(14, 'Ugarte', 'Manuel', 'Uruguay', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/476701-1666099923.jpg?lm=1', 22, '2001-04-11'),
(15, 'Pereira', 'Danilo', 'Portugal', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/141050-1668697507.jpg?lm=1', 31, '1991-09-09'),
(16, 'Vitinha', NULL, 'Portugal', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/487469-1672303629.jpg?lm=1', 23, '2000-02-13'),
(17, 'Verratti', 'Marco', 'Italie', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/102558-1672304218.jpg?lm=1', 30, '1992-11-05'),
(18, 'Ruiz', 'Fabián', 'Espagne', 'gauche', 'https://img.a.transfermarkt.technology/portrait/header/350219-1672303440.jpg?lm=1', 27, '1996-04-03'),
(19, 'Soler', 'Carlos', 'Espagne', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/372246-1662059930.jpg?lm=1', 26, '1997-01-02'),
(20, 'Zaïre-Emery', 'Warren', 'France', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/810092-1672303575.jpg?lm=1', 17, '2006-03-08'),
(21, 'Michut', 'Edouard', 'France', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/659521-1644158470.png?lm=1', 20, '2003-03-04'),
(22, 'Ndour', 'Cher', 'Italie', 'ambidextre', 'https://img.a.transfermarkt.technology/portrait/header/651005-1655898772.jpg?lm=1', 19, '2004-07-27'),
(23, 'Lee', 'Kang-in', 'Corée du Sud', 'gauche', 'https://img.a.transfermarkt.technology/portrait/header/557149-1682694618.jpg?lm=1', 22, '2001-02-19'),
(24, 'Gharbi', 'Ismaël', 'Espagne', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/810096-1672304411.jpg?lm=1', 19, '2004-04-10'),
(25, 'Dembélé', 'Ousmane', 'France', 'ambidextre', 'https://img.a.transfermarkt.technology/portrait/header/288230-1684148641.jpg?lm=1', 26, '1997-05-15'),
(26, 'Asensio', 'Marco', 'Espagne', 'gauche', 'https://img.a.transfermarkt.technology/portrait/header/296622-1664970818.jpg?lm=1', 27, '1996-01-21'),
(27, 'Ekitiké', 'Hugo', 'France', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/709726-1672304545.jpg?lm=1', 21, '2002-06-20'),
(28, 'Housni', 'Ilyes', 'France', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/825437-1665043208.jpg?lm=1', 18, '2005-05-14'),
(29, 'Mbappé', 'Kylian', 'France', 'droit', 'https://img.a.transfermarkt.technology/portrait/header/342229-1682683695.jpg?lm=1', 24, '1998-12-20'),
(30, 'Mbappé', 'Ethan', 'France', 'gauche', 'https://img.a.transfermarkt.technology/portrait/header/903666-1628749613.jpg?lm=1', 16, '2006-12-29');

-- --------------------------------------------------------

--
-- Structure de la table `position`
--

CREATE TABLE `position` (
  `Id_position` int(11) NOT NULL,
  `poste` varchar(250) DEFAULT NULL,
  `cote_terrain` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `position`
--

INSERT INTO `position` (`Id_position`, `poste`, `cote_terrain`) VALUES
(1, 'Gardien', NULL),
(2, 'Défenseur', 'central'),
(5, 'Défenseur', 'gauche'),
(6, 'Défenseur', 'droit'),
(9, 'Milieu défensif', 'central'),
(10, 'Milieu relayeur', 'droit'),
(11, 'Milieu relayeur', 'gauche'),
(14, 'Milieu offensif', 'central'),
(16, 'Milieu offensif', 'droit'),
(17, 'Milieu offensif', 'gauche'),
(18, 'Attaquant', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE `staff` (
  `Id_staff` int(11) NOT NULL,
  `nom_staff` varchar(250) DEFAULT NULL,
  `prenom_staff` varchar(250) DEFAULT NULL,
  `nationalite_staff` varchar(250) DEFAULT NULL,
  `photo_staff` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `staff`
--

INSERT INTO `staff` (`Id_staff`, `nom_staff`, `prenom_staff`, `nationalite_staff`, `photo_staff`) VALUES
(2, 'Martinez Garcia', 'Luis Enrique', 'Espagnol', 'https://img.a.transfermarkt.technology/portrait/header/6499-1535801610.jpg?lm=1'),
(4, 'Aubert', 'Jean-Luc', 'Français', 'https://www.psg.fr/media/34563/card-22-23-aubert.png?crop=0.35254071489001693,0.040999101099830793,0.26674862521150594,0.57829023900169207&cropmode=percentage&width=200&height=200&quality=60'),
(5, 'Buedo', 'Borja Alvarez', 'Espagnol', 'https://img.a.transfermarkt.technology/portrait/header/76020-1630340266.jpg?lm=1'),
(8, 'Elorza', 'Aitor Unzué', 'Espagnol', 'https://sortitoutsi.b-cdn.net/uploads/face/67113056.png'),
(9, 'Cabanellas', 'Rafel Pol', 'Espagnol', 'https://img.a.transfermarkt.technology/portrait/header/t_20728_12_2010_1.jpg?lm=1'),
(14, ' Gomez', 'Pedro', 'Espagnol', 'https://www.unecatef.fr/media/cache/coach_photo/uploads/coachPhoto/ac4ce10aaab15fcbf53956a1f629d9a1.png'),
(15, 'Piernas', 'Alberto', 'Espagnol', 'https://www.unecatef.fr/media/cache/coach_photo/uploads/coachPhoto/b01176237a3ca8794c4e70de0ccec26c.png'),
(16, 'Fonseca', 'Joaquin Valdes', 'Espagnol', 'data:image/jpeg;base64,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'),
(18, 'SACRAMENTO', 'JOAO', 'Portugal', 'https://www.unecatef.fr/media/cache/coach_photo/uploads/coachPhoto/6ea8d29e2ac5bb689c13242844e91610.png'),
(19, 'RAMON', 'ISIDRO', 'Espagne', 'https://www.unecatef.fr/media/cache/coach_photo/uploads/coachPhoto/4386214fdfe2f05cc15de1fe16bc4ddf.png');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `Id_statut` int(11) NOT NULL,
  `joueur_statut` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`Id_statut`, `joueur_statut`) VALUES
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
  ADD PRIMARY KEY (`Id_joueur`);

--
-- Index pour la table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`Id_position`);

--
-- Index pour la table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Id_staff`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
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
  MODIFY `Id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `Id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `position`
--
ALTER TABLE `position`
  MODIFY `Id_position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `staff`
--
ALTER TABLE `staff`
  MODIFY `Id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
