<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));

if(empty($_POST['username'])) 
{
	echo "error;Please complete all fields";
	return;
}

if(strlen($_POST['username']) < 3 || strlen($_POST['username']) > 20) {
	echo "error;Your username must contain between 3 and 20 characters";
	return;
}

if(!ctype_alnum($_POST['username'])) {
	echo "error;Your username must be alphanumeric";
	return;
}

if($_POST['username'] == $userInfo[0]["uname"]) {
	echo "error;Your new username is the same as the current";
	return;
}

$stmt = $db->getQuery('SELECT * FROM users WHERE uname=?', array($_POST['username']));
if(count($stmt) != 0)
{
	echo "error;Your username is already used";
	return;
}

$db->executeQuery('UPDATE users SET uname = ? WHERE id = ? LIMIT 1', array($_POST['username'], $_SESSION['login']));
echo "success;Your username has been changed;" .$_POST['username'];