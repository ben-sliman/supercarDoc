-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 mai 2024 à 18:16
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `supercar`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idcontact` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `commentaires` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idcontact`, `nom`, `prenom`, `adresse`, `telephone`, `email`, `commentaires`) VALUES
(1, 'bacar', 'bacar', '92 dygd dsahgsd', '123', 'jean2@gmail.com', 'sqfdghnvZFQSDGFBCGVNDWFgcvnhb,fgbgcvngbcnvb    vbncnbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbxcxffgn'),
(2, 'yoyo', 'yoyo', 'yoyozd zdhkbdz', '12344', 'jean2@gmail.com', 'bkergrefkhnv'),
(3, 'bacar', 'bacar', '92 dygd dsahgsd', '+23054524972', 'jean2@gmail.com', 'bonjour');

-- --------------------------------------------------------

--
-- Structure de la table `date_utilisateur`
--

CREATE TABLE `date_utilisateur` (
  `id_date` int(10) NOT NULL,
  `date_insertion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `date_utilisateur`
--

INSERT INTO `date_utilisateur` (`id_date`, `date_insertion`) VALUES
(1, '2024-04-05 08:45:41'),
(2, '2024-05-20 20:14:37');

-- --------------------------------------------------------

--
-- Structure de la table `demandedessai`
--

CREATE TABLE `demandedessai` (
  `Id_demandeDessai` int(11) NOT NULL,
  `dates` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `Id_Inscription` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id`, `nom`, `dates`, `description`, `photo`) VALUES
(9, 'iziben', '2024-03-22', 'bienehgfeiygfe  ', '1710675652tratcto.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `Id_Inscription` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `date_inscri` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`Id_Inscription`, `nom`, `prenom`, `mail`, `tel`, `username`, `pwd`, `date_inscri`) VALUES
(1, 'Bonjour', 'Bonjour1', 'bg123@gmail.com', '123456', 'jean1', 'bacar1', NULL),
(2, 'user', 'user', 'user@user.fr', '12345', 'user', 'user123', NULL);

--
-- Déclencheurs `inscription`
--
DELIMITER $$
CREATE TRIGGER `inserer_date` AFTER INSERT ON `inscription` FOR EACH ROW BEGIN
	
		INSERT INTO date_utilisateur(date_insertion) VALUES (now());
	
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `Id_login` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`Id_login`, `username`, `pwd`, `nom`) VALUES
(1, 'admin', 'admin', 'admin'),
(5, 'teo', 'teo123', 'teophile'),
(6, 'admin', 'admin123', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `logtest`
--

CREATE TABLE `logtest` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `logtest`
--

INSERT INTO `logtest` (`id`, `username`, `pwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `libeleMarque` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`libeleMarque`) VALUES
('Audi'),
('BMW'),
('Chevrolet'),
('Ford'),
('Honda'),
('Hyundai'),
('Mercedes-Benz'),
('Nissan'),
('Toyota'),
('Volkswagen');

-- --------------------------------------------------------

--
-- Structure de la table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `libeleModel` varchar(50) NOT NULL,
  `libeleMarque` varchar(50) NOT NULL,
  `id_voiture` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `model`
--

INSERT INTO `model` (`id`, `libeleModel`, `libeleMarque`, `id_voiture`) VALUES
(19, 'focus', 'Ford', 26),
(18, 'Fiesta', 'Ford', 25);

-- --------------------------------------------------------

--
-- Structure de la table `organiser`
--

CREATE TABLE `organiser` (
  `id` int(11) NOT NULL,
  `Id_Evenements` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE `voitures` (
  `id` int(11) NOT NULL,
  `annee` year(4) DEFAULT NULL,
  `transmission` varchar(50) DEFAULT NULL,
  `motorisation` varchar(50) DEFAULT NULL,
  `car_photo` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`id`, `annee`, `transmission`, `motorisation`, `car_photo`, `description`) VALUES
(26, '2010', 'Automatique', 'Essence', '1711349436tratcto.jpg', 'uvuvuvuvuu'),
(25, '2010', 'Manuelle', 'Diesel', '1711085112tratcto.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id malesuada eros, quis efficitur mauris. Morbi at nisl lacinia, iaculis elit a, vulputate magna. Vivamus eget nisi augue. Nunc commodo ligula id laoreet placerat. Ut sed mattis turpis. Praesent rutrum egestas nunc, sit amet posuere risus congue sit amet. Duis blandit, dui ac aliquam finibus, odio metus pharetra leo, at hendrerit sapien quam in arcu. Aenean ornare ultrices venenatis.');

-- --------------------------------------------------------

--
-- Structure de la table `web_page_visits`
--

CREATE TABLE `web_page_visits` (
  `page_url` varchar(255) NOT NULL,
  `visit_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `web_page_visits`
--

INSERT INTO `web_page_visits` (`page_url`, `visit_count`) VALUES
('http://localhost:80/projet/index.php', 19);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `web_page_visit_counts`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `web_page_visit_counts` (
`page_url` varchar(255)
,`visit_count` int(11)
);

-- --------------------------------------------------------

--
-- Structure de la vue `web_page_visit_counts`
--
DROP TABLE IF EXISTS `web_page_visit_counts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `web_page_visit_counts`  AS SELECT `web_page_visits`.`page_url` AS `page_url`, `web_page_visits`.`visit_count` AS `visit_count` FROM `web_page_visits` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idcontact`);

--
-- Index pour la table `date_utilisateur`
--
ALTER TABLE `date_utilisateur`
  ADD PRIMARY KEY (`id_date`);

--
-- Index pour la table `demandedessai`
--
ALTER TABLE `demandedessai`
  ADD PRIMARY KEY (`Id_demandeDessai`),
  ADD UNIQUE KEY `Id_Inscription` (`Id_Inscription`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`Id_Inscription`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Id_login`);

--
-- Index pour la table `logtest`
--
ALTER TABLE `logtest`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`libeleMarque`);

--
-- Index pour la table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libeleMarque` (`libeleMarque`),
  ADD KEY `id_voiture` (`id_voiture`);

--
-- Index pour la table `organiser`
--
ALTER TABLE `organiser`
  ADD PRIMARY KEY (`id`,`Id_Evenements`),
  ADD KEY `Id_Evenements` (`Id_Evenements`);

--
-- Index pour la table `voitures`
--
ALTER TABLE `voitures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idcontact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `date_utilisateur`
--
ALTER TABLE `date_utilisateur`
  MODIFY `id_date` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `demandedessai`
--
ALTER TABLE `demandedessai`
  MODIFY `Id_demandeDessai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `Id_Inscription` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `Id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `logtest`
--
ALTER TABLE `logtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `organiser`
--
ALTER TABLE `organiser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `voitures`
--
ALTER TABLE `voitures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
