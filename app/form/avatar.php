<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));

if(!isset($_FILES['file'])) {
	echo "error;Please select a file";
	return;
}

$name = $_FILES['file']['name'];
$ftype = $_FILES['file']['type'];

if($_FILES['file']['type'] != "image/png" && $_FILES['file']['type'] != "image/jpg" && $_FILES['file']['type'] != "image/jpeg" && $_FILES['file']['type'] != "image/gif")
{
	echo "error;The format of your image is invalid";
	return;
}

move_uploaded_file($_FILES['file']['tmp_name'], "../../avatars/".$userInfo[0]["uname"].".png");
$db->executeQuery('UPDATE users SET avatar = ? WHERE id = ? LIMIT 1', array($userInfo[0]["uname"].".png", $_SESSION['login']));
echo "success;Your avatar has been changed;avatars/".$userInfo[0]["uname"].".png";