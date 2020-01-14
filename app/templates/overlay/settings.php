<?php
session_start();
require_once("../../database/database.php");
require_once("../../../includes/config.php");

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

<h1>Change my map settings</h1>
<form id="settingsMapForm">
	 <table border="0" cellpadding="3" cellspacing="0">
    <tr>
      <td align="right" valign="top" width="400px">
      	<label for="settingsMapCenter">Map Center when reloading the map:</label>
      </td>
      <td align="right" valign="center" width="150px">
      	<input type="text" id="settingsMapCenter" placeholder="40.777, -73.969" value="<?php echo $_SESSION["mapCenter"]; ?>" maxlength="20"></input>
      </td>
    </tr>
    <tr>
      <td align="right" valign="top" width="400px">
      	<label for="settingsMapSize">Map Size when reloading the map:</label>
      </td>
      <td align="right" valign="center" width="150px">
      	<input type="number" id="settingsMapSize" min="1" max="20" value="<?php echo $_SESSION["mapSize"]; ?>"></input>
      </td>
    </tr>
    <tr>
      <td align="right" valign="top" width="500px">
      	<label for="settingsHidePilars">hide Pilars from map (if checked, Pilars and Dungeon will nod be loaded):</label>
      </td>
      <td align="right" valign="center" width="50px">
				<?php 
				if ($_SESSION['hidePilars'] == 1) {
				  echo '<input type="checkbox" id="settingsHidePilars" checked></input>';
				} else {
				  echo '<input type="checkbox" id="settingsHidePilars"></input>';	
				};
				?>
      </td>
    </tr>
    <tr>
      <td align="right" valign="top" width="500px">
      	<label for="settingsHideObelisks">hide Obelisks from map (if checked, Obelisks will nod be loaded):</label>
      </td>
      <td align="right" valign="center" width="50px">
				<?php
				if ($_SESSION['hideObelisks'] == 1) {
					echo '<input type="checkbox" id="settingsHideObelisks" checked></input>';
				} else {
					echo '<input type="checkbox" id="settingsHideObelisks"></input>';
				};
				?>
      </td>
    </tr>
   </table>

	<input type="submit" id="settingsMapSettingsButton" value="Edit my map settings">
</form>
<br><br><br><br>
