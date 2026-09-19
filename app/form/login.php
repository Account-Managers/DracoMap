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

$storedHash = $stmt[0]["upass"];
$passwordOk = password_verify($_POST['password'], $storedHash);
if(!$passwordOk && $storedHash === md5($_POST['password'])) {
	$passwordOk = true;
	$db->executeQuery('UPDATE users SET upass = ? WHERE id = ? LIMIT 1', array(password_hash($_POST['password'], PASSWORD_DEFAULT), $stmt[0]["id"]));
}

if(!$passwordOk) {
	echo "error;Password invalid";
	return;
}

session_regenerate_id(true);
$_SESSION['login'] = $stmt[0]["id"];
echo "success";