<?php
session_start();
session_destroy();
unset($_SESSION['login']);
unset($_SESSION['pin']);
header("Location: index.php");
?>
<script>
	intervalClearDatabase = 999999 * 60;
	counterClear = 999999 * 60;
</script>
