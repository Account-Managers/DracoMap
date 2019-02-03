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
  `id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `monster` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `pokedex`
--

INSERT INTO `pokedex` (`id`, `monster`) VALUES
INSERT INTO `pokedex` (`id`, `monster`) VALUES
('CHEST', 'Chest');
('MONSTER_WATER_1', 'Frogus'),
('MONSTER_WATER_2', 'Dribble'),
('MONSTER_WATER_3', 'Spiritus'),
('MONSTER_WATER_4', 'Overaquian'),
('MONSTER_WATER_5', 'Frogissimo'),
('MONSTER_WATER_6', 'Sprinkle'),
('MONSTER_WATER_7', 'Kelpie'),
('MONSTER_WATER_8', 'Jellyhat'),
('MONSTER_WATER_9', 'Minor'),
('MONSTER_WATER_10', 'Infalisk'),
('MONSTER_WATER_11', 'Mediaquian'),
('MONSTER_WATER_12', 'Dadachock'),
('MONSTER_WATER_13', 'Batoid'),
('MONSTER_WATER_14', 'Puerolisk'),
('MONSTER_WATER_15', 'Falhor'),
('MONSTER_WATER_16', 'Tentahat'),
('MONSTER_WATER_17', 'Underaquian'),
('MONSTER_WATER_18', 'Dadachum'),
('MONSTER_WATER_19', 'Mantari'),
('MONSTER_WATER_20', 'Basilisk'),
('MONSTER_WATER_21', 'Melhor'),
('MONSTER_WATER_22', 'Crystallhat'),
('MONSTER_WATER_23', 'Armorank'),
('MONSTER_WATER_24', 'Neptune'),
('MONSTER_WATER_25', 'Leviathan'),
('MONSTER_FIRE_1', 'Potty'),
('MONSTER_FIRE_2', 'Mymmyween'),
('MONSTER_FIRE_3', 'Steampal'),
('MONSTER_FIRE_4', 'Incumus'),
('MONSTER_FIRE_5', 'Firepaw'),
('MONSTER_FIRE_6', 'Flamy'),
('MONSTER_FIRE_7', 'Phoby'),
('MONSTER_FIRE_8', 'Dummyween'),
('MONSTER_FIRE_9', 'Lavion'),
('MONSTER_FIRE_10', 'Helsailor'),
('MONSTER_FIRE_11', 'Spark'),
('MONSTER_FIRE_12', 'Kiddra'),
('MONSTER_FIRE_13', 'Daemonstar'),
('MONSTER_FIRE_14', 'Phoenix'),
('MONSTER_FIRE_15', 'Needlehot'),
('MONSTER_FIRE_16', 'Ironguy'),
('MONSTER_FIRE_17', 'Firefly'),
('MONSTER_FIRE_18', 'Caesar'),
('MONSTER_FIRE_19', 'Blaze'),
('MONSTER_FIRE_20', 'Flibustus'),
('MONSTER_FIRE_21', 'Tempter'),
('MONSTER_FIRE_22', 'Hydra'),
('MONSTER_FIRE_23', 'Salute'),
('MONSTER_FIRE_24', 'Picaroon'),
('MONSTER_FIRE_25', 'Smoargh'),
('MONSTER_EARTH_1', 'Berrydillo'),
('MONSTER_EARTH_2', 'Flowy'),
('MONSTER_EARTH_3', 'Leaflet'),
('MONSTER_EARTH_4', 'Brownie'),
('MONSTER_EARTH_5', 'Shamurf'),
('MONSTER_EARTH_6', 'Dryad'),
('MONSTER_EARTH_7', 'Plantic'),
('MONSTER_EARTH_8', 'Disguir'),
('MONSTER_EARTH_9', 'Bellflow'),
('MONSTER_EARTH_10', 'Acornling'),
('MONSTER_EARTH_11', 'Phylo'),
('MONSTER_EARTH_12', 'Brag'),
('MONSTER_EARTH_13', 'Princie'),
('MONSTER_EARTH_14', 'Hopbear'),
('MONSTER_EARTH_15', 'Dao'),
('MONSTER_EARTH_16', 'Troll'),
('MONSTER_EARTH_17', 'Dwantflow'),
('MONSTER_EARTH_18', 'Chappian'),
('MONSTER_EARTH_19', 'Gardrag'),
('MONSTER_EARTH_20', 'Twigo'),
('MONSTER_EARTH_21', 'Earthborn'),
('MONSTER_EARTH_22', 'Parabeast'),
('MONSTER_EARTH_23', 'Yogi'),
('MONSTER_EARTH_24', 'Grendel'),
('MONSTER_EARTH_25', 'Scylla'),
('MONSTER_WIND_1', 'SunTzi'),
('MONSTER_WIND_2', 'Earbat'),
('MONSTER_WIND_3', 'Shroomy'),
('MONSTER_WIND_4', 'Fluffycorn'),
('MONSTER_WIND_5', 'Airver'),
('MONSTER_WIND_6', 'Gamayun'),
('MONSTER_WIND_7', 'Spooky'),
('MONSTER_WIND_8', 'Earaught'),
('MONSTER_WIND_9', 'Eskimo'),
('MONSTER_WIND_10', 'Windance'),
('MONSTER_WIND_11', 'Infird'),
('MONSTER_WIND_12', 'Undine'),
('MONSTER_WIND_13', 'Aerycorn'),
('MONSTER_WIND_14', 'Phantomo'),
('MONSTER_WIND_15', 'Cheshir'),
('MONSTER_WIND_16', 'Mushtopia'),
('MONSTER_WIND_17', 'Harpy'),
('MONSTER_WIND_18', 'Ghostus'),
('MONSTER_WIND_19', 'Puerogryph'),
('MONSTER_WIND_20', 'Pillowcat'),
('MONSTER_WIND_21', 'Hippofly'),
('MONSTER_WIND_22', 'Stormdine'),
('MONSTER_WIND_23', 'Gryphon'),
('MONSTER_WIND_24', 'Bajun'),
('MONSTER_WIND_25', 'Charybdis'),
('MONSTER_DUNGEON_1', 'Rookie'),
('MONSTER_DUNGEON_2', 'Axolan'),
('MONSTER_DUNGEON_3', 'Spikeback'),
('MONSTER_DUNGEON_4', 'Magglad'),
('MONSTER_DUNGEON_5', 'Cuticat'),
('MONSTER_DUNGEON_6', 'Rosie'),
('MONSTER_DUNGEON_7', 'Marid'),
('MONSTER_DUNGEON_8', 'Grandalotl'),
('MONSTER_DUNGEON_9', 'Scarecrow'),
('MONSTER_DUNGEON_10', 'Snailyn'),
('MONSTER_DUNGEON_11', 'Genie'),
('MONSTER_DUNGEON_12', 'Vampiro'),
('MONSTER_DUNGEON_13', 'Advise'),
('MONSTER_DUNGEON_14', 'Mantikid'),
('MONSTER_DUNGEON_15', 'Twist'),
('MONSTER_DUNGEON_16', 'Softail'),
('MONSTER_DUNGEON_17', 'Inur'),
('MONSTER_DUNGEON_18', 'Dracool'),
('MONSTER_DUNGEON_19', 'Absolerm'),
('MONSTER_DUNGEON_20', 'Tigermant'),
('MONSTER_DUNGEON_21', 'Sharptail'),
('MONSTER_DUNGEON_22', 'Rosebud'),
('MONSTER_DUNGEON_23', 'Curly'),
('MONSTER_DUNGEON_24', 'Manticore'),
('MONSTER_DUNGEON_25', 'Morgoroth'),
('MONSTER_DUNGEON_XMAS_1', 'Bogy'),
('MONSTER_DUNGEON_XMAS_2', 'Clurichaun'),
('MONSTER_DUNGEON_XMAS_4', 'Leprechaun'),
('MONSTER_DUNGEON_XMAS_5', 'Boogeyman'),
('MONSTER_DUNGEON_XMAS_3', 'Santus'),
('MONSTER_DUNGEON_XMAS_6', 'Craus'),
('MONSTER_EARTH_XMAS_1', 'Wooly'),
('MONSTER_EARTH_XMAS_3', 'Yeti'),
('MONSTER_EARTH_XMAS_2', 'Stumpy'),
('MONSTER_EARTH_XMAS_4', 'Drout'),
('MONSTER_WATER_XMAS_1', 'Snowy'),
('MONSTER_WATER_XMAS_3', 'Snowcliff'),
('MONSTER_WATER_XMAS_4', 'Snowcrag'),
('MONSTER_WATER_XMAS_2', 'Snowflake'),
('MONSTER_WATER_XMAS_5', 'Frostmaiden'),
('MONSTER_WIND_XMAS_1', 'Frigan'),
('MONSTER_WIND_XMAS_3', 'Tonnir'),
('MONSTER_WIND_XMAS_5', 'Ronolph'),
('MONSTER_WIND_XMAS_2', 'Glidy'),
('MONSTER_WIND_XMAS_4', 'Furglide'),
('MONSTER_WIND_XMAS_6', 'Arimasp'),
('MONSTER_FIRE_XMAS_1', 'Glim'),
('MONSTER_FIRE_XMAS_3', 'Kobold'),
('MONSTER_FIRE_XMAS_2', 'Gathos'),
('MONSTER_FIRE_XMAS_4', 'Ahathul'),
('MONSTER_FIRE_XMAS_5', 'Centoleon'),
('MONSTER_EARTH_VIRAL', 'Kingpeat'),
('MONSTER_WATER_LOV_1', 'Phibie'),
('MONSTER_WATER_LOV_2', 'Amphibie'),
('MONSTER_WATER_LOV_3', 'Nagapet'),
('MONSTER_WATER_LOV_4', 'Naga'),
('MONSTER_WIND_LOV_1', 'Rabby'),
('MONSTER_WIND_LOV_2', 'Harecloud'),
('MONSTER_WIND_LOV_3', 'Marshy'),
('MONSTER_WIND_LOV_4', 'Claumbet'),
('MONSTER_WIND_LOV_5', 'Keeper'),
('MONSTER_FIRE_LOV_1', 'Hellkite'),
('MONSTER_FIRE_LOV_2', 'Hellho'),
('MONSTER_FIRE_LOV_3', 'Hellpiep'),
('MONSTER_EARTH_LOV_1', 'Peagolin'),
('MONSTER_EARTH_LOV_2', 'Dodosaur'),
('MONSTER_EARTH_LOV_3', 'Minitaur'),
('MONSTER_EARTH_LOV_4', 'Teenotaur'),
('MONSTER_EARTH_LOV_5', 'Megataurus'),
('MONSTER_EARTH_LOV_6', 'Dragotaurus'),
('MONSTER_DUNGEON_LOV_1', 'Nimblo'),
('MONSTER_DUNGEON_LOV_2', 'Crysbee'),
('MONSTER_DUNGEON_LOV_3', 'Grempie'),
('MONSTER_DUNGEON_LOV_4', 'Gremler'),
('MONSTER_WATER_APR_1', 'Lilly'),
('MONSTER_WATER_APR_2', 'Lotty'),
('MONSTER_WATER_APR_3', 'Lasvador'),
('MONSTER_WIND_APR_1', 'Cony'),
('MONSTER_WIND_APR_2', 'Bunny'),
('MONSTER_WIND_APR_3', 'Lapin'),
('MONSTER_FIRE_APR_1', 'Lagart'),
('MONSTER_FIRE_APR_2', 'Chimero'),
('MONSTER_EARTH_APR_1', 'Irislyn'),
('MONSTER_EARTH_APR_2', 'Clawbloom'),
('MONSTER_DUNGEON_APR_1', 'Chep'),
('MONSTER_DUNGEON_APR_2', 'Gob'),
('MONSTER_WATER_JUN_1', 'Seamianti'),
('MONSTER_WATER_JUN_2', 'Martigra'),
('MONSTER_WATER_JUN_3', 'Manateecor'),
('MONSTER_WIND_JUN_1', 'Cyclodilly'),
('MONSTER_WIND_JUN_2', 'Alleviator'),
('MONSTER_FIRE_JUN_1', 'Kokosun'),
('MONSTER_FIRE_JUN_2', 'Sunguin'),
('MONSTER_FIRE_JUN_3', 'Glimp'),
('MONSTER_FIRE_JUN_4', 'Ignis'),
('MONSTER_EARTH_JUN_1', 'Pugberry'),
('MONSTER_EARTH_JUN_2', 'Kerberos'),
('MONSTER_DUNGEON_JUN_1', 'Crabby'),
('MONSTER_DUNGEON_JUN_2', 'Craboss'),
('MONSTER_WATER_NEXT_1', 'Mousea'),
('MONSTER_WATER_NEXT_2', 'Plesio'),
('MONSTER_WATER_HOL_1', 'Snorkly'),
('MONSTER_WATER_HOL_2', 'Divie'),
('MONSTER_WATER_WIN_1', 'Frosty'),
('MONSTER_WATER_WIN_2', 'Toady'),
('MONSTER_WATER_SPR_1', 'Peligard'),
('MONSTER_WATER_SPR_2', 'Costgard'),
('MONSTER_WIND_NEXT_1', 'Mothy'),
('MONSTER_WIND_NEXT_2', 'Yggy'),
('MONSTER_WIND_HOL_1', 'Owlling'),
('MONSTER_WIND_HOL_2', 'Owliana'),
('MONSTER_WIND_WIN_1', 'Blu'),
('MONSTER_WIND_WIN_2', 'Aquablu'),
('MONSTER_WIND_WIN_3', 'Ultrablu'),
('MONSTER_WIND_WIN_4', 'Slinky'),
('MONSTER_WIND_WIN_5', 'Garlant'),
('MONSTER_WIND_SPR_1', 'Chamuito'),
('MONSTER_WIND_SPR_2', 'Dinotto'),
('MONSTER_FIRE_NEXT_1', 'Hippfie'),
('MONSTER_FIRE_NEXT_2', 'Mick'),
('MONSTER_FIRE_HOL_1', 'Cutiehat'),
('MONSTER_FIRE_HOL_2', 'Cloak'),
('MONSTER_FIRE_HOL_3', 'Witchan'),
('MONSTER_FIRE_SPR_1', 'Kitsun'),
('MONSTER_FIRE_SPR_2', 'Nogitsun'),
('MONSTER_EARTH_NEXT_1', 'Beanie'),
('MONSTER_EARTH_NEXT_2', 'Frutucan'),
('MONSTER_EARTH_WIN_1', 'Bako'),
('MONSTER_EARTH_WIN_2', 'Eloko'),
('MONSTER_EARTH_WIN_3', 'Sylvan'),
('MONSTER_EARTH_SPR_1', 'Seedo'),
('MONSTER_EARTH_SPR_2', 'Dandeliosaur'),
('MONSTER_DUNGEON_NEXT_1', 'Satyrus'),
('MONSTER_DUNGEON_NEXT_2', 'Silenus'),
('MONSTER_DUNGEON_NEXT_3', 'Dionus'),
('MONSTER_DUNGEON_NEXT_4', 'Raphy'),
('MONSTER_DUNGEON_NEXT_5', 'Wolfshroom'),
('MONSTER_DUNGEON_HOL_1', 'Zizzi'),
('MONSTER_DUNGEON_HOL_2', 'Zuzzu'),
('MONSTER_DUNGEON_SPR_1', 'Phanty'),
('MONSTER_DUNGEON_SPR_2', 'Phantifurry'),
('MONSTER_DUNGEON_SPR_3', 'Phanticora'),
('MONSTER_DUNGEON_WIN_1', 'Blosstopus'),
('MONSTER_DUNGEON_WIN_2', 'Florantul');

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
