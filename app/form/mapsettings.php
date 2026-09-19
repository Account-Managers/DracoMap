<?php
session_start();
require_once("../database/database.php");
require_once("../../includes/config.php");

if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
if(count($userInfo) == 0)
	return;

$mapcenter = isset($_POST['mapcenter']) ? trim($_POST['mapcenter']) : '';
$mapsize = isset($_POST['mapsize']) ? (int)$_POST['mapsize'] : 0;
$hidePilars = !empty($_POST['hidepilars']) ? 1 : 0;
$hideObelisks = !empty($_POST['hideobelisks']) ? 1 : 0;

if(!preg_match('/^-?\d+(\.\d+)?\s*,\s*-?\d+(\.\d+)?$/', $mapcenter)) {
	echo "error;Map center must look like \"40.777, -73.969\"";
	return;
}

if($mapsize < 1 || $mapsize > 19) {
	echo "error;Map size must be between 1 and 19";
	return;
}

// Normalize to plain numeric values so nothing user-supplied reaches the map JS.
list($lat, $long) = array_map('trim', explode(',', $mapcenter));
$mapcenter = ((float)$lat) . ', ' . ((float)$long);

$_SESSION['mapCenter'] = $mapcenter;
$_SESSION['mapSize'] = $mapsize;
$_SESSION['hidePilars'] = $hidePilars;
$_SESSION['hideObelisks'] = $hideObelisks;

$db->executeQuery('UPDATE users SET mapCenter = ?, mapSize = ?, hidePilars = ?, hideObelisks = ? WHERE id = ? LIMIT 1', array($mapcenter, $mapsize, $hidePilars, $hideObelisks, $_SESSION['login']));
echo "success;Your map settings have been changed, please logout and relogin to take affect changes on right menu";
