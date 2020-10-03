-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 19 Mai 2019 à 16:15
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `fan_de_film`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `nb` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `date de naissance` date NOT NULL,
  `nationalite` varchar(30) NOT NULL,
  `laureat` tinyint(1) NOT NULL,
  `session` int(5) NOT NULL,
  `nb_film` int(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `score` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `acteur`
--

INSERT INTO `acteur` (`nb`, `nom`, `prenom`, `date de naissance`, `nationalite`, `laureat`, `session`, `nb_film`, `image`, `score`) VALUES
(1, 'Malek', 'Rami', '1981-05-12', 'americain', 1, 91, 4, '376414.jpg', 0),
(2, 'Bale', 'Christian', '1974-01-30', 'americain britannique', 0, 91, 8, '0699464.jpg', 1),
(3, 'Cooper', 'Bradley', '1975-01-05', 'americain', 0, 91, 7, 'Bradley-Cooper.jpg', 0),
(4, 'Dafoe', 'Willem', '1955-07-22', 'americain', 0, 91, NULL, '4iY9Y-Eiv_UC7H8R29w1VbM3F2Y.jpg', 0),
(5, 'Mortensen', 'Viggo', '1958-10-20', 'americain', 0, 91, 1, '438954.jpg', 0),
(6, 'Oldman', 'Gary', '1958-03-21', 'britannique', 1, 90, 11, 'Garyoldman.jpg', 0),
(7, 'Chalamet', 'Timothee', '1995-12-27', 'americain', 0, 90, 10, 'timothee_chalamet.jpg', 0),
(8, 'Day-Lewis', 'Daniel', '1957-04-29', 'britannique', 0, 90, 16, 'Daniel-Day-Lewis.jpg', 0),
(9, 'Kaluuya', 'Daniel', '1989-02-24', 'britannique', 0, 90, 13, 'daniel kaluuya.jpg', 0),
(10, 'Washington', 'Denzel', '1954-12-28', 'americain', 0, 90, NULL, 'denzel-washington.jpg', 0),
(11, 'Affleck', 'Casey', '1975-08-12', 'americain', 1, 89, 24, NULL, 0),
(12, 'Garfield', 'Andrew', '1983-08-20', 'americain britannique', 0, 89, 26, NULL, 0),
(13, 'Gosling', 'Ryan', '1989-02-24', 'canadien', 0, 89, 22, NULL, 0),
(14, 'Mortensen', 'Viggo', '1958-10-20', 'americain', 0, 89, 13, NULL, 0),
(15, 'Washington', 'Denzel', '1954-12-28', 'britannique', 0, 89, 20, NULL, 0),
(16, 'DiCaprio', 'Leonardo', '1974-11-11', 'americain', 1, 88, 32, NULL, 0),
(17, 'Bryan', 'Cranston', '1956-03-07', 'americain', 0, 88, NULL, NULL, 0),
(18, 'Damon', 'Matt', '1970-10-08', 'americain', 0, 88, 34, NULL, 0),
(19, 'Fassbender', 'Michael', '1977-04-02', 'allemand irlandais', 0, 88, NULL, NULL, 0),
(20, 'Redmayne', 'Eddie', '1982-01-06', 'britannique', 0, 88, NULL, NULL, 0),
(21, 'Redmayne', 'Eddie', '1982-01-06', 'britannique', 1, 87, 41, NULL, 0),
(22, 'Carell', 'Steve', '1962-08-16', 'americain', 0, 87, NULL, NULL, 0),
(23, 'Cooper', 'Bradley', '1975-01-05', 'americain', 0, 87, 36, NULL, 0),
(24, 'Cumberbatch', 'Benedict', '1976-07-19', 'britannique', 0, 87, 39, NULL, 0),
(25, 'Keaton', 'Michael', '1951-09-05', 'americain', 0, 87, 35, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `actrice`
--

CREATE TABLE `actrice` (
  `nb` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `date de naissance` date NOT NULL,
  `nationalite` varchar(30) NOT NULL,
  `laureat` tinyint(1) NOT NULL,
  `session` int(5) NOT NULL,
  `nb_film` int(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `score` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `actrice`
--

INSERT INTO `actrice` (`nb`, `nom`, `prenom`, `date de naissance`, `nationalite`, `laureat`, `session`, `nb_film`, `image`, `score`) VALUES
(1, 'Colman', 'Olivia', '1974-01-30', 'britannique', 1, 91, 5, 'Olivia_Colman.png', 0),
(2, 'Aparicio', 'Yalitza', '1993-12-11', 'mexicaine', 0, 91, 6, '212584.jpg', 0),
(3, 'Close', 'Glenn', '1947-03-19', 'americaine', 0, 91, NULL, '2318.jpg', 0),
(4, 'Lady', 'Gaga', '1986-03-28', 'americaine', 0, 91, 7, 'lady gaga.jpg', 0),
(5, 'McCarthy', 'Melissa', '1970-08-26', 'americaine', 0, 91, NULL, '23MccarthyCover-jumbo.png', 0),
(6, 'McDormand', 'Frances', '1957-07-23', 'americaine', 1, 90, 17, '161711.jpg', 0),
(7, 'Hawkins', 'Sally', '1976-04-27', 'britannique', 0, 90, 9, 'sally hawkins.jpg', 0),
(8, 'Robbie', 'Margot', '1990-07-02', 'australienne', 0, 90, NULL, '4307881.jpg', 0),
(9, 'Ronan', 'Saoirse', '1994-04-12', 'americaine irlandaise', 0, 90, 14, '1100385-prodlibe.jpg', 0),
(10, 'Streep', 'Meryl', '1949-06-22', 'americaine', 0, 90, 15, 'hfpa12_p_068.jpg', 0),
(11, 'Stone', 'Emma', '1988-11-06', 'americaine', 1, 89, 22, NULL, 0),
(12, 'Huppert', 'Isabelle', '1953-03-16', 'francaise', 0, 89, NULL, NULL, 0),
(13, 'Negga', 'Ruth', '1982-01-07', 'irlandaise', 0, 89, NULL, NULL, 0),
(14, 'Portman', 'Natalie', '1981-06-09', 'americaine', 0, 89, NULL, NULL, 0),
(15, 'Streep', 'Meryl', '1949-06-22', 'americaine', 0, 89, NULL, NULL, 0),
(16, 'Larson', 'Brie', '1989-10-01', 'americaine', 1, 88, 33, NULL, 0),
(17, 'Blanchett', 'Cate', '1969-05-14', 'australienne', 0, 88, NULL, NULL, 0),
(18, 'Lawrence', 'Jennifer', '1990-08-15', 'americaine', 0, 88, NULL, NULL, 0),
(19, 'Rampling', 'Charlotte', '1946-02-05', 'britannique', 0, 88, NULL, NULL, 0),
(20, 'Ronan', 'Saoirse', '1994-04-12', 'americaine irlandaise', 0, 88, 29, NULL, 0),
(21, 'Moore', 'Julianne', '1960-12-03', 'americaine', 1, 87, NULL, NULL, 0),
(22, 'Cotillard', 'Marion', '1975-09-30', 'francaise', 0, 87, NULL, NULL, 0),
(23, 'Jones', 'Felicity', '1983-10-17', 'britannique', 0, 87, 41, NULL, 0),
(24, 'Pike', 'Rosamund', '1979-01-27', 'britannique', 0, 87, NULL, NULL, 0),
(25, 'Witherspoon', 'Reese', '1976-03-22', 'americaine', 0, 87, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `meilleur films`
--

CREATE TABLE `meilleur films` (
  `nb_film` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `laureat` tinyint(1) NOT NULL,
  `session` int(5) NOT NULL,
  `nb_realisateur` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `meilleur films`
--

INSERT INTO `meilleur films` (`nb_film`, `nom`, `laureat`, `session`, `nb_realisateur`) VALUES
(1, 'Green Book', 1, 91, NULL),
(2, 'Black Panther', 0, 91, NULL),
(3, 'BlacKKKlansman', 0, 91, 3),
(4, 'Bohemian Rhapsody', 0, 91, NULL),
(5, 'La Favorite', 0, 91, 2),
(6, 'Roma', 0, 91, 1),
(7, 'A Star Is Born', 0, 91, NULL),
(8, 'Vice', 0, 91, 4),
(9, 'La Forme de l\'\'eau', 1, 90, 6),
(10, 'Call Me by Your Name', 0, 90, NULL),
(11, 'Les Heures sombres', 0, 90, NULL),
(12, 'Dunkerque', 0, 90, 9),
(13, 'Get Out', 0, 90, 7),
(14, 'Lady Bird', 0, 90, 10),
(15, 'Pentagon Papers', 0, 90, NULL),
(16, 'Phantom Thread', 0, 90, 8),
(17, 'Three Billboards', 0, 90, NULL),
(18, 'Moonlight', 1, 89, 15),
(19, 'Comancheria', 0, 89, NULL),
(20, 'Fences', 0, 89, NULL),
(21, 'Les Figures de l"ombre', 0, 89, NULL),
(22, 'La La Land', 0, 89, 11),
(23, 'Lion', 0, 89, NULL),
(24, 'Manchester by the Sea', 0, 89, 14),
(25, 'Premier contract', 0, 89, 12),
(26, 'Tu ne tueras point', 0, 89, 13),
(27, 'Spotlight', 1, 88, 18),
(28, 'The Big Short', 0, 88, 19),
(29, 'Brooklyn', 0, 88, NULL),
(30, 'Mad Max:Fury Road', 0, 88, 20),
(31, 'Le Pont des espions', 0, 88, NULL),
(32, 'Le Revenant', 0, 88, 16),
(33, 'Room', 0, 88, 17),
(34, 'Seul sur Mars', 0, 88, NULL),
(35, 'Birdman', 1, 87, 20),
(36, 'American Sniper', 0, 87, NULL),
(37, 'Boyhood', 0, 87, 22),
(38, 'The Grand Budapest Hotel', 0, 87, 21),
(39, 'Imitation Game', 0, 87, 24),
(40, 'Seima', 0, 87, NULL),
(41, 'Une merveilleuse histoire du temps', 0, 87, NULL),
(42, 'Whiplash', 0, 87, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `meilleur realisateurs`
--

CREATE TABLE `meilleur realisateurs` (
  `nb_realisateur` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `date de naissance` date NOT NULL,
  `nationalite` varchar(30) NOT NULL,
  `laureat` tinyint(1) NOT NULL,
  `session` int(5) NOT NULL,
  `nb_film` int(50) DEFAULT NULL,
  `sexe` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `meilleur realisateurs`
--

INSERT INTO `meilleur realisateurs` (`nb_realisateur`, `nom`, `prenom`, `date de naissance`, `nationalite`, `laureat`, `session`, `nb_film`, `sexe`) VALUES
(1, 'Cuaron', 'Alfonso', '1961-11-28', 'mexicain', 1, 91, 6, 'm'),
(2, 'Lanthimos', 'Yorgos', '1973-05-27', 'grec', 0, 91, 5, 'm'),
(3, 'Lee', 'Spike', '1957-03-20', 'americain', 0, 91, 3, 'm'),
(4, 'McKay', 'Adam', '1968-04-17', 'americain', 0, 91, 8, 'm'),
(5, 'Pawlikowski', 'Pawel', '1957-09-15', 'polonais', 0, 91, NULL, 'm'),
(6, 'del Toro', 'Guillermo', '1964-10-09', 'mexicain', 1, 90, 9, 'm'),
(7, 'Peele', 'Jordan', '1979-02-21', 'americain', 0, 90, 13, 'm'),
(8, 'Anderson', 'Paul Thomas', '1970-06-26', 'americain', 0, 90, 16, 'm'),
(9, 'Nolan', 'Christopher', '1970-07-30', 'americain', 0, 90, 12, 'm'),
(10, 'Gerwig', 'Greta', '1983-08-04', 'americaine', 0, 90, 14, 'f'),
(11, 'Chazelle', 'Damien ', '1985-01-19', 'americain', 1, 89, 22, 'm'),
(12, 'Villeneuve', 'Denis', '1967-10-03', 'canadien', 0, 89, 25, 'm'),
(13, 'Gibson', 'Mel', '1956-01-03', 'americain', 0, 89, 26, 'm'),
(14, 'Lonergan', 'Kenneth', '1962-10-16', 'americain', 0, 89, 24, 'm'),
(15, 'Jenkins', 'Barry', '1979-11-19', 'americain', 0, 89, 18, 'm'),
(16, 'Gonzalez Inarritu', 'Alejandro', '1963-08-15', 'mexicain', 1, 88, 32, 'm'),
(17, 'Abrahamson', 'Lenny', '1966-11-30', 'irlandais', 0, 88, 33, 'm'),
(18, 'McCarthy', 'Tom', '1966-06-07', 'americain', 0, 88, 27, 'm'),
(19, 'McKay', 'Adam', '1968-04-17', 'americain', 0, 88, 28, 'm'),
(20, 'Miller', 'George', '1945-03-03', 'australien', 0, 88, 30, 'm'),
(21, 'Gonzalez Inarritu', 'Alejandro', '1963-08-15', 'mexicain', 1, 87, 35, 'm'),
(22, 'Anderson', 'Wes', '1969-05-01', 'americain', 0, 87, 38, 'm'),
(23, 'Linklater', 'Richard', '1960-07-30', 'americain', 0, 87, 37, 'm'),
(24, 'Miller', 'Bennett', '1966-12-30', 'americain', 0, 87, NULL, 'm'),
(25, 'Tyldum', 'Morten', '1967-05-19', 'norvegien', 0, 87, 39, 'm');

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `session` int(10) NOT NULL,
  `annee` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `session`
--

INSERT INTO `session` (`session`, `annee`) VALUES
(72, 2000),
(73, 2001),
(74, 2002),
(75, 2003),
(76, 2004),
(77, 2005),
(78, 2006),
(79, 2007),
(80, 2008),
(81, 2009),
(82, 2010),
(83, 2011),
(84, 2012),
(85, 2013),
(86, 2014),
(87, 2015),
(88, 2016),
(89, 2017),
(90, 2018),
(91, 2019);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(10) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `email`, `password`, `date`) VALUES
(1, '333', '333', '333', '2018-05-03'),
(5, '1111', '1111', '1111', '2019-05-01'),
(6, '2222', '2222', '2222', '2019-05-01'),
(7, 'aaa', 'aaa', 'aaa', '2019-05-06'),
(8, '123', '123', '123', '2019-05-07');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`nb`),
  ADD KEY `nomF` (`nb_film`),
  ADD KEY `session` (`session`);

--
-- Index pour la table `actrice`
--
ALTER TABLE `actrice`
  ADD PRIMARY KEY (`nb`),
  ADD KEY `nomF` (`nb_film`),
  ADD KEY `session` (`session`);

--
-- Index pour la table `meilleur films`
--
ALTER TABLE `meilleur films`
  ADD PRIMARY KEY (`nb_film`),
  ADD KEY `session` (`session`),
  ADD KEY `nomR` (`nb_realisateur`);

--
-- Index pour la table `meilleur realisateurs`
--
ALTER TABLE `meilleur realisateurs`
  ADD PRIMARY KEY (`nb_realisateur`),
  ADD KEY `nomF` (`nb_film`),
  ADD KEY `session` (`session`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `nb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `actrice`
--
ALTER TABLE `actrice`
  MODIFY `nb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `meilleur films`
--
ALTER TABLE `meilleur films`
  MODIFY `nb_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `meilleur realisateurs`
--
ALTER TABLE `meilleur realisateurs`
  MODIFY `nb_realisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
