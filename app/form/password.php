<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));

if(empty($_POST['last_password']) || empty($_POST['password']) || empty($_POST['confirm_password'])) 
{
	echo "error;Please complete all fields";
	return;
}

if(md5($_POST['last_password']) != $userInfo[0]["upass"]) {
	echo "error;Your current password is incorrect";
	return;
}

if(strlen($_POST['password']) < 3) {
	echo "error;Your password must contain at least 3 characters";
	return;
}

if($_POST['last_password'] == $_POST['password']) {
	echo "error;Your new password is the same as the current";
	return;
}

if($_POST['password'] != $_POST['confirm_password']) {
	echo "error;Your passwords are different";
	return;
}

$db->executeQuery('UPDATE users SET upass = ? WHERE id = ? LIMIT 1', array(md5($_POST['password']), $_SESSION['login']));
echo "success;Your password has been changed";