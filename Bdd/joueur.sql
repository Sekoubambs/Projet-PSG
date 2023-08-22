-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 21 août 2023 à 11:53
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`Id_joueur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `Id_joueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
