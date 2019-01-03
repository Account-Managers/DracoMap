<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
?>

<h1 style="margin-top: 18vh">Register</h1>

<form id="registerForm">
	<input type="text" id="registerNickname" placeholder="Username" maxlength="20"></input>
	<input type="text" id="registerEmail" placeholder="Email"></input>
	<input type="password" id="registerPassword" placeholder="Password"></input>
	<input type="password" id="confirmPassword" placeholder="Confirm your password"></input>
	<input type="submit" id="registerButton" value="Register">
</form>