<?php
require_once("../database/database.php");
require_once("../../includes/config.php");

session_start();
if(!isset($_SESSION['login'])) 
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
if(count($userInfo) == 0)
	return;

if(!isset($_FILES['file']) || !is_uploaded_file($_FILES['file']['tmp_name'])) {
	echo "error;Please select a file";
	return;
}

if($_FILES['file']['error'] !== UPLOAD_ERR_OK) {
	echo "error;The upload failed, please try again";
	return;
}

if($_FILES['file']['size'] > 2 * 1024 * 1024) {
	echo "error;The image must be smaller than 2 MB";
	return;
}

// Validate the real image type from the file contents, not the client-supplied mime type.
$info = @getimagesize($_FILES['file']['tmp_name']);
$allowed = array(IMAGETYPE_PNG, IMAGETYPE_JPEG, IMAGETYPE_GIF);
if($info === false || !in_array($info[2], $allowed, true)) {
	echo "error;The format of your image is invalid";
	return;
}

$extension = image_type_to_extension($info[2], false);
$avatar = $userInfo[0]["uname"] . "." . $extension;

if(!move_uploaded_file($_FILES['file']['tmp_name'], "../../avatars/" . $avatar)) {
	echo "error;The image could not be saved";
	return;
}

$db->executeQuery('UPDATE users SET avatar = ? WHERE id = ? LIMIT 1', array($avatar, $_SESSION['login']));
echo "success;Your avatar has been changed;avatars/" . $avatar;
