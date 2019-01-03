<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
?>

<h1 style="margin-top: 18vh">Login</h1>

<form id="loginForm">
	<input type="text" id="loginNickname" placeholder="Username"></input>
	<input type="password" id="loginPassword" placeholder="Password"></input>
	<input type="submit" id="loginButton" value="Login">
</form>