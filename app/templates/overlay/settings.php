<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");

session_start();
if(!isset($_SESSION['login']))
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
?>

<h1>Change my username</h1>
<form id="settingsUsernameForm">
	<input type="text" id="settingsUsername" placeholder="Username" value="<?php echo $userInfo[0]["uname"]; ?>" maxlength="20"></input>
	<input type="submit" id="settingsUsernameButton" value="Edit my username">
</form>

<h1>Change my email</h1>
<form id="settingsEmailForm">
	<input type="text" id="settingsEmail" placeholder="Email" value="<?php echo $userInfo[0]["email"]; ?>"></input>
	<input type="submit" id="settingsEmailButton" value="Edit my email">
</form>

<h1>Change my password</h1>
<form id="settingsPasswordForm">
	<input type="password" id="settingsLastPassword" placeholder="Current password"></input>
	<input type="password" id="settingsPassword" placeholder="New password"></input>
	<input type="password" id="settingsPasswordConfirm" placeholder="Confirm your new password"></input>
	<input type="submit" id="settingsPasswordConfirmButton" value="Edit my password">
</form>

<h1>Change my avatar</h1>
<form id="settingsAvatarImageForm">
	<input type="file" name="image" id="settingsAvatarImage"/>
	<input type="submit" id="settingsAvatarImageButton" value="Edit my avatar">
</form>