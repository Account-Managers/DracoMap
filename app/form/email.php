<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));

if(empty($_POST['email'])) 
{
	echo "error;Please complete all fields";
	return;
}

if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
	echo "error;Your email is invalid";
	return;
}

if($_POST['email'] == $userInfo[0]["email"]) {
	echo "error;Your new email is the same as the current";
	return;
}

$stmt = $db->getQuery('SELECT * FROM users WHERE email=?', array($_POST['email']));
if(count($stmt) != 0)
{
	echo "error;Your email is already used";
	return;
}

$db->executeQuery('UPDATE users SET email = ? WHERE id = ? LIMIT 1', array($_POST['email'], $_SESSION['login']));
echo "success;Your email has been changed";