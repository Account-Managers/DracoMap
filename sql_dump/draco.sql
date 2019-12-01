-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 01 déc. 2019 à 19:13
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `draco`
--

-- --------------------------------------------------------

--
-- Structure de la table `bestiary`
--

CREATE TABLE `bestiary` (
  `gid` int(6) UNSIGNED NOT NULL,
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `monster` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `bestiary`
--

INSERT INTO `bestiary` (`gid`, `id`, `monster`) VALUES
(244, 'CHEST', 'Chest'),
(27, 'MONSTER_DUNGEON_1', 'Rookie'),
(205, 'MONSTER_DUNGEON_10', 'Snailyn'),
(29, 'MONSTER_DUNGEON_11', 'Genie'),
(118, 'MONSTER_DUNGEON_12', 'Vampiro'),
(129, 'MONSTER_DUNGEON_13', 'Advise'),
(219, 'MONSTER_DUNGEON_14', 'Mantikid'),
(206, 'MONSTER_DUNGEON_15', 'Twist'),
(195, 'MONSTER_DUNGEON_16', 'Softail'),
(234, 'MONSTER_DUNGEON_17', 'Inur'),
(119, 'MONSTER_DUNGEON_18', 'Dracool'),
(130, 'MONSTER_DUNGEON_19', 'Absolerm'),
(15, 'MONSTER_DUNGEON_2', 'Axolan'),
(220, 'MONSTER_DUNGEON_20', 'Tigermant'),
(196, 'MONSTER_DUNGEON_21', 'Sharptail'),
(197, 'MONSTER_DUNGEON_22', 'Rosebud'),
(207, 'MONSTER_DUNGEON_23', 'Curly'),
(221, 'MONSTER_DUNGEON_24', 'Manticore'),
(235, 'MONSTER_DUNGEON_25', 'Morgoroth'),
(23, 'MONSTER_DUNGEON_3', 'Spikeback'),
(204, 'MONSTER_DUNGEON_4', 'Magglad'),
(218, 'MONSTER_DUNGEON_5', 'Cuticat'),
(194, 'MONSTER_DUNGEON_6', 'Rosie'),
(28, 'MONSTER_DUNGEON_7', 'Marid'),
(16, 'MONSTER_DUNGEON_8', 'Grandalotl'),
(24, 'MONSTER_DUNGEON_9', 'Scarecrow'),
(108, 'MONSTER_DUNGEON_APR_1', 'Chep'),
(109, 'MONSTER_DUNGEON_APR_2', 'Gob'),
(53, 'MONSTER_DUNGEON_HOL_1', 'Zizzi'),
(54, 'MONSTER_DUNGEON_HOL_2', 'Zuzzu'),
(95, 'MONSTER_DUNGEON_JUN_1', 'Crabby'),
(96, 'MONSTER_DUNGEON_JUN_2', 'Craboss'),
(125, 'MONSTER_DUNGEON_LOV_1', 'Nimblo'),
(126, 'MONSTER_DUNGEON_LOV_2', 'Crysbee'),
(64, 'MONSTER_DUNGEON_LOV_3', 'Grempie'),
(65, 'MONSTER_DUNGEON_LOV_4', 'Gremler'),
(227, 'MONSTER_DUNGEON_NEXT_1', 'Satyrus'),
(228, 'MONSTER_DUNGEON_NEXT_2', 'Silenus'),
(229, 'MONSTER_DUNGEON_NEXT_3', 'Dionus'),
(34, 'MONSTER_DUNGEON_NEXT_4', 'Raphy'),
(35, 'MONSTER_DUNGEON_NEXT_5', 'Wolfshroom'),
(158, 'MONSTER_DUNGEON_SPR_1', 'Phanty'),
(159, 'MONSTER_DUNGEON_SPR_2', 'Phantifurry'),
(160, 'MONSTER_DUNGEON_SPR_3', 'Phanticora'),
(69, 'MONSTER_DUNGEON_WIN_1', 'Blosstopus'),
(70, 'MONSTER_DUNGEON_WIN_2', 'Florantul'),
(169, 'MONSTER_DUNGEON_XMAS_1', 'Bogy'),
(170, 'MONSTER_DUNGEON_XMAS_2', 'Clurichaun'),
(185, 'MONSTER_DUNGEON_XMAS_3', 'Santus'),
(171, 'MONSTER_DUNGEON_XMAS_4', 'Leprechaun'),
(172, 'MONSTER_DUNGEON_XMAS_5', 'Boogeyman'),
(186, 'MONSTER_DUNGEON_XMAS_6', 'Craus'),
(3, 'MONSTER_EARTH_1', 'Berrydillo'),
(92, 'MONSTER_EARTH_10', 'Acornling'),
(166, 'MONSTER_EARTH_11', 'Phylo'),
(60, 'MONSTER_EARTH_12', 'Brag'),
(90, 'MONSTER_EARTH_13', 'Princie'),
(93, 'MONSTER_EARTH_14', 'Hopbear'),
(167, 'MONSTER_EARTH_15', 'Dao'),
(183, 'MONSTER_EARTH_16', 'Troll'),
(58, 'MONSTER_EARTH_17', 'Dwantflow'),
(61, 'MONSTER_EARTH_18', 'Chappian'),
(68, 'MONSTER_EARTH_19', 'Gardrag'),
(66, 'MONSTER_EARTH_2', 'Flowy'),
(76, 'MONSTER_EARTH_20', 'Twigo'),
(91, 'MONSTER_EARTH_21', 'Earthborn'),
(94, 'MONSTER_EARTH_22', 'Parabeast'),
(168, 'MONSTER_EARTH_23', 'Yogi'),
(184, 'MONSTER_EARTH_24', 'Grendel'),
(217, 'MONSTER_EARTH_25', 'Scylla'),
(74, 'MONSTER_EARTH_3', 'Leaflet'),
(59, 'MONSTER_EARTH_4', 'Brownie'),
(4, 'MONSTER_EARTH_5', 'Shamurf'),
(75, 'MONSTER_EARTH_6', 'Dryad'),
(67, 'MONSTER_EARTH_7', 'Plantic'),
(182, 'MONSTER_EARTH_8', 'Disguir'),
(57, 'MONSTER_EARTH_9', 'Bellflow'),
(62, 'MONSTER_EARTH_APR_1', 'Irislyn'),
(63, 'MONSTER_EARTH_APR_2', 'Clawbloom'),
(43, 'MONSTER_EARTH_JUN_1', 'Pugberry'),
(44, 'MONSTER_EARTH_JUN_2', 'Kerberos'),
(55, 'MONSTER_EARTH_LOV_1', 'Peagolin'),
(56, 'MONSTER_EARTH_LOV_2', 'Dodosaur'),
(211, 'MONSTER_EARTH_LOV_3', 'Minitaur'),
(212, 'MONSTER_EARTH_LOV_4', 'Teenotaur'),
(213, 'MONSTER_EARTH_LOV_5', 'Megataurus'),
(214, 'MONSTER_EARTH_LOV_6', 'Dragotaurus'),
(49, 'MONSTER_EARTH_NEXT_1', 'Beanie'),
(50, 'MONSTER_EARTH_NEXT_2', 'Frutucan'),
(239, 'MONSTER_EARTH_SPR_1', 'Seedo'),
(240, 'MONSTER_EARTH_SPR_2', 'Dandeliosaur'),
(243, 'MONSTER_EARTH_VIRAL', 'Kingpeat'),
(155, 'MONSTER_EARTH_WIN_1', 'Bako'),
(156, 'MONSTER_EARTH_WIN_2', 'Eloko'),
(157, 'MONSTER_EARTH_WIN_3', 'Sylvan'),
(192, 'MONSTER_EARTH_XMAS_1', 'Wooly'),
(45, 'MONSTER_EARTH_XMAS_2', 'Stumpy'),
(193, 'MONSTER_EARTH_XMAS_3', 'Yeti'),
(46, 'MONSTER_EARTH_XMAS_4', 'Drout'),
(17, 'MONSTER_FIRE_1', 'Potty'),
(85, 'MONSTER_FIRE_10', 'Helsailor'),
(176, 'MONSTER_FIRE_11', 'Spark'),
(146, 'MONSTER_FIRE_12', 'Kiddra'),
(138, 'MONSTER_FIRE_13', 'Daemonstar'),
(113, 'MONSTER_FIRE_14', 'Phoenix'),
(201, 'MONSTER_FIRE_15', 'Needlehot'),
(86, 'MONSTER_FIRE_16', 'Ironguy'),
(105, 'MONSTER_FIRE_17', 'Firefly'),
(114, 'MONSTER_FIRE_18', 'Caesar'),
(177, 'MONSTER_FIRE_19', 'Blaze'),
(11, 'MONSTER_FIRE_2', 'Mymmyween'),
(202, 'MONSTER_FIRE_20', 'Flibustus'),
(139, 'MONSTER_FIRE_21', 'Tempter'),
(147, 'MONSTER_FIRE_22', 'Hydra'),
(178, 'MONSTER_FIRE_23', 'Salute'),
(203, 'MONSTER_FIRE_24', 'Picaroon'),
(215, 'MONSTER_FIRE_25', 'Smoargh'),
(84, 'MONSTER_FIRE_3', 'Steampal'),
(137, 'MONSTER_FIRE_4', 'Incumus'),
(18, 'MONSTER_FIRE_5', 'Firepaw'),
(104, 'MONSTER_FIRE_6', 'Flamy'),
(112, 'MONSTER_FIRE_7', 'Phoby'),
(12, 'MONSTER_FIRE_8', 'Dummyween'),
(19, 'MONSTER_FIRE_9', 'Lavion'),
(161, 'MONSTER_FIRE_APR_1', 'Lagart'),
(162, 'MONSTER_FIRE_APR_2', 'Chimero'),
(222, 'MONSTER_FIRE_HOL_1', 'Cutiehat'),
(223, 'MONSTER_FIRE_HOL_2', 'Cloak'),
(224, 'MONSTER_FIRE_HOL_3', 'Witchan'),
(30, 'MONSTER_FIRE_JUN_1', 'Kokosun'),
(31, 'MONSTER_FIRE_JUN_2', 'Sunguin'),
(231, 'MONSTER_FIRE_JUN_3', 'Glimp'),
(232, 'MONSTER_FIRE_JUN_4', 'Ignis'),
(40, 'MONSTER_FIRE_LOV_1', 'Hellkite'),
(41, 'MONSTER_FIRE_LOV_2', 'Hellho'),
(42, 'MONSTER_FIRE_LOV_3', 'Hellpiep'),
(99, 'MONSTER_FIRE_NEXT_1', 'Hippfie'),
(100, 'MONSTER_FIRE_NEXT_2', 'Mick'),
(242, 'MONSTER_FIRE_SPR_1', 'Kitsun'),
(32, 'MONSTER_FIRE_XMAS_1', 'Glim'),
(208, 'MONSTER_FIRE_XMAS_2', 'Gathos'),
(33, 'MONSTER_FIRE_XMAS_3', 'Kobold'),
(209, 'MONSTER_FIRE_XMAS_4', 'Ahathul'),
(210, 'MONSTER_FIRE_XMAS_5', 'Centoleon'),
(1, 'MONSTER_WATER_1', 'Frogus'),
(131, 'MONSTER_WATER_10', 'Infalisk'),
(102, 'MONSTER_WATER_11', 'Mediaquian'),
(110, 'MONSTER_WATER_12', 'Dadachock'),
(127, 'MONSTER_WATER_13', 'Batoid'),
(132, 'MONSTER_WATER_14', 'Puerolisk'),
(135, 'MONSTER_WATER_15', 'Falhor'),
(144, 'MONSTER_WATER_16', 'Tentahat'),
(103, 'MONSTER_WATER_17', 'Underaquian'),
(111, 'MONSTER_WATER_18', 'Dadachum'),
(128, 'MONSTER_WATER_19', 'Mantari'),
(5, 'MONSTER_WATER_2', 'Dribble'),
(133, 'MONSTER_WATER_20', 'Basilisk'),
(136, 'MONSTER_WATER_21', 'Melhor'),
(145, 'MONSTER_WATER_22', 'Crystallhat'),
(230, 'MONSTER_WATER_23', 'Armorank'),
(238, 'MONSTER_WATER_24', 'Neptune'),
(241, 'MONSTER_WATER_25', 'Leviathan'),
(7, 'MONSTER_WATER_3', 'Spiritus'),
(101, 'MONSTER_WATER_4', 'Overaquian'),
(2, 'MONSTER_WATER_5', 'Frogissimo'),
(6, 'MONSTER_WATER_6', 'Sprinkle'),
(8, 'MONSTER_WATER_7', 'Kelpie'),
(143, 'MONSTER_WATER_8', 'Jellyhat'),
(134, 'MONSTER_WATER_9', 'Minor'),
(79, 'MONSTER_WATER_APR_1', 'Lilly'),
(80, 'MONSTER_WATER_APR_2', 'Lotty'),
(81, 'MONSTER_WATER_APR_3', 'Lasvador'),
(47, 'MONSTER_WATER_HOL_1', 'Snorkly'),
(48, 'MONSTER_WATER_HOL_2', 'Divie'),
(173, 'MONSTER_WATER_JUN_1', 'Seamianti'),
(174, 'MONSTER_WATER_JUN_2', 'Martigra'),
(175, 'MONSTER_WATER_JUN_3', 'Manateecor'),
(25, 'MONSTER_WATER_LOV_1', 'Phibie'),
(26, 'MONSTER_WATER_LOV_2', 'Amphibie'),
(97, 'MONSTER_WATER_LOV_3', 'Nagapet'),
(98, 'MONSTER_WATER_LOV_4', 'Naga'),
(236, 'MONSTER_WATER_NEXT_1', 'Mousea'),
(237, 'MONSTER_WATER_NEXT_2', 'Plesio'),
(82, 'MONSTER_WATER_SPR_1', 'Peligard'),
(83, 'MONSTER_WATER_SPR_2', 'Costgard'),
(120, 'MONSTER_WATER_WIN_1', 'Frosty'),
(121, 'MONSTER_WATER_WIN_2', 'Toady'),
(71, 'MONSTER_WATER_XMAS_1', 'Snowy'),
(187, 'MONSTER_WATER_XMAS_2', 'Snowflake'),
(72, 'MONSTER_WATER_XMAS_3', 'Snowcliff'),
(73, 'MONSTER_WATER_XMAS_4', 'Snowcrag'),
(188, 'MONSTER_WATER_XMAS_5', 'Frostmaiden'),
(20, 'MONSTER_WIND_1', 'SunTzi'),
(88, 'MONSTER_WIND_10', 'Windance'),
(179, 'MONSTER_WIND_11', 'Infird'),
(148, 'MONSTER_WIND_12', 'Undine'),
(141, 'MONSTER_WIND_13', 'Aerycorn'),
(116, 'MONSTER_WIND_14', 'Phantomo'),
(198, 'MONSTER_WIND_15', 'Cheshir'),
(89, 'MONSTER_WIND_16', 'Mushtopia'),
(107, 'MONSTER_WIND_17', 'Harpy'),
(117, 'MONSTER_WIND_18', 'Ghostus'),
(180, 'MONSTER_WIND_19', 'Puerogryph'),
(13, 'MONSTER_WIND_2', 'Earbat'),
(199, 'MONSTER_WIND_20', 'Pillowcat'),
(142, 'MONSTER_WIND_21', 'Hippofly'),
(149, 'MONSTER_WIND_22', 'Stormdine'),
(181, 'MONSTER_WIND_23', 'Gryphon'),
(200, 'MONSTER_WIND_24', 'Bajun'),
(216, 'MONSTER_WIND_25', 'Charybdis'),
(87, 'MONSTER_WIND_3', 'Shroomy'),
(140, 'MONSTER_WIND_4', 'Fluffycorn'),
(21, 'MONSTER_WIND_5', 'Airver'),
(106, 'MONSTER_WIND_6', 'Gamayun'),
(115, 'MONSTER_WIND_7', 'Spooky'),
(14, 'MONSTER_WIND_8', 'Earaught'),
(22, 'MONSTER_WIND_9', 'Eskimo'),
(122, 'MONSTER_WIND_APR_1', 'Cony'),
(123, 'MONSTER_WIND_APR_2', 'Bunny'),
(124, 'MONSTER_WIND_APR_3', 'Lapin'),
(153, 'MONSTER_WIND_HOL_1', 'Owlling'),
(154, 'MONSTER_WIND_HOL_2', 'Owliana'),
(77, 'MONSTER_WIND_JUN_1', 'Cyclodilly'),
(78, 'MONSTER_WIND_JUN_2', 'Alleviator'),
(36, 'MONSTER_WIND_LOV_1', 'Rabby'),
(37, 'MONSTER_WIND_LOV_2', 'Harecloud'),
(9, 'MONSTER_WIND_LOV_3', 'Marshy'),
(10, 'MONSTER_WIND_LOV_4', 'Claumbet'),
(233, 'MONSTER_WIND_LOV_5', 'Keeper'),
(51, 'MONSTER_WIND_NEXT_1', 'Mothy'),
(52, 'MONSTER_WIND_NEXT_2', 'Yggy'),
(38, 'MONSTER_WIND_SPR_1', 'Chamuito'),
(39, 'MONSTER_WIND_SPR_2', 'Dinotto'),
(150, 'MONSTER_WIND_WIN_1', 'Blu'),
(151, 'MONSTER_WIND_WIN_2', 'Aquablu'),
(152, 'MONSTER_WIND_WIN_3', 'Ultrablu'),
(225, 'MONSTER_WIND_WIN_4', 'Slinky'),
(226, 'MONSTER_WIND_WIN_5', 'Garlant'),
(163, 'MONSTER_WIND_XMAS_1', 'Frigan'),
(189, 'MONSTER_WIND_XMAS_2', 'Glidy'),
(164, 'MONSTER_WIND_XMAS_3', 'Tonnir'),
(190, 'MONSTER_WIND_XMAS_4', 'Furglide'),
(165, 'MONSTER_WIND_XMAS_5', 'Ronolph'),
(191, 'MONSTER_WIND_XMAS_6', 'Arimasp');

-- --------------------------------------------------------

--
-- Structure de la table `gyms`
--

CREATE TABLE `gyms` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `team` int(2) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `libs`
--

CREATE TABLE `libs` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `team` int(2) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `players`
--

CREATE TABLE `players` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `team` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `spots`
--

CREATE TABLE `spots` (
  `spotid` int(6) UNSIGNED NOT NULL,
  `creature` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cp` int(6) NOT NULL,
  `iv` int(3) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `good` int(3) NOT NULL,
  `bad` int(1) NOT NULL,
  `spotter` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stops`
--

CREATE TABLE `stops` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `questby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` int(6) NOT NULL,
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`id`, `name`) VALUES
(1, 'Uncontested'),
(2, 'Blue Order'),
(3, 'Red Order');

-- --------------------------------------------------------

--
-- Structure de la table `usergroup`
--

CREATE TABLE `usergroup` (
  `id` int(10) NOT NULL,
  `groupname` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `usergroup`
--

INSERT INTO `usergroup` (`id`, `groupname`) VALUES
(1, 'basic'),
(2, 'pro'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `upass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usergroup` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `trn_date` datetime NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpload` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `offtrades` int(9) NOT NULL,
  `reqtrades` int(9) NOT NULL,
  `registered` datetime NOT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default_avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `uname`, `upass`, `usergroup`, `trn_date`, `url`, `lastUpload`, `offtrades`, `reqtrades`, `registered`, `avatar`) VALUES
(1, 'demo@demo.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '3', '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', 'default_avatar.png');

-- --------------------------------------------------------

--
-- Structure de la table `user_like`
--

CREATE TABLE `user_like` (
  `id` int(11) NOT NULL,
  `spot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bestiary`
--
ALTER TABLE `bestiary`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD UNIQUE KEY `latitude` (`latitude`) USING BTREE,
  ADD UNIQUE KEY `longitude` (`longitude`) USING BTREE;

--
-- Index pour la table `libs`
--
ALTER TABLE `libs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD UNIQUE KEY `longitude` (`longitude`) USING BTREE,
  ADD UNIQUE KEY `latitude` (`latitude`) USING BTREE;

--
-- Index pour la table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `latitude` (`latitude`) USING BTREE,
  ADD UNIQUE KEY `longitude` (`longitude`) USING BTREE;

--
-- Index pour la table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`spotid`);

--
-- Index pour la table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD UNIQUE KEY `latitude` (`latitude`) USING BTREE,
  ADD UNIQUE KEY `longitude` (`longitude`) USING BTREE;

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `usergroup`
--
ALTER TABLE `usergroup`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_like`
--
ALTER TABLE `user_like`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `gyms`
--
ALTER TABLE `gyms`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `libs`
--
ALTER TABLE `libs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spots`
--
ALTER TABLE `spots`
  MODIFY `spotid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stops`
--
ALTER TABLE `stops`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `usergroup`
--
ALTER TABLE `usergroup`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user_like`
--
ALTER TABLE `user_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
