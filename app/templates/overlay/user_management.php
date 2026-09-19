<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
require_once("../../../includes/helpers.php");

session_start();
if(!isset($_SESSION['login']))
	return;

$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
if(count($userInfo) == 0 || $userInfo[0]["usergroup"] != 4)
	return;

$users = $db->getQuery('SELECT id, uname, email, usergroup, registered FROM users ORDER BY id ASC');

$groupNames = array();
foreach ($db->getQuery('SELECT id, groupname FROM usergroup') as $group) {
	$groupNames[$group["id"]] = $group["groupname"];
}
?>

<h1>User Management</h1>
<p class="desc">Roles are stored in the database. Assign the <b>admin</b> or <b>founder</b> group with phpMyAdmin if needed.</p>

<div class="user_management_list">
	<table border="0" cellpadding="6" cellspacing="0">
		<tr>
			<th>ID</th>
			<th>Username</th>
			<th>Email</th>
			<th>Group</th>
			<th>Registered</th>
		</tr>
		<?php foreach ($users as $user) { ?>
		<tr>
			<td><?php echo e($user["id"]); ?></td>
			<td><?php echo e($user["uname"]); ?></td>
			<td><?php echo e($user["email"]); ?></td>
			<td><?php echo e(isset($groupNames[$user["usergroup"]]) ? $groupNames[$user["usergroup"]] : $user["usergroup"]); ?></td>
			<td><?php echo e($user["registered"]); ?></td>
		</tr>
		<?php } ?>
	</table>
</div>
