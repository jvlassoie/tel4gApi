-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 22 Juin 2017 à 14:49
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `api_tel`
--

-- --------------------------------------------------------

--
-- Structure de la table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'samsung'),
(2, 'lg'),
(3, 'nexus'),
(4, 'apple');

-- --------------------------------------------------------

--
-- Structure de la table `operating_system`
--

CREATE TABLE `operating_system` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `operating_system`
--

INSERT INTO `operating_system` (`id`, `name`) VALUES
(1, 'android'),
(2, 'ios');

-- --------------------------------------------------------

--
-- Structure de la table `option_sub`
--

CREATE TABLE `option_sub` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `option_sub`
--

INSERT INTO `option_sub` (`id`, `name`, `price`, `details`) VALUES
(1, 'data', 5, '3Go'),
(2, 'data max', 10, '20Go');

-- --------------------------------------------------------

--
-- Structure de la table `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `width` double NOT NULL,
  `thickness` double NOT NULL,
  `autonomy` int(11) NOT NULL,
  `memory` double NOT NULL,
  `memory_extension` tinyint(1) NOT NULL,
  `standard_4g` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `phone`
--

INSERT INTO `phone` (`id`, `brand_id`, `os_id`, `model`, `price`, `picture`, `weight`, `height`, `width`, `thickness`, `autonomy`, `memory`, `memory_extension`, `standard_4g`) VALUES
(2, 4, 2, 'iphone 6', 1000, 'http://img1.lesnumeriques.com/produits/71/21659/apple-iphone-6-plus_5a7fc7ecdc58715d.png', 300, 400, 10, 100, 10, 32, 0, 1),
(4, 3, 1, '5', 300, 'http://lagenerationz.com/wp-content/uploads/2014/12/Nexus-5.png', 400, 300, 200, 100, 23, 32, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `capacity` longtext COLLATE utf8_unicode_ci NOT NULL,
  `destination` longtext COLLATE utf8_unicode_ci NOT NULL,
  `zone` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `subscription`
--

INSERT INTO `subscription` (`id`, `name`, `price`, `capacity`, `destination`, `zone`) VALUES
(1, 'bas prix', 2.49, '2h de communications', 'Vers fixes et mobiles', 'Zone nationale'),
(2, 'national', 9.99, 'Téléphonie et SMS illimités', 'Vers fixes et mobiles', 'Zone nationale'),
(3, 'euro', 19.99, 'Téléphonie et SMS illimités', 'Vers fixes et mobiles', 'Zone euro');

-- --------------------------------------------------------

--
-- Structure de la table `subscription_info`
--

CREATE TABLE `subscription_info` (
  `id` int(11) NOT NULL,
  `iban` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `bic` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identityCard` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` datetime DEFAULT NULL,
  `subscriptioninfo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `fullname`, `firstname`, `lastname`, `birthdate`, `subscriptioninfo_id`) VALUES
