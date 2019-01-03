<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(isset($_SESSION['login'])) 
	return;

if(empty($_POST['username']) OR empty($_POST['password'])) 
{
	echo "error;Please complete all fields";
	return;
}

$stmt = $db->getQuery('SELECT * FROM users WHERE uname=?', array($_POST['username']));
if(count($stmt) == 0)
{
	echo "error;Username invalid";
	return;
}

if(md5($_POST['password']) != $stmt[0]["upass"]) {
	echo "error;Password invalid";
	return;
}

$_SESSION['login'] = $stmt[0]["id"];
echo "success";