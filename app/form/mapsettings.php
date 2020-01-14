<?php
session_start();
require_once("../database/database.php");
require_once("../../includes/config.php");

if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));

/*
TODO: check input of MapCenter
*/

$_SESSION['mapCenter']=$_POST['mapcenter'];
$_SESSION['mapSize']=$_POST['mapsize'];
$_SESSION['hidePilars']=$_POST['hidepilars'];
$_SESSION['hideObelisks']=$_POST['hideobelisks'];

$db->executeQuery('UPDATE users SET mapCenter = ?, mapSize = ?, hidePilars = ?, hideObelisks = ? WHERE id = ? LIMIT 1', array($_POST['mapcenter'], $_POST['mapsize'], $_POST['hidepilars'], $_POST['hideobelisks'], $_SESSION['login']));
echo "success;Your map settings have been changed, please logout and relogin to take affect changes on right menu";


