<?php
session_start();
require_once("../../database/database.php");
require_once("../../../includes/config.php");
?>
<div id="map">
</div>

<script>
var map = L.map('map').setView([<?php echo $_SESSION['mapCenter']; ?>], <?php echo $_SESSION['mapSize']; ?>);
L.tileLayer('https://{s}.tile.osm.org/{z}/{x}/{y}.png').addTo(map);

map.invalidateSize();
</script>