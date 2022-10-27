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
-- Base de données : `guestbook`
--
DROP DATABASE IF EXISTS `guestbook`;
CREATE DATABASE IF NOT EXISTS `guestbook` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `guestbook`;

-- --------------------------------------------------------

--
-- Structure de la table `guestbook`
--

CREATE TABLE `comments` (
  `message_id` bigint(7) UNSIGNED NOT NULL,
  `txt_message` varchar(400) NOT NULL,
  `txt_email` varchar(25) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `citation`
--

INSERT INTO `comments` (`message_id`, `txt_message`, `txt_email`, `date`) VALUES
(1, "Formation complète, formateur compétent et à l'écoute, dommage que le temps imparti pour assimiler et tester toutes ces nouvelles technologies soit si court.", 'zerina.maxhuni@gmail.com', '2022-10-27 14:05:30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
--
ALTER TABLE `comments`
  MODIFY `message_id` bigint(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;