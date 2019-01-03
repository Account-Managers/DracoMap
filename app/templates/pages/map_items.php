<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
session_start();
?>
<script>
function AddMarkerToMap(className, icon_url, icon_size, lat, long, message)
{
	var image = new L.Icon({
		iconUrl: icon_url,
		iconSize: [icon_size, icon_size]
	});
			
	marker = new L.marker([parseFloat(lat), parseFloat(long)],{
		icon: image
	}).bindPopup(message);
	map.addLayer(marker);
	marker._icon.classList.add(className);
	
	if(!$("#map_container #toggle_creatures").prop("checked") && className == "creatures")
	{
		map.removeLayer(marker);
	}
	
	if(!$("#map_container #toggle_gyms").prop("checked") && className == "gym")
	{
		map.removeLayer(marker);
	}
	
	if(!$("#map_container #toggle_building").prop("checked") && className == "stops")
	{
		map.removeLayer(marker);
	}
}

// CREATURES
<?php
$Creatures = $db->getQuery('SELECT * FROM spots');
foreach ($Creatures as $CreatureRow) {
	if($CreatureRow["pokemon"] == null || $CreatureRow["pokemon"] == "")
		continue;
	
	$infoCreatureRow = $db->getQuery('SELECT * FROM pokedex WHERE id = ? LIMIT 1', array($CreatureRow["pokemon"]));
?>
AddMarkerToMap("creatures", "<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $infoCreatureRow[0]["id"]; ?>.png", "45", "<?php echo $CreatureRow["latitude"]; ?>", "<?php echo $CreatureRow["longitude"]; ?>", '<center style="width: 180px"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $infoCreatureRow[0]["id"]; ?>.png" width="75"><hr/><b><?php echo $infoCreatureRow[0]["monster"]; ?></b><br/>CP : <b><?php echo $CreatureRow["cp"]; ?></b><br />IV : <b><?php echo $CreatureRow["iv"]; ?></b>%<br /><hr/>Founded the : <b><?php echo date('d/m/Y', strtotime($CreatureRow["date"])); ?></b><br/>at : <b><?php echo date('h:iA', strtotime($CreatureRow["date"])); ?></b><br/>by : <b><?php echo $CreatureRow["spotter"]; ?></b><hr/>Latitude : <b><?php echo $CreatureRow["latitude"]; ?></b><br/>Longitude : <b><?php echo $CreatureRow["longitude"]; ?></b><br/><a href="https://www.google.com/maps/?daddr=<?php echo $CreatureRow["latitude"]; ?>,<?php echo $CreatureRow["longitude"]; ?>" target="_blank">Google Map</a><?php if(isset($_SESSION['login'])) { ?><hr/><div class="like_count <?php if($CreatureRow["good"] != 0 && $CreatureRow["good"] > 0) { echo "like"; } else if($CreatureRow["good"] != 0 && $CreatureRow["good"] < 0) { echo "unlike"; } ?>"><i class="fas fa-thumbs-up like_button" id="<?php echo $CreatureRow["spotid"]; ?>"></i> <?php echo $CreatureRow["good"]; ?> <i class="far fa-thumbs-down unlike_button" id="<?php echo $CreatureRow["spotid"]; ?>"></i></div><?php } ?></center>');
<?php
}
?>

// GYMS
<?php
$Gyms = $db->getQuery('SELECT * FROM gyms');
foreach ($Gyms as $GymsRow) {
	if($GymsRow["gteam"] != "1" && $GymsRow["gteam"] != "2" && $GymsRow["gteam"] != "3")
		continue;
	
	$teamInfo = $db->getQuery('SELECT * FROM teams WHERE tid = ? LIMIT 1', array($GymsRow["gteam"]));
?>
AddMarkerToMap("gym", "<?php echo $config['websiteAssetsUrl']; ?>/images/gyms/<?php echo $GymsRow["gteam"]; ?>.png", "50", "<?php echo $GymsRow["glatitude"]; ?>", "<?php echo $GymsRow["glongitude"]; ?>", '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/gyms/<?php echo $GymsRow["gteam"]; ?>.png" width="75"><hr/><b><?php echo $GymsRow["gname"]; ?></b><br/><hr />Team : <b><?php echo $teamInfo[0]["tname"]; ?></b></center>');
<?php
}
?>

// STOPS
<?php
$Stops = $db->getQuery('SELECT * FROM stops');
foreach ($Stops as $StopsRow) {
	$size = 45;
	
	if($StopsRow["type"] == "STOP")
		$size = 25;
	
	if($StopsRow["type"] == "DUNGEON_STOP")
		$size = 25;
	
	if($StopsRow["type"] == "LIBRARY")
		$StopsRow["type"] = "1";
?>
AddMarkerToMap("stops", "<?php echo $config['websiteAssetsUrl']; ?>/images/stops/<?php echo $StopsRow["type"]; ?>.png", <?php echo $size; ?>, "<?php echo $StopsRow["slatitude"]; ?>", "<?php echo $StopsRow["slongitude"]; ?>", '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/stops/<?php echo $StopsRow["type"]; ?>.png" width="75"><hr/><b><?php echo $StopsRow["sname"]; ?></b><hr/>Founded the : <b><?php echo date('d/m/Y', strtotime($StopsRow["date"])); ?></b><br/>at : <b><?php echo date('h:iA', strtotime($StopsRow["date"])); ?></b><br/>by : <b><?php echo $StopsRow["questby"]; ?></b></center>');
<?php
}
?>
</script>