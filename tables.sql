-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 30 déc. 2018 à 22:29
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ebenup`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `user_id` int(11) NOT NULL,
  `nom` varchar(60) DEFAULT NULL,
  `prenom` varchar(60) DEFAULT NULL,
  `adresse` varchar(120) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `ville` varchar(60) DEFAULT NULL,
  `mail` varchar(60) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`user_id`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `mail`, `telephone`) VALUES
(1, 'AIT AMARA', 'Mohand', '11 rue du Marais', 75004, 'Paris', 'aitamarar@gmail.com', 769191101),
(2, 'Harriga', 'Imane', '25 rue Balzac', 75005, 'Paris', 'harriga@gmail.com', 665958741),
(3, 'Amairi', 'Mohamed', '1 rue de Tunis', 75002, 'Paris', 'mamairi@yahoo.fr', 652354789),
(4, 'Sow', 'Oumar', '3 Boulevard des Charos', 75003, 'Paris', 'oumars@attitude.sn', 696969691),
(5, 'Djamat Dubois', 'Prisca', '2bis rue des Folles', 75001, 'Paris', 'kprice@tepu.sp', 754859632);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `prestation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmee` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `user_id`, `description`, `date`, `prestation`, `type`, `confirmee`) VALUES
(6, 9, '2eme reservation', '2018-12-26', 'coiffure', 'Ebenlux', 0),
(7, 1, 'Lissage brezilien', '2018-12-27', 'coiffure', 'Ebenpop', 1),
(124, 5, 'Une couleur à 135€ plz', '2019-02-01', 'coiffure', 'Ebenlux', 1),
(1548, 1, 'Je voudrais ressemler a Beyoncé', '2018-12-18', 'maquillage', 'Ebenpop', 0),
(3105, 2, 'HELLO', '2018-12-18', 'maquillage', 'Ebenlux', 0),
(4512, 5, 'Teinture bleue', '2018-12-18', 'coiffure', 'Ebenlux', 0),
(5548, 9, 'hey2222', '2018-12-18', 'maquillage', 'Ebenseat', 0),
(25477, 2, 'HELLO', '2018-12-18', 'coiffure', 'Ebenlux', 1),
(25478, 150, 'Pour un mariage', '2018-12-27', 'maquillage', 'Ebenseat', 0),
(25497, 1, 'test', '2018-12-28', 'coiffure', 'Ebenpop', 1),
(25498, 1, 'test', '2018-12-28', 'coiffure', 'Ebenpop', 1),
(25499, 1, 'test', '2018-12-28', 'coiffure', 'Ebenlux', 1),
(25500, 1, 'test', '2018-12-28', 'coiffure', 'Ebenpop', 1);

-- --------------------------------------------------------

--
-- Structure de la table `professionnel`
--

CREATE TABLE `professionnel` (
  `nb_prof` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `nom_prof` varchar(60) DEFAULT NULL,
  `adresse` varchar(120) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `ville` varchar(60) DEFAULT NULL,
  `prestation` varchar(60) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `professionnel`
--

INSERT INTO `professionnel` (`nb_prof`, `id_prof`, `nom_prof`, `adresse`, `cp`, `ville`, `prestation`, `type`, `telephone`) VALUES
(1, 1, 'AfroCoiffure', '60 Avenue de la République', 75004, 'Paris', 'Maquillage', 'Ebenpop', 148589632),
(2, 2, 'Beauté interieur ? Connais pas !', '25 rue des Beurettes', 75001, 'Paris', 'Coiffure', 'Ebenlux', 780145863),
(3, 3, 'MarocBeauty', '52 Avenue de Barbesse', 75005, 'Paris', 'Coiffure', 'Ebenlux', 148569696),
(4, 1, 'AfroCoiffure', '60 Avenue de la République', 75004, 'Paris', 'Coiffure', 'Ebenpop', 148589632),
(5, 3, 'MarocBeauty', '52 Avenue de Barbesse', 75005, 'Paris', 'Maquillage', 'Ebenlux', 148569696);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `professionnel`
--
ALTER TABLE `professionnel`
  ADD PRIMARY KEY (`nb_prof`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25501;

--
-- AUTO_INCREMENT pour la table `professionnel`
--
ALTER TABLE `professionnel`
  MODIFY `nb_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
