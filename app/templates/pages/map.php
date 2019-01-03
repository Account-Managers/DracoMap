<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
?>
<div id="map">
</div>

<script>
var map = L.map('map').setView([<?php echo $config['mapCenter']; ?>], 15);
L.tileLayer('https://{s}.tile.osm.org/{z}/{x}/{y}.png').addTo(map);

map.invalidateSize();
</script>