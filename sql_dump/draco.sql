-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 31 mars 2021 à 20:06
-- Version du serveur :  10.5.8-MariaDB
-- Version de PHP :  7.3.2
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  AUTOCOMMIT = 0;

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

--
-- Déchargement des données de la table `bestiary`
--
INSERT INTO
  `bestiary` (`gid`, `id`, `monster`)
VALUES
  / / == = Auto Genered - BestiaryOrdered - English - DracoMap compatible True == = / / ('1', 'MONSTER_EARTH_DEC_1', 'Cobwebby'),
  ('2', 'MONSTER_WATER_1', 'Frogus'),
  ('3', 'MONSTER_WATER_5', 'Frogissimo'),
  ('4', 'MONSTER_EARTH_1', 'Berrydillo'),
  ('5', 'MONSTER_EARTH_5', 'Shamurf'),
  ('6', 'MONSTER_WATER_2', 'Dribble'),
  ('7', 'MONSTER_WATER_6', 'Sprinkle'),
  ('8', 'MONSTER_WATER_3', 'Spiritus'),
  ('9', 'MONSTER_WATER_7', 'Kelpie'),
  ('10', 'MONSTER_FIRE_SP', 'Goldlick'),
  ('11', 'MONSTER_WATER_HW', 'Evildrop'),
  ('12', 'MONSTER_WIND_LOV_3', 'Marshy'),
  ('13', 'MONSTER_WIND_LOV_4', 'Claumbet'),
  ('14', 'MONSTER_FIRE_2', 'Mymmyween'),
  ('15', 'MONSTER_FIRE_8', 'Dummyween'),
  ('16', 'MONSTER_WIND_2', 'Earbat'),
  ('17', 'MONSTER_WIND_8', 'Earaught'),
  ('18', 'MONSTER_DUNGEON_2', 'Axolan'),
  ('19', 'MONSTER_DUNGEON_8', 'Grandalotl'),
  ('20', 'MONSTER_FIRE_1', 'Potty'),
  ('21', 'MONSTER_FIRE_5', 'Firepaw'),
  ('22', 'MONSTER_FIRE_9', 'Lavion'),
  ('23', 'MONSTER_WIND_1', 'SunTzi'),
  ('24', 'MONSTER_WIND_5', 'Airver'),
  ('25', 'MONSTER_WIND_9', 'Eskimo'),
  ('26', 'MONSTER_DUNGEON_3', 'Spikeback'),
  ('27', 'MONSTER_DUNGEON_9', 'Scarecrow'),
  ('28', 'MONSTER_WATER_LOV_1', 'Phibie'),
  ('29', 'MONSTER_WATER_LOV_2', 'Amphibie'),
  ('30', 'MONSTER_FIRE_FOX_1', 'Flamefox'),
  ('31', 'MONSTER_EARTH_HW', 'Gourdgnawer'),
  ('32', 'MONSTER_WIND_FOX_1', 'Snowfox'),
  ('33', 'MONSTER_DUNGEON_1', 'Rookie'),
  ('34', 'MONSTER_DUNGEON_7', 'Marid'),
  ('35', 'MONSTER_DUNGEON_11', 'Genie'),
  ('36', 'MONSTER_FIRE_JUN_1', 'Kokosun'),
  ('37', 'MONSTER_FIRE_JUN_2', 'Sunguin'),
  ('38', 'MONSTER_FIRE_XMAS_1', 'Glim'),
  ('39', 'MONSTER_FIRE_XMAS_3', 'Kobold'),
  ('40', 'MONSTER_DUNGEON_NEXT_4', 'Raphy'),
  ('41', 'MONSTER_DUNGEON_NEXT_5', 'Wolfshroom'),
  ('42', 'MONSTER_WIND_LOV_1', 'Rabby'),
  ('43', 'MONSTER_WIND_LOV_2', 'Harecloud'),
  ('44', 'MONSTER_WIND_SPR_1', 'Chamuito'),
  ('45', 'MONSTER_WIND_SPR_2', 'Dinotto'),
  ('46', 'MONSTER_DUNGEON_FOX_1', 'Indigofox'),
  ('47', 'MONSTER_FIRE_LOV_1', 'Hellkite'),
  ('48', 'MONSTER_FIRE_LOV_2', 'Hellho'),
  ('49', 'MONSTER_FIRE_LOV_3', 'Hellpiep'),
  ('50', 'MONSTER_EARTH_JUN_1', 'Pugberry'),
  ('51', 'MONSTER_EARTH_JUN_2', 'Kerberos'),
  ('52', 'MONSTER_EARTH_XMAS_2', 'Stumpy'),
  ('53', 'MONSTER_EARTH_XMAS_4', 'Drout'),
  ('54', 'MONSTER_WATER_HOL_1', 'Snorkly'),
  ('55', 'MONSTER_WATER_HOL_2', 'Divie'),
  ('56', 'MONSTER_EARTH_NEXT_1', 'Beanie'),
  ('57', 'MONSTER_EARTH_NEXT_2', 'Frutucan'),
  ('58', 'MONSTER_WIND_NEXT_1', 'Mothy'),
  ('59', 'MONSTER_WIND_NEXT_2', 'Yggy'),
  ('60', 'MONSTER_DUNGEON_HOL_1', 'Zizzi'),
  ('61', 'MONSTER_DUNGEON_HOL_2', 'Zuzzu'),
  ('62', 'MONSTER_EARTH_LOV_1', 'Peagolin'),
  ('63', 'MONSTER_EARTH_LOV_2', 'Dodosaur'),
  ('64', 'MONSTER_FIRE_HW', 'Pawmpkin'),
  ('65', 'MONSTER_EARTH_9', 'Bellflow'),
  ('66', 'MONSTER_EARTH_17', 'Dwantflow'),
  ('67', 'MONSTER_EARTH_4', 'Brownie'),
  ('68', 'MONSTER_EARTH_12', 'Brag'),
  ('69', 'MONSTER_EARTH_18', 'Chappian'),
  ('70', 'MONSTER_WATER_DEC_1', 'Icellyfish'),
  ('71', 'MONSTER_WATER_DEC_2', 'Icette'),
  ('72', 'MONSTER_EARTH_APR_1', 'Irislyn'),
  ('73', 'MONSTER_EARTH_APR_2', 'Clawbloom'),
  ('74', 'MONSTER_DUNGEON_LOV_3', 'Grempie'),
  ('75', 'MONSTER_DUNGEON_LOV_4', 'Gremler'),
  ('76', 'MONSTER_EARTH_2', 'Flowy'),
  ('77', 'MONSTER_EARTH_7', 'Plantic'),
  ('78', 'MONSTER_EARTH_19', 'Gardrag'),
  ('79', 'MONSTER_DUNGEON_WIN_1', 'Blosstopus'),
  ('80', 'MONSTER_DUNGEON_WIN_2', 'Florantul'),
  ('81', 'MONSTER_FIRE_DEC_1', 'Foglowy'),
  ('82', 'MONSTER_FIRE_DEC_2', 'Fogalo'),
  ('83', 'MONSTER_WATER_XMAS_1', 'Snowy'),
  ('84', 'MONSTER_WATER_XMAS_3', 'Snowcliff'),
  ('85', 'MONSTER_WATER_XMAS_4', 'Snowcrag'),
  ('86', 'MONSTER_EARTH_3', 'Leaflet'),
  ('87', 'MONSTER_EARTH_6', 'Dryad'),
  ('88', 'MONSTER_EARTH_20', 'Twigo'),
  ('89', 'MONSTER_WIND_JUN_1', 'Cyclodilly'),
  ('90', 'MONSTER_WIND_JUN_2', 'Alleviator'),
  ('91', 'MONSTER_WATER_APR_1', 'Lilly'),
  ('92', 'MONSTER_WATER_APR_2', 'Lotty'),
  ('93', 'MONSTER_WATER_APR_3', 'Lasvador'),
  ('94', 'MONSTER_WATER_SPR_1', 'Peligard'),
  ('95', 'MONSTER_WATER_SPR_2', 'Costgard'),
  ('96', 'MONSTER_FIRE_3', 'Steampal'),
  ('97', 'MONSTER_FIRE_10', 'Helsailor'),
  ('98', 'MONSTER_FIRE_16', 'Ironguy'),
  ('99', 'MONSTER_WIND_3', 'Shroomy'),
  ('100', 'MONSTER_WIND_10', 'Windance'),
  ('101', 'MONSTER_WIND_16', 'Mushtopia'),
  ('102', 'MONSTER_EARTH_13', 'Princie'),
  ('103', 'MONSTER_EARTH_21', 'Earthborn'),
  ('104', 'MONSTER_FIRE_FOX_2', 'Tomatofox'),
  ('105', 'MONSTER_EARTH_10', 'Acornling'),
  ('106', 'MONSTER_EARTH_14', 'Hopbear'),
  ('107', 'MONSTER_EARTH_22', 'Parabeast'),
  ('108', 'MONSTER_DUNGEON_JUN_1', 'Crabby'),
  ('109', 'MONSTER_DUNGEON_JUN_2', 'Craboss'),
  ('110', 'MONSTER_WATER_LOV_3', 'Nagapet'),
  ('111', 'MONSTER_WATER_LOV_4', 'Naga'),
  ('112', 'MONSTER_FIRE_NEXT_1', 'Hippfie'),
  ('113', 'MONSTER_FIRE_NEXT_2', 'Mick'),
  ('114', 'MONSTER_WATER_4', 'Overaquian'),
  ('115', 'MONSTER_WATER_11', 'Mediaquian'),
  ('116', 'MONSTER_WATER_17', 'Underaquian'),
  ('117', 'MONSTER_FIRE_6', 'Flamy'),
  ('118', 'MONSTER_FIRE_17', 'Firefly'),
  ('119', 'MONSTER_WIND_6', 'Gamayun'),
  ('120', 'MONSTER_WIND_17', 'Harpy'),
  ('121', 'MONSTER_DUNGEON_APR_1', 'Chep'),
  ('122', 'MONSTER_DUNGEON_APR_2', 'Gob'),
  ('123', 'MONSTER_WATER_12', 'Dadachock'),
  ('124', 'MONSTER_WATER_18', 'Dadachum'),
  ('125', 'MONSTER_FIRE_7', 'Phoby'),
  ('126', 'MONSTER_FIRE_14', 'Phoenix'),
  ('127', 'MONSTER_FIRE_18', 'Caesar'),
  ('128', 'MONSTER_WIND_7', 'Spooky'),
  ('129', 'MONSTER_WIND_14', 'Phantomo'),
  ('130', 'MONSTER_WIND_18', 'Ghostus'),
  ('131', 'MONSTER_DUNGEON_12', 'Vampiro'),
  ('132', 'MONSTER_DUNGEON_18', 'Dracool'),
  ('133', 'MONSTER_WATER_WIN_1', 'Frosty'),
  ('134', 'MONSTER_WATER_WIN_2', 'Toady'),
  ('135', 'MONSTER_WIND_APR_1', 'Cony'),
  ('136', 'MONSTER_WIND_APR_2', 'Bunny'),
  ('137', 'MONSTER_WIND_APR_3', 'Lapin'),
  ('138', 'MONSTER_DUNGEON_LOV_1', 'Nimblo'),
  ('139', 'MONSTER_DUNGEON_LOV_2', 'Crysbee'),
  ('140', 'MONSTER_WIND_HW', 'D`Arkangel'),
  ('141', 'MONSTER_EARTH_FOX_1', 'Grassfox'),
  ('142', 'MONSTER_WATER_13', 'Batoid'),
  ('143', 'MONSTER_WATER_19', 'Mantari'),
  ('144', 'MONSTER_DUNGEON_13', 'Advise'),
  ('145', 'MONSTER_DUNGEON_19', 'Absolerm'),
  ('146', 'MONSTER_WATER_10', 'Infalisk'),
  ('147', 'MONSTER_WATER_14', 'Puerolisk'),
  ('148', 'MONSTER_WATER_20', 'Basilisk'),
  ('149', 'MONSTER_EARTH_SP_1', 'Goldgrab'),
  ('150', 'MONSTER_EARTH_SP_2', 'Goldspent'),
  ('151', 'MONSTER_WATER_9', 'Minor'),
  ('152', 'MONSTER_WATER_15', 'Falhor'),
  ('153', 'MONSTER_WATER_21', 'Melhor'),
  ('154', 'MONSTER_FIRE_4', 'Incumus'),
  ('155', 'MONSTER_FIRE_13', 'Daemonstar'),
  ('156', 'MONSTER_FIRE_21', 'Tempter'),
  ('157', 'MONSTER_WIND_4', 'Fluffycorn'),
  ('158', 'MONSTER_WIND_13', 'Aerycorn'),
  ('159', 'MONSTER_WIND_21', 'Hippofly'),
  ('160', 'MONSTER_WATER_8', 'Jellyhat'),
  ('161', 'MONSTER_WATER_16', 'Tentahat'),
  ('162', 'MONSTER_WATER_22', 'Crystallhat'),
  ('163', 'MONSTER_FIRE_12', 'Kiddra'),
  ('164', 'MONSTER_FIRE_22', 'Hydra'),
  ('165', 'MONSTER_WIND_12', 'Undine'),
  ('166', 'MONSTER_WIND_22', 'Stormdine'),
  ('167', 'MONSTER_WIND_WIN_1', 'Blu'),
  ('168', 'MONSTER_WIND_WIN_2', 'Aquablu'),
  ('169', 'MONSTER_WIND_WIN_3', 'Ultrablu'),
  ('170', 'MONSTER_WIND_HOL_1', 'Owlling'),
  ('171', 'MONSTER_WIND_HOL_2', 'Owliana'),
  ('172', 'MONSTER_EARTH_WIN_1', 'Bako'),
  ('173', 'MONSTER_EARTH_WIN_2', 'Eloko'),
  ('174', 'MONSTER_EARTH_WIN_3', 'Sylvan'),
  ('175', 'MONSTER_DUNGEON_DEC_1', 'Plumgill'),
  ('176', 'MONSTER_DUNGEON_DEC_2', 'Plumosaur'),
  ('177', 'MONSTER_DUNGEON_SPR_1', 'Phanty'),
  ('178', 'MONSTER_DUNGEON_SPR_2', 'Phantifurry'),
  ('179', 'MONSTER_DUNGEON_SPR_3', 'Phanticora'),
  ('180', 'MONSTER_FIRE_APR_1', 'Lagart'),
  ('181', 'MONSTER_FIRE_APR_2', 'Chimero'),
  ('182', 'MONSTER_WIND_XMAS_1', 'Frigan'),
  ('183', 'MONSTER_WIND_XMAS_3', 'Tonnir'),
  ('184', 'MONSTER_WIND_XMAS_5', 'Ronolph'),
  ('185', 'MONSTER_EARTH_11', 'Phylo'),
  ('186', 'MONSTER_EARTH_15', 'Dao'),
  ('187', 'MONSTER_EARTH_23', 'Yogi'),
  ('188', 'MONSTER_WATER_FOX_1', 'Oceanfox'),
  ('189', 'MONSTER_DUNGEON_HW', 'Gardenstar'),
  ('190', 'MONSTER_EARTH_FOX_2', 'Steelfox'),
  ('191', 'MONSTER_DUNGEON_XMAS_1', 'Bogy'),
  ('192', 'MONSTER_DUNGEON_XMAS_2', 'Clurichaun'),
  ('193', 'MONSTER_DUNGEON_XMAS_4', 'Leprechaun'),
  ('194', 'MONSTER_DUNGEON_XMAS_5', 'Boogeyman'),
  ('195', 'MONSTER_WATER_JUN_1', 'Seamianti'),
  ('196', 'MONSTER_WATER_JUN_2', 'Martigra'),
  ('197', 'MONSTER_WATER_JUN_3', 'Manateecor'),
  ('198', 'MONSTER_FIRE_11', 'Spark'),
  ('199', 'MONSTER_FIRE_19', 'Blaze'),
  ('200', 'MONSTER_FIRE_23', 'Salute'),
  ('201', 'MONSTER_WIND_11', 'Infird'),
  ('202', 'MONSTER_WIND_19', 'Puerogryph'),
  ('203', 'MONSTER_WIND_23', 'Gryphon'),
  ('204', 'MONSTER_EARTH_8', 'Disguir'),
  ('205', 'MONSTER_EARTH_16', 'Troll'),
  ('206', 'MONSTER_EARTH_24', 'Grendel'),
  ('207', 'MONSTER_DUNGEON_XMAS_3', 'Santus'),
  ('208', 'MONSTER_DUNGEON_XMAS_6', 'Craus'),
  ('209', 'MONSTER_WATER_SP', 'Goldmarine'),
  ('210', 'MONSTER_FIRE_FOX_3', 'Goldenfox'),
  ('211', 'MONSTER_WATER_XMAS_2', 'Snowflake'),
  ('212', 'MONSTER_WATER_XMAS_5', 'Frostmaiden'),
  ('213', 'MONSTER_WIND_XMAS_2', 'Glidy'),
  ('214', 'MONSTER_WIND_XMAS_4', 'Furglide'),
  ('215', 'MONSTER_WIND_XMAS_6', 'Arimasp'),
  ('216', 'MONSTER_EARTH_XMAS_1', 'Wooly'),
  ('217', 'MONSTER_EARTH_XMAS_3', 'Yeti'),
  ('218', 'MONSTER_DUNGEON_6', 'Rosie'),
  ('219', 'MONSTER_DUNGEON_16', 'Softail'),
  ('220', 'MONSTER_DUNGEON_21', 'Sharptail'),
  ('221', 'MONSTER_DUNGEON_22', 'Rosebud'),
  ('222', 'MONSTER_WIND_15', 'Cheshir'),
  ('223', 'MONSTER_WIND_20', 'Pillowcat'),
  ('224', 'MONSTER_WIND_24', 'Bajun'),
  ('225', 'MONSTER_FIRE_15', 'Needlehot'),
  ('226', 'MONSTER_FIRE_20', 'Flibustus'),
  ('227', 'MONSTER_FIRE_24', 'Picaroon'),
  ('228', 'MONSTER_DUNGEON_4', 'Magglad'),
  ('229', 'MONSTER_DUNGEON_10', 'Snailyn'),
  ('230', 'MONSTER_DUNGEON_15', 'Twist'),
  ('231', 'MONSTER_DUNGEON_23', 'Curly'),
  ('232', 'MONSTER_FIRE_XMAS_2', 'Gathos'),
  ('233', 'MONSTER_FIRE_XMAS_4', 'Ahathul'),
  ('234', 'MONSTER_FIRE_XMAS_5', 'Centoleon'),
  ('235', 'MONSTER_EARTH_LOV_3', 'Minitaur'),
  ('236', 'MONSTER_EARTH_LOV_4', 'Teenotaur'),
  ('237', 'MONSTER_EARTH_LOV_5', 'Megataurus'),
  ('238', 'MONSTER_EARTH_LOV_6', 'Dragotaurus'),
  ('239', 'MONSTER_FIRE_25', 'Smoargh'),
  ('240', 'MONSTER_WIND_25', 'Charybdis'),
  ('241', 'MONSTER_EARTH_25', 'Scylla'),
  ('242', 'MONSTER_DUNGEON_5', 'Cuticat'),
  ('243', 'MONSTER_DUNGEON_14', 'Mantikid'),
  ('244', 'MONSTER_DUNGEON_20', 'Tigermant'),
  ('245', 'MONSTER_DUNGEON_24', 'Manticore'),
  ('246', 'MONSTER_FIRE_HOL_1', 'Cutiehat'),
  ('247', 'MONSTER_FIRE_HOL_2', 'Cloak'),
  ('248', 'MONSTER_FIRE_HOL_3', 'Witchan'),
  ('249', 'MONSTER_WIND_WIN_4', 'Slinky'),
  ('250', 'MONSTER_WIND_WIN_5', 'Garlant'),
  ('251', 'MONSTER_DUNGEON_NEXT_1', 'Satyrus'),
  ('252', 'MONSTER_DUNGEON_NEXT_2', 'Silenus'),
  ('253', 'MONSTER_DUNGEON_NEXT_3', 'Dionus'),
  ('254', 'MONSTER_WATER_23', 'Armorank'),
  ('255', 'MONSTER_FIRE_JUN_3', 'Glimp'),
  ('256', 'MONSTER_FIRE_JUN_4', 'Ignis'),
  ('257', 'MONSTER_WIND_LOV_5', 'Keeper'),
  ('258', 'MONSTER_DUNGEON_17', 'Inur'),
  ('259', 'MONSTER_DUNGEON_25', 'Morgoroth'),
  ('260', 'MONSTER_WATER_NEXT_1', 'Mousea'),
  ('261', 'MONSTER_WATER_NEXT_2', 'Plesio'),
  ('262', 'MONSTER_WATER_24', 'Neptune'),
  ('263', 'MONSTER_EARTH_SPR_1', 'Seedo'),
  ('264', 'MONSTER_EARTH_SPR_2', 'Dandeliosaur'),
  ('265', 'MONSTER_WATER_25', 'Leviathan'),
  ('266', 'MONSTER_FIRE_SPR_1', 'Kitsun'),
  ('267', 'MONSTER_FIRE_SPR_2', 'Rainbowfox'),
  ('268', 'MONSTER_EARTH_VIRAL', 'Kingpeat'),
  ('269', 'CHEST', 'Chest');

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
  `latitude` decimal(10, 6) NOT NULL,
  `longitude` decimal(10, 6) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `good` int(3) NOT NULL,
  `bad` int(1) NOT NULL,
  `spotter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `visible` enum(' 0 ', ' 1 ') COLLATE utf8_unicode_ci NOT NULL DEFAULT ' 1 '
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

-- --------------------------------------------------------
--
-- Structure de la table `gyms`
--
CREATE TABLE `gyms` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10, 6) NOT NULL,
  `longitude` decimal(10, 6) NOT NULL,
  `team` int(2) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `spotter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

