<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(isset($_SESSION['login'])) 
	return;

if(empty($_POST['username']) OR empty($_POST['email']) OR empty($_POST['password']) OR empty($_POST['confirm_password'])) 
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

$stmt = $db->getQuery('SELECT * FROM users WHERE uname=?', array($_POST['username']));
if(count($stmt) != 0)
{
	echo "error;Your username is already used";
	return;
}

if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
	echo "error;Your email is invalid";
	return;
}

$stmt = $db->getQuery('SELECT * FROM users WHERE email=?', array($_POST['email']));
if(count($stmt) != 0)
{
	echo "error;Your email is already used";
	return;
}
	
if(strlen($_POST['password']) < 3) {
	echo "error;Your password must contain at least 3 characters";
	return;
}

if($_POST['password'] != $_POST['confirm_password']) {
	echo "error;Your passwords are different";
	return;
}

$db->executeQuery('INSERT INTO users (email, uname, upass, registered) VALUES (?, ?, ?, NOW())', array($_POST['email'], $_POST['username'], md5($_POST['password'])));
echo "success;You can now login;";