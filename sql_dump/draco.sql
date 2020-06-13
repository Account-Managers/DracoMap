-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 13 juin 2020 à 21:00
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
(253, 'CHEST', 'Chest'),
(29, 'MONSTER_DUNGEON_1', 'Rookie'),
(213, 'MONSTER_DUNGEON_10', 'Snailyn'),
(31, 'MONSTER_DUNGEON_11', 'Genie'),
(122, 'MONSTER_DUNGEON_12', 'Vampiro'),
(134, 'MONSTER_DUNGEON_13', 'Advise'),
(227, 'MONSTER_DUNGEON_14', 'Mantikid'),
(214, 'MONSTER_DUNGEON_15', 'Twist'),
(203, 'MONSTER_DUNGEON_16', 'Softail'),
(242, 'MONSTER_DUNGEON_17', 'Inur'),
(123, 'MONSTER_DUNGEON_18', 'Dracool'),
(135, 'MONSTER_DUNGEON_19', 'Absolerm'),
(15, 'MONSTER_DUNGEON_2', 'Axolan'),
(228, 'MONSTER_DUNGEON_20', 'Tigermant'),
(204, 'MONSTER_DUNGEON_21', 'Sharptail'),
(205, 'MONSTER_DUNGEON_22', 'Rosebud'),
(215, 'MONSTER_DUNGEON_23', 'Curly'),
(229, 'MONSTER_DUNGEON_24', 'Manticore'),
(243, 'MONSTER_DUNGEON_25', 'Morgoroth'),
(23, 'MONSTER_DUNGEON_3', 'Spikeback'),
(212, 'MONSTER_DUNGEON_4', 'Magglad'),
(226, 'MONSTER_DUNGEON_5', 'Cuticat'),
(202, 'MONSTER_DUNGEON_6', 'Rosie'),
(30, 'MONSTER_DUNGEON_7', 'Marid'),
(16, 'MONSTER_DUNGEON_8', 'Grandalotl'),
(24, 'MONSTER_DUNGEON_9', 'Scarecrow'),
(112, 'MONSTER_DUNGEON_APR_1', 'Chep'),
(113, 'MONSTER_DUNGEON_APR_2', 'Gob'),
(42, 'MONSTER_DUNGEON_FOX_1', 'Indigofox'),
(56, 'MONSTER_DUNGEON_HOL_1', 'Zizzi'),
(57, 'MONSTER_DUNGEON_HOL_2', 'Zuzzu'),
(99, 'MONSTER_DUNGEON_JUN_1', 'Crabby'),
(100, 'MONSTER_DUNGEON_JUN_2', 'Craboss'),
(129, 'MONSTER_DUNGEON_LOV_1', 'Nimblo'),
(130, 'MONSTER_DUNGEON_LOV_2', 'Crysbee'),
(67, 'MONSTER_DUNGEON_LOV_3', 'Grempie'),
(68, 'MONSTER_DUNGEON_LOV_4', 'Gremler'),
(235, 'MONSTER_DUNGEON_NEXT_1', 'Satyrus'),
(236, 'MONSTER_DUNGEON_NEXT_2', 'Silenus'),
(237, 'MONSTER_DUNGEON_NEXT_3', 'Dionus'),
(36, 'MONSTER_DUNGEON_NEXT_4', 'Raphy'),
(37, 'MONSTER_DUNGEON_NEXT_5', 'Wolfshroom'),
(163, 'MONSTER_DUNGEON_SPR_1', 'Phanty'),
(164, 'MONSTER_DUNGEON_SPR_2', 'Phantifurry'),
(165, 'MONSTER_DUNGEON_SPR_3', 'Phanticora'),
(72, 'MONSTER_DUNGEON_WIN_1', 'Blosstopus'),
(73, 'MONSTER_DUNGEON_WIN_2', 'Florantul'),
(176, 'MONSTER_DUNGEON_XMAS_1', 'Bogy'),
(177, 'MONSTER_DUNGEON_XMAS_2', 'Clurichaun'),
(192, 'MONSTER_DUNGEON_XMAS_3', 'Santus'),
(178, 'MONSTER_DUNGEON_XMAS_4', 'Leprechaun'),
(179, 'MONSTER_DUNGEON_XMAS_5', 'Boogeyman'),
(193, 'MONSTER_DUNGEON_XMAS_6', 'Craus'),
(3, 'MONSTER_EARTH_1', 'Berrydillo'),
(96, 'MONSTER_EARTH_10', 'Acornling'),
(171, 'MONSTER_EARTH_11', 'Phylo'),
(63, 'MONSTER_EARTH_12', 'Brag'),
(93, 'MONSTER_EARTH_13', 'Princie'),
(97, 'MONSTER_EARTH_14', 'Hopbear'),
(172, 'MONSTER_EARTH_15', 'Dao'),
(190, 'MONSTER_EARTH_16', 'Troll'),
(61, 'MONSTER_EARTH_17', 'Dwantflow'),
(64, 'MONSTER_EARTH_18', 'Chappian'),
(71, 'MONSTER_EARTH_19', 'Gardrag'),
(69, 'MONSTER_EARTH_2', 'Flowy'),
(79, 'MONSTER_EARTH_20', 'Twigo'),
(94, 'MONSTER_EARTH_21', 'Earthborn'),
(98, 'MONSTER_EARTH_22', 'Parabeast'),
(173, 'MONSTER_EARTH_23', 'Yogi'),
(191, 'MONSTER_EARTH_24', 'Grendel'),
(225, 'MONSTER_EARTH_25', 'Scylla'),
(77, 'MONSTER_EARTH_3', 'Leaflet'),
(62, 'MONSTER_EARTH_4', 'Brownie'),
(4, 'MONSTER_EARTH_5', 'Shamurf'),
(78, 'MONSTER_EARTH_6', 'Dryad'),
(70, 'MONSTER_EARTH_7', 'Plantic'),
(189, 'MONSTER_EARTH_8', 'Disguir'),
(60, 'MONSTER_EARTH_9', 'Bellflow'),
(65, 'MONSTER_EARTH_APR_1', 'Irislyn'),
(66, 'MONSTER_EARTH_APR_2', 'Clawbloom'),
(131, 'MONSTER_EARTH_FOX_1', 'Grassfox'),
(175, 'MONSTER_EARTH_FOX_2', 'Steelfox'),
(46, 'MONSTER_EARTH_JUN_1', 'Pugberry'),
(47, 'MONSTER_EARTH_JUN_2', 'Kerberos'),
(58, 'MONSTER_EARTH_LOV_1', 'Peagolin'),
(59, 'MONSTER_EARTH_LOV_2', 'Dodosaur'),
(219, 'MONSTER_EARTH_LOV_3', 'Minitaur'),
(220, 'MONSTER_EARTH_LOV_4', 'Teenotaur'),
(221, 'MONSTER_EARTH_LOV_5', 'Megataurus'),
(222, 'MONSTER_EARTH_LOV_6', 'Dragotaurus'),
(52, 'MONSTER_EARTH_NEXT_1', 'Beanie'),
(53, 'MONSTER_EARTH_NEXT_2', 'Frutucan'),
(247, 'MONSTER_EARTH_SPR_1', 'Seedo'),
(248, 'MONSTER_EARTH_SPR_2', 'Dandeliosaur'),
(252, 'MONSTER_EARTH_VIRAL', 'Kingpeat'),
(160, 'MONSTER_EARTH_WIN_1', 'Bako'),
(161, 'MONSTER_EARTH_WIN_2', 'Eloko'),
(162, 'MONSTER_EARTH_WIN_3', 'Sylvan'),
(200, 'MONSTER_EARTH_XMAS_1', 'Wooly'),
(48, 'MONSTER_EARTH_XMAS_2', 'Stumpy'),
(201, 'MONSTER_EARTH_XMAS_3', 'Yeti'),
(49, 'MONSTER_EARTH_XMAS_4', 'Drout'),
(17, 'MONSTER_FIRE_1', 'Potty'),
(88, 'MONSTER_FIRE_10', 'Helsailor'),
(183, 'MONSTER_FIRE_11', 'Spark'),
(151, 'MONSTER_FIRE_12', 'Kiddra'),
(143, 'MONSTER_FIRE_13', 'Daemonstar'),
(117, 'MONSTER_FIRE_14', 'Phoenix'),
(209, 'MONSTER_FIRE_15', 'Needlehot'),
(89, 'MONSTER_FIRE_16', 'Ironguy'),
(109, 'MONSTER_FIRE_17', 'Firefly'),
(118, 'MONSTER_FIRE_18', 'Caesar'),
(184, 'MONSTER_FIRE_19', 'Blaze'),
(11, 'MONSTER_FIRE_2', 'Mymmyween'),
(210, 'MONSTER_FIRE_20', 'Flibustus'),
(144, 'MONSTER_FIRE_21', 'Tempter'),
(152, 'MONSTER_FIRE_22', 'Hydra'),
(185, 'MONSTER_FIRE_23', 'Salute'),
(211, 'MONSTER_FIRE_24', 'Picaroon'),
(223, 'MONSTER_FIRE_25', 'Smoargh'),
(87, 'MONSTER_FIRE_3', 'Steampal'),
(142, 'MONSTER_FIRE_4', 'Incumus'),
(18, 'MONSTER_FIRE_5', 'Firepaw'),
(108, 'MONSTER_FIRE_6', 'Flamy'),
(116, 'MONSTER_FIRE_7', 'Phoby'),
(12, 'MONSTER_FIRE_8', 'Dummyween'),
(19, 'MONSTER_FIRE_9', 'Lavion'),
(166, 'MONSTER_FIRE_APR_1', 'Lagart'),
(167, 'MONSTER_FIRE_APR_2', 'Chimero'),
(27, 'MONSTER_FIRE_FOX_1', 'Flamefox'),
(95, 'MONSTER_FIRE_FOX_2', 'Tomatofox'),
(194, 'MONSTER_FIRE_FOX_3', 'Goldenfox'),
(230, 'MONSTER_FIRE_HOL_1', 'Cutiehat'),
(231, 'MONSTER_FIRE_HOL_2', 'Cloak'),
(232, 'MONSTER_FIRE_HOL_3', 'Witchan'),
(32, 'MONSTER_FIRE_JUN_1', 'Kokosun'),
(33, 'MONSTER_FIRE_JUN_2', 'Sunguin'),
(239, 'MONSTER_FIRE_JUN_3', 'Glimp'),
(240, 'MONSTER_FIRE_JUN_4', 'Ignis'),
(43, 'MONSTER_FIRE_LOV_1', 'Hellkite'),
(44, 'MONSTER_FIRE_LOV_2', 'Hellho'),
(45, 'MONSTER_FIRE_LOV_3', 'Hellpiep'),
(103, 'MONSTER_FIRE_NEXT_1', 'Hippfie'),
(104, 'MONSTER_FIRE_NEXT_2', 'Mick'),
(250, 'MONSTER_FIRE_SPR_1', 'Kitsun'),
(251, 'MONSTER_FIRE_SPR_2', 'Rainbowfox'),
(34, 'MONSTER_FIRE_XMAS_1', 'Glim'),
(216, 'MONSTER_FIRE_XMAS_2', 'Gathos'),
(35, 'MONSTER_FIRE_XMAS_3', 'Kobold'),
(217, 'MONSTER_FIRE_XMAS_4', 'Ahathul'),
(218, 'MONSTER_FIRE_XMAS_5', 'Centoleon'),
(1, 'MONSTER_WATER_1', 'Frogus'),
(136, 'MONSTER_WATER_10', 'Infalisk'),
(106, 'MONSTER_WATER_11', 'Mediaquian'),
(114, 'MONSTER_WATER_12', 'Dadachock'),
(132, 'MONSTER_WATER_13', 'Batoid'),
(137, 'MONSTER_WATER_14', 'Puerolisk'),
(140, 'MONSTER_WATER_15', 'Falhor'),
(149, 'MONSTER_WATER_16', 'Tentahat'),
(107, 'MONSTER_WATER_17', 'Underaquian'),
(115, 'MONSTER_WATER_18', 'Dadachum'),
(133, 'MONSTER_WATER_19', 'Mantari'),
(5, 'MONSTER_WATER_2', 'Dribble'),
(138, 'MONSTER_WATER_20', 'Basilisk'),
(141, 'MONSTER_WATER_21', 'Melhor'),
(150, 'MONSTER_WATER_22', 'Crystallhat'),
(238, 'MONSTER_WATER_23', 'Armorank'),
(246, 'MONSTER_WATER_24', 'Neptune'),
(249, 'MONSTER_WATER_25', 'Leviathan'),
(7, 'MONSTER_WATER_3', 'Spiritus'),
(105, 'MONSTER_WATER_4', 'Overaquian'),
(2, 'MONSTER_WATER_5', 'Frogissimo'),
(6, 'MONSTER_WATER_6', 'Sprinkle'),
(8, 'MONSTER_WATER_7', 'Kelpie'),
(148, 'MONSTER_WATER_8', 'Jellyhat'),
(139, 'MONSTER_WATER_9', 'Minor'),
(82, 'MONSTER_WATER_APR_1', 'Lilly'),
(83, 'MONSTER_WATER_APR_2', 'Lotty'),
(84, 'MONSTER_WATER_APR_3', 'Lasvador'),
(174, 'MONSTER_WATER_FOX_1', 'Oceanfox'),
(50, 'MONSTER_WATER_HOL_1', 'Snorkly'),
(51, 'MONSTER_WATER_HOL_2', 'Divie'),
(180, 'MONSTER_WATER_JUN_1', 'Seamianti'),
(181, 'MONSTER_WATER_JUN_2', 'Martigra'),
(182, 'MONSTER_WATER_JUN_3', 'Manateecor'),
(25, 'MONSTER_WATER_LOV_1', 'Phibie'),
(26, 'MONSTER_WATER_LOV_2', 'Amphibie'),
(101, 'MONSTER_WATER_LOV_3', 'Nagapet'),
(102, 'MONSTER_WATER_LOV_4', 'Naga'),
(244, 'MONSTER_WATER_NEXT_1', 'Mousea'),
(245, 'MONSTER_WATER_NEXT_2', 'Plesio'),
(85, 'MONSTER_WATER_SPR_1', 'Peligard'),
(86, 'MONSTER_WATER_SPR_2', 'Costgard'),
(124, 'MONSTER_WATER_WIN_1', 'Frosty'),
(125, 'MONSTER_WATER_WIN_2', 'Toady'),
(74, 'MONSTER_WATER_XMAS_1', 'Snowy'),
(195, 'MONSTER_WATER_XMAS_2', 'Snowflake'),
(75, 'MONSTER_WATER_XMAS_3', 'Snowcliff'),
(76, 'MONSTER_WATER_XMAS_4', 'Snowcrag'),
(196, 'MONSTER_WATER_XMAS_5', 'Frostmaiden'),
(20, 'MONSTER_WIND_1', 'SunTzi'),
(91, 'MONSTER_WIND_10', 'Windance'),
(186, 'MONSTER_WIND_11', 'Infird'),
(153, 'MONSTER_WIND_12', 'Undine'),
(146, 'MONSTER_WIND_13', 'Aerycorn'),
(120, 'MONSTER_WIND_14', 'Phantomo'),
(206, 'MONSTER_WIND_15', 'Cheshir'),
(92, 'MONSTER_WIND_16', 'Mushtopia'),
(111, 'MONSTER_WIND_17', 'Harpy'),
(121, 'MONSTER_WIND_18', 'Ghostus'),
(187, 'MONSTER_WIND_19', 'Puerogryph'),
(13, 'MONSTER_WIND_2', 'Earbat'),
(207, 'MONSTER_WIND_20', 'Pillowcat'),
(147, 'MONSTER_WIND_21', 'Hippofly'),
(154, 'MONSTER_WIND_22', 'Stormdine'),
(188, 'MONSTER_WIND_23', 'Gryphon'),
(208, 'MONSTER_WIND_24', 'Bajun'),
(224, 'MONSTER_WIND_25', 'Charybdis'),
(90, 'MONSTER_WIND_3', 'Shroomy'),
(145, 'MONSTER_WIND_4', 'Fluffycorn'),
(21, 'MONSTER_WIND_5', 'Airver'),
(110, 'MONSTER_WIND_6', 'Gamayun'),
(119, 'MONSTER_WIND_7', 'Spooky'),
(14, 'MONSTER_WIND_8', 'Earaught'),
(22, 'MONSTER_WIND_9', 'Eskimo'),
(126, 'MONSTER_WIND_APR_1', 'Cony'),
(127, 'MONSTER_WIND_APR_2', 'Bunny'),
(128, 'MONSTER_WIND_APR_3', 'Lapin'),
(28, 'MONSTER_WIND_FOX_1', 'Snowfox'),
(158, 'MONSTER_WIND_HOL_1', 'Owlling'),
(159, 'MONSTER_WIND_HOL_2', 'Owliana'),
(80, 'MONSTER_WIND_JUN_1', 'Cyclodilly'),
(81, 'MONSTER_WIND_JUN_2', 'Alleviator'),
(38, 'MONSTER_WIND_LOV_1', 'Rabby'),
(39, 'MONSTER_WIND_LOV_2', 'Harecloud'),
(9, 'MONSTER_WIND_LOV_3', 'Marshy'),
(10, 'MONSTER_WIND_LOV_4', 'Claumbet'),
(241, 'MONSTER_WIND_LOV_5', 'Keeper'),
(54, 'MONSTER_WIND_NEXT_1', 'Mothy'),
(55, 'MONSTER_WIND_NEXT_2', 'Yggy'),
(40, 'MONSTER_WIND_SPR_1', 'Chamuito'),
(41, 'MONSTER_WIND_SPR_2', 'Dinotto'),
(155, 'MONSTER_WIND_WIN_1', 'Blu'),
(156, 'MONSTER_WIND_WIN_2', 'Aquablu'),
(157, 'MONSTER_WIND_WIN_3', 'Ultrablu'),
(233, 'MONSTER_WIND_WIN_4', 'Slinky'),
(234, 'MONSTER_WIND_WIN_5', 'Garlant'),
(168, 'MONSTER_WIND_XMAS_1', 'Frigan'),
(197, 'MONSTER_WIND_XMAS_2', 'Glidy'),
(169, 'MONSTER_WIND_XMAS_3', 'Tonnir'),
(198, 'MONSTER_WIND_XMAS_4', 'Furglide'),
(170, 'MONSTER_WIND_XMAS_5', 'Ronolph'),
(199, 'MONSTER_WIND_XMAS_6', 'Arimasp');