-- --------------------------------------------------------
--
-- Structure de la table `libs`
--
CREATE TABLE `libs` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10, 6) NOT NULL,
  `longitude` decimal(10, 6) NOT NULL,
  `team` int(2) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `spotter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

-- --------------------------------------------------------
--
-- Structure de la table `players`
--
CREATE TABLE `players` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10, 6) NOT NULL,
  `longitude` decimal(10, 6) NOT NULL,
  `team` int(2) NOT NULL,
  `level` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

-- --------------------------------------------------------
--
-- Structure de la table `stops`
--
CREATE TABLE `stops` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(10, 6) NOT NULL,
  `longitude` decimal(10, 6) NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `spotter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

-- --------------------------------------------------------
--
-- Structure de la table `teams`
--
CREATE TABLE `teams` (
  `id` int(6) NOT NULL,
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

--
-- Déchargement des données de la table `teams`
--
INSERT INTO
  `teams` (`id`, `name`)
VALUES
  (1, ' Uncontested '),
  (2, ' Blue Order '),
  (3, ' Red Order ');

-- --------------------------------------------------------
--
-- Structure de la table `usergroup`
--
CREATE TABLE `usergroup` (
  `id` int(10) NOT NULL,
  `groupname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

--
-- Déchargement des données de la table `usergroup`
--
INSERT INTO
  `usergroup` (`id`, `groupname`, `description`)
VALUES
  (
    1,
    ' basic ',
    ' can be verified,
    modified / upgraded
    or removed by founders '
  ),
  (
    2,
    ' pro ',
    '
    having
      special permissions like userlikes '
  ),
  (
    3,
    ' admin ',
    '
    having
      access to database operations
      and all pro features '
  ),
  (
    4,
    ' founder ',
    '
    having
      access to user - management
      and all admin features '
  );

-- --------------------------------------------------------
--
-- Structure de la table `users`
--
CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `upass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usergroup` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT ' 1 ',
  `mapCenter` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT ' 40.777,
      -73.969 ',
  `mapSize` tinyint(2) NOT NULL DEFAULT 15,
  `hidePilars` tinyint(1) NOT NULL DEFAULT 1,
  `hideObelisks` tinyint(1) NOT NULL DEFAULT 1,
  `trn_date` datetime NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpload` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `offtrades` int(9) NOT NULL,
  `reqtrades` int(9) NOT NULL,
  `registered` datetime NOT NULL,
  `avatar` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT ' default_avatar.png '
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--
INSERT INTO
  `users` (
    `id`,
    `email`,
    `uname`,
    `upass`,
    `usergroup`,
    `mapCenter`,
    `mapSize`,
    `hidePilars`,
    `hideObelisks`,
    `trn_date`,
    `url`,
    `lastUpload`,
    `offtrades`,
    `reqtrades`,
    `registered`,
    `avatar`
  )
VALUES
  (
    1,
    '',
    ' founder ',
    ' c26186f4a689bc88f3823d95aeb0b9b5 ',
    ' 4 ',
    ' 40.777,
      -73.969 ',
    12,
    0,
    0,
    ' 0000 -00 -00 00 :00 :00 ',
    '',
    '',
    0,
    0,
    ' 0000 -00 -00 00 :00 :00 ',
    ' founder.png '
  ),
  (
    2,
    '',
    ' admin1 ',
    ' 21232f297a57a5a743894a0e4a801fc3 ',
    ' 3 ',
    ' 40.767,
      -73.976 ',
    16,
    0,
    0,
    ' 0000 -00 -00 00 :00 :00 ',
    '',
    '',
    0,
    0,
    ' 0000 -00 -00 00 :00 :00 ',
    ' admin1.png '
  ),
  (
    3,
    '',
    ' admin2 ',
    ' 21232f297a57a5a743894a0e4a801fc3 ',
    ' 3 ',
    ' 40.777,
      -73.969 ',
    14,
    1,
    1,
    ' 0000 -00 -00 00 :00 :00 ',
    '',
    '',
    0,
    0,
    ' 0000 -00 -00 00 :00 :00 ',
    ' admin2.png '
  ),
  (
    4,
    '',
    ' admin3 ',
    ' 21232f297a57a5a743894a0e4a801fc3 ',
    ' 3 ',
    ' 40.793,
      -73.958 ',
    17,
    1,
    0,
    ' 0000 -00 -00 00 :00 :00 ',
    '',
    '',
    0,
    0,
    ' 0000 -00 -00 00 :00 :00 ',
    ' admin3.png '
  );

-- --------------------------------------------------------
--
-- Structure de la table `user_like`
--
CREATE TABLE `user_like` (
  `spot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `voted` tinyint(1) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

-- --------------------------------------------------------
--
-- Structure de la table `version`
--
CREATE TABLE `version` (
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

--
-- Déchargement des données de la table `version`
--
INSERT INTO
  `version` (`key`, `value`)
VALUES
  (' DB_VERSION ', ' 4 ');

--
-- Index pour les tables déchargées
--
--
-- Index pour la table `bestiary`
--
ALTER TABLE
  `bestiary`
ADD
  PRIMARY KEY (`id`);

--
-- Index pour la table `creatures`
--
ALTER TABLE
  `creatures`
ADD
  PRIMARY KEY (`spotid`);

--
-- Index pour la table `gyms`
--
ALTER TABLE
  `gyms`
ADD
  PRIMARY KEY (`id`),
ADD
  UNIQUE KEY `name` (`name`) USING BTREE,
ADD
  UNIQUE KEY `latlong` (`latitude`, `longitude`);

--
-- Index pour la table `libs`
--
ALTER TABLE
  `libs`
ADD
  PRIMARY KEY (`id`),
ADD
  UNIQUE KEY `name` (`name`) USING BTREE,
ADD
  UNIQUE KEY `latlong` (`latitude`, `longitude`);

--
-- Index pour la table `players`
--
ALTER TABLE
  `players`
ADD
  PRIMARY KEY (`name`);

--
-- Index pour la table `stops`
--
ALTER TABLE
  `stops`
ADD
  PRIMARY KEY (`id`),
ADD
  UNIQUE KEY `name` (`name`) USING BTREE,
ADD
  UNIQUE KEY `latlong` (`latitude`, `longitude`);

--
-- Index pour la table `teams`
--
ALTER TABLE
  `teams`
ADD
  PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `usergroup`
--
ALTER TABLE
  `usergroup`
ADD
  PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE
  `users`
ADD
  PRIMARY KEY (`id`);

--
-- Index pour la table `user_like`
--
ALTER TABLE
  `user_like`
ADD
  PRIMARY KEY (`spot_id`, `user_id`) USING BTREE;

--
-- Index pour la table `version`
--
ALTER TABLE
  `version`
ADD
  PRIMARY KEY (`key`);

--
-- AUTO_INCREMENT pour les tables déchargées
--
--
-- AUTO_INCREMENT pour la table `usergroup`
--
ALTER TABLE
  `usergroup`
MODIFY
  `id` int(10) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE
  `users`
MODIFY
  `id` int(10) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;