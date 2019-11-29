<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");

session_start();
if(!isset($_SESSION['login']))
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));

$countGym = $db->getQuery('SELECT COUNT(*) AS count_row FROM gyms');
$countLib = $db->getQuery('SELECT COUNT(*) AS count_row FROM libs');
$countStops = $db->getQuery('SELECT COUNT(*) AS count_row FROM stops');
$countCreature = $db->getQuery('SELECT COUNT(*) AS count_row FROM spots');
?>


<h1>Arenas (<?php echo $countGym[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanGymButton" value="Clean arenas">

<h1>Librarys (<?php echo $countLib[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanLibButton" value="Clean librarys">

<h1>Buildings (<?php echo $countStops[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanBuildingsButton" value="Clean buildings">

<h1>Creatures (<?php echo $countCreature[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanCreatureLogs" value="Clean creatures">

<h1>Drop database (<?php echo $countGym[0]["count_row"] + $countStops[0]["count_row"] + $countCreature[0]["count_row"]; ?>)</h1>
<input type="submit" id="dropDatabaseButton" value="Drop Database">