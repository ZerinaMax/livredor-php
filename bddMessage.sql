-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 24 octobre 2022 à 10:49
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `livredor`
--

-- --------------------------------------------------------

--
-- Structure de la table `livredor`
--

CREATE TABLE `livredor` (
  `message_id` bigint(7) UNSIGNED NOT NULL,
  `txt_message` varchar(400) NOT NULL,
  `txt_email` varchar(25) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `citation`
--

INSERT INTO `livredor` (`message_id`, `txt_message`, `txt_email`, `date`) VALUES
(1, 'Tres bien.', 'zed@zed.fr', '2022-10-24');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `livredor`
--
ALTER TABLE `livredor`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `citation`
--
ALTER TABLE `livredor`
  MODIFY `message_id` bigint(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;