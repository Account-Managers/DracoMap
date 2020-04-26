<?php
session_start();
require_once("../database/database.php");
require_once("../../includes/config.php");

if (!isset($_SESSION['login'])) {
	echo "error;please login to vote";
	return;
}

$UserID = $_SESSION['login'];

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($UserID));
if ($userInfo[0]["usergroup"] < 2) {
	echo "error;You do not have permission to vote";
	return;
}

if (!isset($_GET["like"]) && !isset($_GET["unlike"]))
	return;

if (!isset($_GET["id"]))
	return;

$SpotID = $_GET["id"];

$spotInfo = $db->getQuery('SELECT * FROM creatures WHERE spotid=?', array($SpotID));
if ($spotInfo == null) {
	$db->executeQuery('DELETE FROM user_like WHERE spot_id=?', array($SpotID));
	return;
}

if (isset($_GET["like"])) {
	$voted = 1 ;
} else if (isset($_GET["unlike"])) {
	$voted = -1 ;
}

$GoodCount = $spotInfo[0]['good'] + $voted;

$countLike = $db->getQuery('SELECT * FROM user_like WHERE spot_id=? AND user_id=?', array($SpotID, $UserID));
if (count($countLike) == 0) {
	$db->executeQuery('INSERT INTO user_like (spot_id, user_id, voted) VALUES (?, ?, ?)', array($SpotID, $UserID, $voted));
	$db->executeQuery('UPDATE creatures SET good = ? WHERE spotid = ?', array($GoodCount, $SpotID));
	echo "success;Your new vote has been taken into account";
	return;
} else {	
	$countLike2 = $db->getQuery('SELECT * FROM user_like WHERE spot_id=? AND user_id=? AND voted=?', array($SpotID, $UserID, $voted));
	if (count($countLike2) == 0) {
		$db->executeQuery('UPDATE creatures SET good = ? WHERE spotid=?', array($GoodCount, $SpotID));
		$db->executeQuery('DELETE FROM user_like WHERE spot_id=? AND user_id=?', array($SpotID, $UserID));
		echo "success;Your changing vote has been taken into account";
		return;
	} else {
		echo "error;You have already voted";
		return;
	}
}
?>
