<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(!isset($_SESSION['login'])) 
	return;

if(!isset($_GET["like"]) && !isset($_GET["unlike"]))
	return;

if(!isset($_GET["id"]) || !is_numeric($_GET["id"]))
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
$spotInfo = $db->getQuery('SELECT * FROM spots WHERE spotid=?', array($_GET["id"]));
if($spotInfo == null)
	return;

$countLike = $db->getQuery('SELECT * FROM user_like WHERE spot_id=? AND user_id=?', array($_GET["id"], $userInfo[0]["id"]));
if(count($countLike) != 0)
{
	echo "error;You have already voted";
	return;
}

$db->executeQuery('INSERT INTO user_like (spot_id, user_id) VALUES (?, ?)', array($_GET["id"], $userInfo[0]["id"]));
if(isset($_GET["like"]))
{
	$db->executeQuery('UPDATE spots SET good = good + 1 WHERE spotid = ?', array($_GET["id"]));
}
else if(isset($_GET["unlike"]))
{
	$db->executeQuery('UPDATE spots SET good = good - 1 WHERE spotid = ?', array($_GET["id"]));
}
echo "success;Your vote has been taken into account";