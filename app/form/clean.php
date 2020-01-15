<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
if($userInfo[0]["usergroup"] != 3)
	return;

if(isset($_GET["type"]) && $_GET["type"] == "pilars")
{
	$db->executeQuery('DELETE FROM `stops` WHERE `name` LIKE "%dungeon%"');
	$db->executeQuery('DELETE FROM `stops` WHERE `name` LIKE "%pilar%" ');
	echo "success;Pilars and Dungeon Stops have been deleted";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "gyms")
{
	$db->executeQuery('TRUNCATE TABLE gyms');
	echo "success;Arenas has been deleted";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "libs")
{
	$db->executeQuery('TRUNCATE TABLE libs');
	echo "success;Libraries has been deleted";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "portals")
{
	$db->executeQuery('DELETE FROM `stops` WHERE `name` LIKE "%portal%" AND  `date` <= DATE_SUB(NOW(),INTERVAL 12 HOUR)');
	$db->executeQuery('DELETE FROM `stops` WHERE `name` LIKE "%roost%" AND  `date` <= DATE_SUB(NOW(),INTERVAL 12 HOUR)');
	echo "success;Portals and Roosts older than 12 hours have been deleted";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "buildings")
{
	$db->executeQuery('TRUNCATE TABLE stops');
	echo "success; All Others has been deleted";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "creatures")
{
	$db->executeQuery('TRUNCATE TABLE creatures');
	echo "success;Creatures have been deleted";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "clearTimer")
{
	$db->executeQuery('DELETE FROM `stops` WHERE `name` LIKE "%portal%" AND  `date` <= DATE_SUB(NOW(),INTERVAL 24 HOUR)');
	$db->executeQuery('DELETE FROM `stops` WHERE `name` LIKE "%roost%" AND  `date` <= DATE_SUB(NOW(),INTERVAL 24 HOUR)');
	$db->executeQuery('DELETE FROM stops WHERE type = ? OR type = ?', array("STOP", "DUNGEON_STOP"));
	$db->executeQuery('UPDATE creatures SET visible = ? WHERE `date` <= DATE_SUB(NOW(),INTERVAL 1 HOUR)', array(0));
	$db->executeQuery('DELETE FROM `stops` WHERE `name` LIKE "%portal%" AND  `date` <= DATE_SUB(NOW(),INTERVAL 24 HOUR)');
	echo "success;Map has been cleaned from old entries";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "all")
{
	$db->executeQuery('TRUNCATE TABLE gyms');
	$db->executeQuery('TRUNCATE TABLE libs');
	$db->executeQuery('TRUNCATE TABLE stops');
	$db->executeQuery('TRUNCATE TABLE creatures');
	$db->executeQuery('TRUNCATE TABLE players');
	$db->executeQuery('TRUNCATE TABLE user_like');
	echo "success;Database has been cleaned";
	return;
}