(38, 'ko@ko.fr', 'ko@ko.fr', 'ko@ko.fr', 'ko@ko.fr', 1, NULL, '$2y$13$DmxTTjmCG1zoukQxEsBe1eEQAhBZDEUtzKGyCX4pV.OTUWhvIN61S', NULL, NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'test moi', 'test', 'moi', '2017-06-08 00:00:00', NULL),
(39, 'yo@yo.yo', 'yo@yo.yo', 'yo@yo.yo', 'yo@yo.yo', 1, NULL, '$2y$13$EmvczH1fFr8pEU2LIZpL3OPOz1RVqhs571jKXJzNfOPLfOwxP7L9a', '2017-06-21 23:52:22', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'yo yo', 'yo', 'yo', '2017-06-20 00:00:00', NULL),
(40, 'ye@ye.ye', 'ye@ye.ye', 'ye@ye.ye', 'ye@ye.ye', 1, NULL, '$2y$13$N3HrSuhLGzx9frAAo/NvNuJmbZ6xzIYEcRRoyMRICWstLYLJkjKHC', NULL, NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'ye ye', 'ye', 'ye', '2017-06-08 00:00:00', NULL),
(43, 'mo@mo.mo', 'mo@mo.mo', 'mo@mo.mo', 'mo@mo.mo', 1, NULL, '$2y$13$Md3lVUFtXAUqBSxZEoeO0OKMn04vP/ojkBAuXduRA6x.845xXbXIS', '2017-06-07 17:46:33', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'mo mo', 'mo', 'mo', '2017-06-14 00:00:00', NULL),
(45, 'me@me.me', 'me@me.me', 'me@me.me', 'me@me.me', 1, NULL, '$2y$13$tvMYbcJoYnHk2vcmdxBzIOqFn7nu4Ozvq34QAnheNRFo./6Y9T53.', '2017-06-07 17:47:50', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'me me', 'me', 'me', '2017-06-08 00:00:00', NULL),
(46, 'mi@mi.mi', 'mi@mi.mi', 'mi@mi.mi', 'mi@mi.mi', 1, NULL, '$2y$13$D51BebsxCIUA11f2r83JBuyeAdTo9UoGp2I85KYCe2WKXYoNUVxlK', '2017-06-07 17:48:53', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'mi mi', 'mi', 'mi', '2017-06-14 00:00:00', NULL),
(47, 'fe@fe.fe', 'fe@fe.fe', 'fe@fe.fe', 'fe@fe.fe', 1, NULL, '$2y$13$8CWzf.hYx.Dl.uGTfL7ibechfqNFUibSdLHPvO4yDWqSZHqQ1KjSS', '2017-06-07 17:49:36', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'fe fe', 'fe', 'fe', '2017-06-07 00:00:00', NULL),
(48, 'fa@fa.fa', 'fa@fa.fa', 'fa@fa.fa', 'fa@fa.fa', 1, NULL, '$2y$13$4C/TeoD/K9dueak73jd8LeczgZG8wZ/E.KK97G756m.k7QlzEwoGO', '2017-06-07 17:50:30', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'fa fa', 'fa', 'fa', '2017-06-15 00:00:00', NULL),
(49, 'za@za.za', 'za@za.za', 'za@za.za', 'za@za.za', 1, NULL, '$2y$13$bMtrJugvKaQMFmY37lttA.5WvmCwQ0eSsBi1RgzFRpSJbYT00uota', '2017-06-07 17:51:17', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'za za', 'za', 'za', '2017-06-06 00:00:00', NULL),
(50, 'zo@zo.zo', 'zo@zo.zo', 'zo@zo.zo', 'zo@zo.zo', 1, NULL, '$2y$13$Zj9Cx60nwnc7N17Hvryziu0XHzw2VEw7KZ9YY0osa3zokGKZGCMSC', '2017-06-07 17:54:55', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'zo zo', 'zo', 'zo', '2017-06-13 00:00:00', NULL),
(51, 'test@test.test', 'test@test.test', 'test@test.test', 'test@test.test', 1, NULL, '$2y$13$FiYSdVHoYyOV8mMqWIUsjeypNSLnMWU9lpqoKwwhDdEIUHhjVIWYO', '2017-06-07 18:01:45', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'test Julien', 'test', 'Julien', '2009-06-02 00:00:00', NULL),
(52, 'test2@test.test', 'test2@test.test', 'test2@test.test', 'test2@test.test', 1, NULL, '$2y$13$OG0bWRWv4mHKdBLvj89vS.CfwaBXrVk/kVZ6f2dm72EcIcJggbGWK', '2017-06-07 18:02:35', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'Piet Mc Onely', 'Piet', 'Mc Onely', '2017-04-03 00:00:00', NULL),
(53, 'test@tests.test', 'test@tests.test', 'test@tests.test', 'test@tests.test', 1, NULL, '$2y$13$3illUg5e9iXITEELR8Ixwumv3erWEBfOjr3MX73ifYVCnqn8kb0eG', NULL, NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'Piet Mc Onely', 'Piet', 'Mc Onely', '2017-06-07 00:00:00', NULL),
(54, 'toto@toto.com', 'toto@toto.com', 'toto@toto.com', 'toto@toto.com', 1, NULL, '$2y$13$aQmAs.Gam207.1KS5ixU3eWHjk24owfN34OfKPsEwxDe.zYWB/8JG', '2017-06-14 17:03:10', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'toto toto', 'toto', 'toto', '2017-06-21 00:00:00', NULL),
(56, 'lock@lock.fr', 'lock@lock.fr', 'lock@lock.fr', 'lock@lock.fr', 1, NULL, '$2y$13$yMLSoxwUeZX3yY6H38EKsOnqlDadaFN3pp2CefCFFlDLds2JoYxde', '2017-06-21 17:26:51', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'mimo ddd', 'mimo', 'ddd', '2017-06-07 00:00:00', NULL),
(57, 'jordy@jordy.com', 'jordy@jordy.com', 'jordy@jordy.com', 'jordy@jordy.com', 1, NULL, '$2y$13$nPLW224wyAGeW4cmuAWWEedBqWI195QqBahvaLPkoGlfqXmQXAOY6', '2017-06-21 17:37:16', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'jodu jordy', 'jodu', 'jordy', '2017-06-08 00:00:00', NULL),
(58, 'nemo@nemo.fr', 'nemo@nemo.fr', 'nemo@nemo.fr', 'nemo@nemo.fr', 1, NULL, '$2y$13$2JljGTYbr9EMjO7y7mz0YeR4koBN0ycEtnJTIJe7DdZQTk1fRvvbi', '2017-06-21 17:40:56', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_READER";}', 'nemo nemo', 'nemo', 'nemo', '2017-06-14 00:00:00', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `operating_system`
--
ALTER TABLE `operating_system`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `option_sub`
--
ALTER TABLE `option_sub`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_444F97DD44F5D008` (`brand_id`),
  ADD KEY `IDX_444F97DD3DCA04D1` (`os_id`);

--
-- Index pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `subscription_info`
--
ALTER TABLE `subscription_info`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`),
  ADD KEY `IDX_8D93D6496D4E3EFC` (`subscriptioninfo_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `operating_system`
--
ALTER TABLE `operating_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `option_sub`
--
ALTER TABLE `option_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `subscription_info`
--
ALTER TABLE `subscription_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `FK_444F97DD3DCA04D1` FOREIGN KEY (`os_id`) REFERENCES `operating_system` (`id`),
  ADD CONSTRAINT `FK_444F97DD44F5D008` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6496D4E3EFC` FOREIGN KEY (`subscriptioninfo_id`) REFERENCES `subscription_info` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
