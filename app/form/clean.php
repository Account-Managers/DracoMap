<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
if($userInfo[0]["usergroup"] != 3)
	return;

if(isset($_GET["type"]) && $_GET["type"] == "gyms")
{
	$db->executeQuery('TRUNCATE TABLE gyms');
	echo "success;Arenas have been deleted";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "libs")
{
	$db->executeQuery('TRUNCATE TABLE libs');
	echo "success;Librarys have been deleted";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "buildings")
{
	$db->executeQuery('TRUNCATE TABLE stops');
	echo "success;All others have been deleted";
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
	$db->executeQuery('DELETE FROM stops WHERE type = ? OR type = ?', array("STOP", "DUNGEON_STOP"));
	$db->executeQuery('UPDATE creatures SET visible = ?', array(0));
	echo "success;Database have been cleaned";
	return;
}
else if(isset($_GET["type"]) && $_GET["type"] == "all")
{
	$db->executeQuery('TRUNCATE TABLE gyms');
	$db->executeQuery('TRUNCATE TABLE libs');
	$db->executeQuery('TRUNCATE TABLE stops');
	$db->executeQuery('TRUNCATE TABLE creatures');
	$db->executeQuery('TRUNCATE TABLE players');
	echo "success;Database have been cleaned";
	return;
}