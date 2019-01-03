<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");

session_start();
if(!isset($_SESSION['login']))
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));

$countGym = $db->getQuery('SELECT COUNT(*) AS count_row FROM gyms');
$countStops = $db->getQuery('SELECT COUNT(*) AS count_row FROM stops');
$countCreature = $db->getQuery('SELECT COUNT(*) AS count_row FROM spots');
?>


<h1>Gyms (<?php echo $countGym[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanGymButton" value="Clean gyms">

<h1>Buildings (<?php echo $countStops[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanBuildingButton" value="Clean buildings">

<h1>Creatures (<?php echo $countCreature[0]["count_row"]; ?>)</h1>
<input type="submit" id="cleanCreatureLogs" value="Clean creatures">

<h1>Drop database (<?php echo $countGym[0]["count_row"] + $countStops[0]["count_row"] + $countCreature[0]["count_row"]; ?>)</h1>
<input type="submit" id="dropDatabaseButton" value="Drop Database">