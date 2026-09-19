<?php
session_start();
require_once("../../database/database.php");
require_once("../../../includes/config.php");
require_once("../../../includes/helpers.php");

$mapCenter = isset($_SESSION['mapCenter']) ? $_SESSION['mapCenter'] : $config['mapCenter'];
if(!preg_match('/^-?\d+(\.\d+)?\s*,\s*-?\d+(\.\d+)?$/', $mapCenter))
	$mapCenter = $config['mapCenter'];
list($lat, $long) = array_map('trim', explode(',', $mapCenter));
$mapCenter = ((float)$lat) . ', ' . ((float)$long);

$mapSize = isset($_SESSION['mapSize']) ? (int)$_SESSION['mapSize'] : (int)$config['mapSize'];
if($mapSize < 1 || $mapSize > 19)
	$mapSize = 14;
?>
<div id="map">
</div>

<script>
var map = L.map('map').setView([<?php echo e($mapCenter); ?>], <?php echo $mapSize; ?>);
//L.tileLayer('https://{s}.tile.osm.org/{z}/{x}/{y}.png').addTo(map);
L.tileLayer('https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png').addTo(map);

map.invalidateSize();
</script>