-- --------------------------------------------------------

--
-- Structure de la table `creatures`
--

CREATE TABLE `creatures` (
  `spotid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creature` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cp` int(6) NOT NULL,
  `iv` int(3) NOT NULL,
  `purebred` tinyint(1) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `good` int(3) NOT NULL,
  `bad` int(1) NOT NULL,
  `spotter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `visible` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gyms`
--

CREATE TABLE `gyms` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `team` int(2) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `spotter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `libs`
--

CREATE TABLE `libs` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `team` int(2) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `spotter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
  `team` int(2) NOT NULL,
  `level` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stops`
--

CREATE TABLE `stops` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `spotter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
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
  `groupname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `usergroup`
--

INSERT INTO `usergroup` (`id`, `groupname`, `description`) VALUES
(1, 'basic', 'can be verified, modified/upgraded or removed by founders'),
(2, 'pro', 'having special permissions like userlikes'),
(3, 'admin', 'having access to database operations and all pro features'),
(4, 'founder', 'having access to user-management and all admin features');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `upass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usergroup` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `mapCenter` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '40.777, -73.969',
  `mapSize` tinyint(2) NOT NULL DEFAULT '15',
  `hidePilars` tinyint(1) NOT NULL DEFAULT '1',
  `hideObelisks` tinyint(1) NOT NULL DEFAULT '1',
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

INSERT INTO `users` (`id`, `email`, `uname`, `upass`, `usergroup`, `mapCenter`, `mapSize`, `hidePilars`, `hideObelisks`, `trn_date`, `url`, `lastUpload`, `offtrades`, `reqtrades`, `registered`, `avatar`) VALUES
(1, '', 'founder', 'c26186f4a689bc88f3823d95aeb0b9b5', '4', '40.777, -73.969', 12, 0, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', 'founder.png'),
(2, '', 'admin1', '21232f297a57a5a743894a0e4a801fc3', '3', '40.767, -73.976', 16, 0, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', 'admin1.png'),
(3, '', 'admin2', '21232f297a57a5a743894a0e4a801fc3', '3', '40.777, -73.969', 14, 1, 1, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', 'admin2.png'),
(4, '', 'admin3', '21232f297a57a5a743894a0e4a801fc3', '3', '40.793, -73.958', 17, 1, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', 'admin3.png');

-- --------------------------------------------------------

--
-- Structure de la table `user_like`
--

CREATE TABLE `user_like` (
  `spot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `voted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `version`
--

CREATE TABLE `version` (
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `version`
--

INSERT INTO `version` (`key`, `value`) VALUES
('DB_VERSION', '4');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bestiary`
--
ALTER TABLE `bestiary`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `creatures`
--
ALTER TABLE `creatures`
  ADD PRIMARY KEY (`spotid`);

--
-- Index pour la table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD UNIQUE KEY `latlong` (`latitude`,`longitude`);

--
-- Index pour la table `libs`
--
ALTER TABLE `libs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD UNIQUE KEY `latlong` (`latitude`,`longitude`);

--
-- Index pour la table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD UNIQUE KEY `latlong` (`latitude`,`longitude`);

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
  ADD PRIMARY KEY (`spot_id`,`user_id`) USING BTREE;

--
-- Index pour la table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`key`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `usergroup`
--
ALTER TABLE `usergroup`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
