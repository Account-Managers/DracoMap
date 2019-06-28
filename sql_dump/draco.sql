-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 02 jan. 2019 à 21:27
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
-- Base de données :  `draco`
--

-- --------------------------------------------------------

--
-- Structure de la table `gyms`
--

CREATE TABLE `gyms` (
  `gid` int(6) UNSIGNED NOT NULL,
  `gname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `glatitude` decimal(10,6) NOT NULL,
  `glongitude` decimal(10,6) NOT NULL,
  `gteam` int(2) NOT NULL,
  `actraid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actboss` int(3) DEFAULT NULL,
  `hour` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `min` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `ampm` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `egg` int(1) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `eggby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `teamby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `raidby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `exraid` int(1) NOT NULL,
  `exraiddate` datetime DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pokedex`
--

CREATE TABLE `pokedex` (
  `gid` int(6) UNSIGNED NOT NULL,
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `monster` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `pokedex`
--

INSERT INTO `pokedex` (`gid`, `id`, `monster`) VALUES
(1, 'MONSTER_WATER_1', 'Frogus'),
(2, 'MONSTER_WATER_5', 'Frogissimo'),
(3, 'MONSTER_EARTH_1', 'Berrydillo'),
(4, 'MONSTER_EARTH_5', 'Shamurf'),
(5, 'MONSTER_WATER_2', 'Dribble'),
(6, 'MONSTER_WATER_6', 'Sprinkle'),
(7, 'MONSTER_WATER_3', 'Spiritus'),
(8, 'MONSTER_WATER_7', 'Kelpie'),
(9, 'MONSTER_WIND_LOV_3', 'Marshy'),
(10, 'MONSTER_WIND_LOV_4', 'Claumbet'),
(11, 'MONSTER_FIRE_2', 'Mymmyween'),
(12, 'MONSTER_FIRE_8', 'Dummyween'),
(13, 'MONSTER_WIND_2', 'Earbat'),
(14, 'MONSTER_WIND_8', 'Earaught'),
(15, 'MONSTER_DUNGEON_2', 'Axolan'),
(16, 'MONSTER_DUNGEON_8', 'Grandalotl'),
(17, 'MONSTER_FIRE_1', 'Potty'),
(18, 'MONSTER_FIRE_5', 'Firepaw'),
(19, 'MONSTER_FIRE_9', 'Lavion'),
(20, 'MONSTER_WIND_1', 'SunTzi'),
(21, 'MONSTER_WIND_5', 'Airver'),
(22, 'MONSTER_WIND_9', 'Eskimo'),
(23, 'MONSTER_DUNGEON_3', 'Spikeback'),
(24, 'MONSTER_DUNGEON_9', 'Scarecrow'),
(25, 'MONSTER_WATER_LOV_1', 'Phibie'),
(26, 'MONSTER_WATER_LOV_2', 'Amphibie'),
(27, 'MONSTER_DUNGEON_1', 'Rookie'),
(28, 'MONSTER_DUNGEON_7', 'Marid'),
(29, 'MONSTER_DUNGEON_11', 'Genie'),
(30, 'MONSTER_FIRE_JUN_1', 'Kokosun'),
(31, 'MONSTER_FIRE_JUN_2', 'Sunguin'),
(32, 'MONSTER_FIRE_XMAS_1', 'Glim'),
(33, 'MONSTER_FIRE_XMAS_3', 'Kobold'),
(34, 'MONSTER_DUNGEON_NEXT_4', 'Raphy'),
(35, 'MONSTER_DUNGEON_NEXT_5', 'Wolfshroom'),
(36, 'MONSTER_WIND_LOV_1', 'Rabby'),
(37, 'MONSTER_WIND_LOV_2', 'Harecloud'),
(38, 'MONSTER_WIND_SPR_1', 'Chamuito'),
(39, 'MONSTER_WIND_SPR_2', 'Dinotto'),
(40, 'MONSTER_FIRE_LOV_1', 'Hellkite'),
(41, 'MONSTER_FIRE_LOV_2', 'Hellho'),
(42, 'MONSTER_FIRE_LOV_3', 'Hellpiep'),
(43, 'MONSTER_EARTH_JUN_1', 'Pugberry'),
(44, 'MONSTER_EARTH_JUN_2', 'Kerberos'),
(45, 'MONSTER_EARTH_XMAS_2', 'Stumpy'),
(46, 'MONSTER_EARTH_XMAS_4', 'Drout'),
(47, 'MONSTER_WATER_HOL_1', 'Snorkly'),
(48, 'MONSTER_WATER_HOL_2', 'Divie'),
(49, 'MONSTER_EARTH_NEXT_1', 'Beanie'),
(50, 'MONSTER_EARTH_NEXT_2', 'Frutucan'),
(51, 'MONSTER_WIND_NEXT_1', 'Mothy'),
(52, 'MONSTER_WIND_NEXT_2', 'Yggy'),
(53, 'MONSTER_DUNGEON_HOL_1', 'Zizzi'),
(54, 'MONSTER_DUNGEON_HOL_2', 'Zuzzu'),
(55, 'MONSTER_EARTH_LOV_1', 'Peagolin'),
(56, 'MONSTER_EARTH_LOV_2', 'Dodosaur'),
(57, 'MONSTER_EARTH_9', 'Bellflow'),
(58, 'MONSTER_EARTH_17', 'Dwantflow'),
(59, 'MONSTER_EARTH_4', 'Brownie'),
(60, 'MONSTER_EARTH_12', 'Brag'),
(61, 'MONSTER_EARTH_18', 'Chappian'),
(62, 'MONSTER_EARTH_APR_1', 'Irislyn'),
(63, 'MONSTER_EARTH_APR_2', 'Clawbloom'),
(64, 'MONSTER_DUNGEON_LOV_3', 'Grempie'),
(65, 'MONSTER_DUNGEON_LOV_4', 'Gremler'),
(66, 'MONSTER_EARTH_2', 'Flowy'),
(67, 'MONSTER_EARTH_7', 'Plantic'),
(68, 'MONSTER_EARTH_19', 'Gardrag'),
(69, 'MONSTER_DUNGEON_WIN_1', 'Blosstopus'),
(70, 'MONSTER_DUNGEON_WIN_2', 'Florantul'),
(71, 'MONSTER_WATER_XMAS_1', 'Snowy'),
(72, 'MONSTER_WATER_XMAS_3', 'Snowcliff'),
(73, 'MONSTER_WATER_XMAS_4', 'Snowcrag'),
(74, 'MONSTER_EARTH_3', 'Leaflet'),
(75, 'MONSTER_EARTH_6', 'Dryad'),
(76, 'MONSTER_EARTH_20', 'Twigo'),
(77, 'MONSTER_WIND_JUN_1', 'Cyclodilly'),
(78, 'MONSTER_WIND_JUN_2', 'Alleviator'),
(79, 'MONSTER_WATER_APR_1', 'Lilly'),
(80, 'MONSTER_WATER_APR_2', 'Lotty'),
(81, 'MONSTER_WATER_APR_3', 'Lasvador'),
(82, 'MONSTER_WATER_SPR_1', 'Peligard'),
(83, 'MONSTER_WATER_SPR_2', 'Costgard'),
(84, 'MONSTER_FIRE_3', 'Steampal'),
(85, 'MONSTER_FIRE_10', 'Helsailor'),
(86, 'MONSTER_FIRE_16', 'Ironguy'),
(87, 'MONSTER_WIND_3', 'Shroomy'),
(88, 'MONSTER_WIND_10', 'Windance'),
(89, 'MONSTER_WIND_16', 'Mushtopia'),
(90, 'MONSTER_EARTH_13', 'Princie'),
(91, 'MONSTER_EARTH_21', 'Earthborn'),
(92, 'MONSTER_EARTH_10', 'Acornling'),
(93, 'MONSTER_EARTH_14', 'Hopbear'),
(94, 'MONSTER_EARTH_22', 'Parabeast'),
(95, 'MONSTER_DUNGEON_JUN_1', 'Crabby'),
(96, 'MONSTER_DUNGEON_JUN_2', 'Craboss'),
(97, 'MONSTER_WATER_LOV_3', 'Nagapet'),
(98, 'MONSTER_WATER_LOV_4', 'Naga'),
(99, 'MONSTER_FIRE_NEXT_1', 'Hippfie'),
(100, 'MONSTER_FIRE_NEXT_2', 'Mick'),
(101, 'MONSTER_WATER_4', 'Overaquian'),
(102, 'MONSTER_WATER_11', 'Mediaquian'),
(103, 'MONSTER_WATER_17', 'Underaquian'),
(104, 'MONSTER_FIRE_6', 'Flamy'),
(105, 'MONSTER_FIRE_17', 'Firefly'),
(106, 'MONSTER_WIND_6', 'Gamayun'),
(107, 'MONSTER_WIND_17', 'Harpy'),
(108, 'MONSTER_DUNGEON_APR_1', 'Chep'),
(109, 'MONSTER_DUNGEON_APR_2', 'Gob'),
(110, 'MONSTER_WATER_12', 'Dadachock'),
(111, 'MONSTER_WATER_18', 'Dadachum'),
(112, 'MONSTER_FIRE_7', 'Phoby'),
(113, 'MONSTER_FIRE_14', 'Phoenix'),
(114, 'MONSTER_FIRE_18', 'Caesar'),
(115, 'MONSTER_WIND_7', 'Spooky'),
(116, 'MONSTER_WIND_14', 'Phantomo'),
(117, 'MONSTER_WIND_18', 'Ghostus'),
(118, 'MONSTER_DUNGEON_12', 'Vampiro'),
(119, 'MONSTER_DUNGEON_18', 'Dracool'),
(120, 'MONSTER_WATER_WIN_1', 'Frosty'),
(121, 'MONSTER_WATER_WIN_2', 'Toady'),
(122, 'MONSTER_WIND_APR_1', 'Cony'),
(123, 'MONSTER_WIND_APR_2', 'Bunny'),
(124, 'MONSTER_WIND_APR_3', 'Lapin'),
(125, 'MONSTER_DUNGEON_LOV_1', 'Nimblo'),
(126, 'MONSTER_DUNGEON_LOV_2', 'Crysbee'),
(127, 'MONSTER_WATER_13', 'Batoid'),
(128, 'MONSTER_WATER_19', 'Mantari'),
(129, 'MONSTER_DUNGEON_13', 'Advise'),
(130, 'MONSTER_DUNGEON_19', 'Absolerm'),
(131, 'MONSTER_WATER_10', 'Infalisk'),
(132, 'MONSTER_WATER_14', 'Puerolisk'),
(133, 'MONSTER_WATER_20', 'Basilisk'),
(134, 'MONSTER_WATER_9', 'Minor'),
(135, 'MONSTER_WATER_15', 'Falhor'),
(136, 'MONSTER_WATER_21', 'Melhor'),
(137, 'MONSTER_FIRE_4', 'Incumus'),
(138, 'MONSTER_FIRE_13', 'Daemonstar'),
(139, 'MONSTER_FIRE_21', 'Tempter'),
(140, 'MONSTER_WIND_4', 'Fluffycorn'),
(141, 'MONSTER_WIND_13', 'Aerycorn'),
(142, 'MONSTER_WIND_21', 'Hippofly'),
(143, 'MONSTER_WATER_8', 'Jellyhat'),
(144, 'MONSTER_WATER_16', 'Tentahat'),
(145, 'MONSTER_WATER_22', 'Crystallhat'),
(146, 'MONSTER_FIRE_12', 'Kiddra'),
(147, 'MONSTER_FIRE_22', 'Hydra'),
(148, 'MONSTER_WIND_12', 'Undine'),
(149, 'MONSTER_WIND_22', 'Stormdine'),
(150, 'MONSTER_WIND_WIN_1', 'Blu'),
(151, 'MONSTER_WIND_WIN_2', 'Aquablu'),
(152, 'MONSTER_WIND_WIN_3', 'Ultrablu'),
(153, 'MONSTER_WIND_HOL_1', 'Owlling'),
(154, 'MONSTER_WIND_HOL_2', 'Owliana'),
(155, 'MONSTER_EARTH_WIN_1', 'Bako'),
(156, 'MONSTER_EARTH_WIN_2', 'Eloko'),
(157, 'MONSTER_EARTH_WIN_3', 'Sylvan'),
(158, 'MONSTER_DUNGEON_SPR_1', 'Phanty'),
(159, 'MONSTER_DUNGEON_SPR_2', 'Phantifurry'),
(160, 'MONSTER_DUNGEON_SPR_3', 'Phanticora'),
(161, 'MONSTER_FIRE_APR_1', 'Lagart'),
(162, 'MONSTER_FIRE_APR_2', 'Chimero'),
(163, 'MONSTER_WIND_XMAS_1', 'Frigan'),
(164, 'MONSTER_WIND_XMAS_3', 'Tonnir'),
(165, 'MONSTER_WIND_XMAS_5', 'Ronolph'),
(166, 'MONSTER_EARTH_11', 'Phylo'),
(167, 'MONSTER_EARTH_15', 'Dao'),
(168, 'MONSTER_EARTH_23', 'Yogi'),
(169, 'MONSTER_DUNGEON_XMAS_1', 'Bogy'),
(170, 'MONSTER_DUNGEON_XMAS_2', 'Clurichaun'),
(171, 'MONSTER_DUNGEON_XMAS_4', 'Leprechaun'),
(172, 'MONSTER_DUNGEON_XMAS_5', 'Boogeyman'),
(173, 'MONSTER_WATER_JUN_1', 'Seamianti'),
(174, 'MONSTER_WATER_JUN_2', 'Martigra'),
(175, 'MONSTER_WATER_JUN_3', 'Manateecor'),
(176, 'MONSTER_FIRE_11', 'Spark'),
(177, 'MONSTER_FIRE_19', 'Blaze'),
(178, 'MONSTER_FIRE_23', 'Salute'),
(179, 'MONSTER_WIND_11', 'Infird'),
(180, 'MONSTER_WIND_19', 'Puerogryph'),
(181, 'MONSTER_WIND_23', 'Gryphon'),
(182, 'MONSTER_EARTH_8', 'Disguir'),
(183, 'MONSTER_EARTH_16', 'Troll'),
(184, 'MONSTER_EARTH_24', 'Grendel'),
(185, 'MONSTER_DUNGEON_XMAS_3', 'Santus'),
(186, 'MONSTER_DUNGEON_XMAS_6', 'Craus'),
(187, 'MONSTER_WATER_XMAS_2', 'Snowflake'),
(188, 'MONSTER_WATER_XMAS_5', 'Frostmaiden'),
(189, 'MONSTER_WIND_XMAS_2', 'Glidy'),
(190, 'MONSTER_WIND_XMAS_4', 'Furglide'),
(191, 'MONSTER_WIND_XMAS_6', 'Arimasp'),
(192, 'MONSTER_EARTH_XMAS_1', 'Wooly'),
(193, 'MONSTER_EARTH_XMAS_3', 'Yeti'),
(194, 'MONSTER_DUNGEON_6', 'Rosie'),
(195, 'MONSTER_DUNGEON_16', 'Softail'),
(196, 'MONSTER_DUNGEON_21', 'Sharptail'),
(197, 'MONSTER_DUNGEON_22', 'Rosebud'),
(198, 'MONSTER_WIND_15', 'Cheshir'),
(199, 'MONSTER_WIND_20', 'Pillowcat'),
(200, 'MONSTER_WIND_24', 'Bajun'),
(201, 'MONSTER_FIRE_15', 'Needlehot'),
(202, 'MONSTER_FIRE_20', 'Flibustus'),
(203, 'MONSTER_FIRE_24', 'Picaroon'),
(204, 'MONSTER_DUNGEON_4', 'Magglad'),
(205, 'MONSTER_DUNGEON_10', 'Snailyn'),
(206, 'MONSTER_DUNGEON_15', 'Twist'),
(207, 'MONSTER_DUNGEON_23', 'Curly'),
(208, 'MONSTER_FIRE_XMAS_2', 'Gathos'),
(209, 'MONSTER_FIRE_XMAS_4', 'Ahathul'),
(210, 'MONSTER_FIRE_XMAS_5', 'Centoleon'),
(211, 'MONSTER_EARTH_LOV_3', 'Minitaur'),
(212, 'MONSTER_EARTH_LOV_4', 'Teenotaur'),
(213, 'MONSTER_EARTH_LOV_5', 'Megataurus'),
(214, 'MONSTER_EARTH_LOV_6', 'Dragotaurus'),
(215, 'MONSTER_FIRE_25', 'Smoargh'),
(216, 'MONSTER_WIND_25', 'Charybdis'),
(217, 'MONSTER_EARTH_25', 'Scylla'),
(218, 'MONSTER_DUNGEON_5', 'Cuticat'),
(219, 'MONSTER_DUNGEON_14', 'Mantikid'),
(220, 'MONSTER_DUNGEON_20', 'Tigermant'),
(221, 'MONSTER_DUNGEON_24', 'Manticore'),
(222, 'MONSTER_FIRE_HOL_1', 'Cutiehat'),
(223, 'MONSTER_FIRE_HOL_2', 'Cloak'),
(224, 'MONSTER_FIRE_HOL_3', 'Witchan'),
(225, 'MONSTER_WIND_WIN_4', 'Slinky'),
(226, 'MONSTER_WIND_WIN_5', 'Garlant'),
(227, 'MONSTER_DUNGEON_NEXT_1', 'Satyrus'),
(228, 'MONSTER_DUNGEON_NEXT_2', 'Silenus'),
(229, 'MONSTER_DUNGEON_NEXT_3', 'Dionus'),
(230, 'MONSTER_WATER_23', 'Armorank'),
(231, 'MONSTER_FIRE_JUN_3', 'Glimp'),
(232, 'MONSTER_FIRE_JUN_4', 'Ignis'),
(233, 'MONSTER_WIND_LOV_5', 'Keeper'),
(234, 'MONSTER_DUNGEON_17', 'Inur'),
(235, 'MONSTER_DUNGEON_25', 'Morgoroth'),
(236, 'MONSTER_WATER_NEXT_1', 'Mousea'),
(237, 'MONSTER_WATER_NEXT_2', 'Plesio'),
(238, 'MONSTER_WATER_24', 'Neptune'),
(239, 'MONSTER_EARTH_SPR_1', 'Seedo'),
(240, 'MONSTER_EARTH_SPR_2', 'Dandeliosaur'),
(241, 'MONSTER_WATER_25', 'Leviathan'),
(242, 'MONSTER_FIRE_SPR_1', 'Kitsun'),
(243, 'MONSTER_FIRE_SPR_2', 'Nogitsun'),
(244, 'MONSTER_EARTH_VIRAL', 'Kingpeat'),
(245, 'CHEST', 'Chest');

-- --------------------------------------------------------

--
-- Structure de la table `spots`
--

CREATE TABLE `spots` (
  `spotid` int(6) UNSIGNED NOT NULL,
  `pokemon` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cp` int(6) NOT NULL,
  `iv` int(3) NOT NULL,
  `hour` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `min` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `ampm` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fulladdress` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `good` int(3) NOT NULL,
  `bad` int(1) NOT NULL,
  `spotter` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stops`
--

CREATE TABLE `stops` (
  `sid` int(6) UNSIGNED NOT NULL,
  `sname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slatitude` decimal(10,6) NOT NULL,
  `slongitude` decimal(10,6) NOT NULL,
  `quested` int(1) NOT NULL,
  `actquest` int(3) NOT NULL,
  `actreward` int(3) NOT NULL,
  `hour` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `min` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `ampm` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `lured` int(1) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `questby` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `tid` int(6) NOT NULL,
  `tname` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`tid`, `tname`) VALUES
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
-- Index pour la table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`gid`),
  ADD UNIQUE KEY `gname` (`gname`),
  ADD UNIQUE KEY `glatitude` (`glatitude`),
  ADD UNIQUE KEY `glongitude` (`glongitude`);

--
-- Index pour la table `pokedex`
--
ALTER TABLE `pokedex`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`spotid`);

--
-- Index pour la table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `sname` (`sname`),
  ADD UNIQUE KEY `slatitude` (`slatitude`),
  ADD UNIQUE KEY `slongitude` (`slongitude`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`tid`);

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
  MODIFY `gid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spots`
--
ALTER TABLE `spots`
  MODIFY `spotid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stops`
--
ALTER TABLE `stops`
  MODIFY `sid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

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
