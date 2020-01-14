<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");

session_start();
if(!isset($_SESSION['login']))
	return;
$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));

//$CountP = $db->getQuery('SELECT COUNT(*) AS count_row FROM stops WHERE `name` LIKE "%Pilar%" ')
//$CountD = $db->getQuery('SELECT COUNT(*) AS count_row FROM stops WHERE `name` LIKE "%Dungeon%" ')
$countPilars = $db->getQuery('SELECT COUNT(*) AS count_row FROM stops WHERE `name` LIKE "%Pilar%" OR `name` LIKE "%Dungeon%"');
$countGym = $db->getQuery('SELECT COUNT(*) AS count_row FROM gyms');
$countLibs = $db->getQuery('SELECT COUNT(*) AS count_row FROM libs');
$countPortals = $db->getQuery('SELECT COUNT(*) AS count_row FROM stops WHERE (`name` LIKE "%Portal%" 
		OR `name` LIKE "%Roost%") AND `date` <= DATE_SUB(NOW(),INTERVAL 12 HOUR)');
$countStops = $db->getQuery('SELECT COUNT(*) AS count_row FROM stops');
$countCreature = $db->getQuery('SELECT COUNT(*) AS count_row FROM creatures');
?>


<h1>Pilars incl. Dungeon (<?php echo $countPilars[0]["count_row"] ; ?>)</h1>
<input type="submit" id="cleanPilarButton" value="Clean pilars">

<h1>Arenas (<?php echo $countGym[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanGymButton" value="Clean gyms">

<h1>Libraries (<?php echo $countLibs[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanLibButton" value="Clean libs">

<h1>Portals incl. Roosts > 12 hours (<?php echo $countPortals[0]["count_row"] ; ?>)</h1>
<input type="submit" id="cleanPortalButton" value="Clean portals">

<h1>All Others (<?php echo $countStops[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanBuildingsButton" value="Clean all others">

<h1>Creatures (<?php echo $countCreature[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanCreatureLogs" value="Clean creatures">

<h1>Drop database (<?php echo $countGym[0]["count_row"] + $countStops[0]["count_row"] + $countCreature[0]["count_row"]; ?>)</h1>
<input type="submit" id="dropDatabaseButton" value="Drop Database">