<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
session_start();
?>
<script>
function AddMarkerToMap(category, icon_url, icon_size, lat, long, message)
{
	var image = new L.Icon({
		iconUrl: icon_url,
		iconSize: [icon_size, icon_size]
	});
			
	marker = new L.marker([parseFloat(lat), parseFloat(long)],{
		icon: image
	}).bindPopup(message);
	map.addLayer(marker);
	marker._icon.classList.add(category);
	
	$("#map_container .items_toggles input").each(function() {
		if(!$(this).prop("checked") && category == $(this).attr('class'))
		{
			map.removeLayer(marker);
		}
	});
}

// CREATURES
<?php
$Creatures = $db->getQuery('SELECT * FROM spots');
foreach ($Creatures as $CreatureRow) {
	if($CreatureRow["creature"] == null || $CreatureRow["creature"] == "")
		continue;
	
	$infoCreatureRow = $db->getQuery('SELECT * FROM bestiary WHERE id = ? LIMIT 1', array($CreatureRow["creature"]));
?>
AddMarkerToMap("creatures", "<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $infoCreatureRow[0]["id"]; ?>.png", "45", "<?php echo $CreatureRow["latitude"]; ?>", "<?php echo $CreatureRow["longitude"]; ?>", '<center style="width: 180px"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $infoCreatureRow[0]["id"]; ?>.png" width="75"><hr/><b>Sniper protocols:</b><br/>ACM: <a href="acm://<?php echo $infoCreatureRow[0]["monster"]; ?>/<?php echo $CreatureRow["latitude"]; ?>,<?php echo $CreatureRow["longitude"]; ?>" target="_blank">Snipe this!</a><br/>DracoSniper: <a href="dracosniper://<?php echo $infoCreatureRow[0]["monster"]; ?>/<?php echo $CreatureRow["latitude"]; ?>,<?php echo $CreatureRow["longitude"]; ?>" target="_blank">Snipe this!</a><hr/><b><?php echo $infoCreatureRow[0]["monster"]; ?></b><br/>CP : <b><?php echo $CreatureRow["cp"]; ?></b><br />IV : <b><?php echo $CreatureRow["iv"]; ?></b>%<br /><hr/>Founded the : <b><?php echo date('d/m/Y', strtotime($CreatureRow["date"])); ?></b><br/>at : <b><?php echo date('h:iA', strtotime($CreatureRow["date"])); ?></b><br/>by : <b><?php echo $CreatureRow["spotter"]; ?></b><hr/>Latitude : <b><?php echo $CreatureRow["latitude"]; ?></b><br/>Longitude : <b><?php echo $CreatureRow["longitude"]; ?></b><br/><a href="https://www.google.com/maps/?daddr=<?php echo $CreatureRow["latitude"]; ?>,<?php echo $CreatureRow["longitude"]; ?>" target="_blank">Google Map</a><?php if(isset($_SESSION['login'])) { ?><hr/><div class="like_count <?php if($CreatureRow["good"] != 0 && $CreatureRow["good"] > 0) { echo "like"; } else if($CreatureRow["good"] != 0 && $CreatureRow["good"] < 0) { echo "unlike"; } ?>"><i class="fas fa-thumbs-up like_button" id="<?php echo $CreatureRow["spotid"]; ?>"></i> <?php echo $CreatureRow["good"]; ?> <i class="far fa-thumbs-down unlike_button" id="<?php echo $CreatureRow["spotid"]; ?>"></i></div><?php } ?></center>');
<?php
}
?>

// GYMS
<?php
$Gyms = $db->getQuery('SELECT * FROM gyms');
foreach ($Gyms as $GymsRow) {
	if($GymsRow["team"] != "1" && $GymsRow["team"] != "2" && $GymsRow["team"] != "3")
		continue;
	
	$teamInfo = $db->getQuery('SELECT * FROM teams WHERE id = ? LIMIT 1', array($GymsRow["team"]));
?>
AddMarkerToMap("gym", "<?php echo $config['websiteAssetsUrl']; ?>/images/gyms/<?php echo $GymsRow["team"]; ?>.png", "50", "<?php echo $GymsRow["latitude"]; ?>", "<?php echo $GymsRow["longitude"]; ?>", '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/gyms/<?php echo $GymsRow["team"]; ?>.png" width="75"><hr/><b><?php echo $GymsRow["name"]; ?></b><br/><hr />Team : <b><?php echo $teamInfo[0]["name"]; ?></b></center>');
<?php
}
?>

// LIBS
<?php
$Libs = $db->getQuery('SELECT * FROM libs');
foreach ($Libs as $LibsRow) {
	if($LibsRow["team"] != "1" && $LibsRow["team"] != "2" && $LibsRow["team"] != "3")
		continue;
	
	$teamInfo = $db->getQuery('SELECT * FROM teams WHERE id = ? LIMIT 1', array($LibsRow["team"]));
?>
AddMarkerToMap("librarys", "<?php echo $config['websiteAssetsUrl']; ?>/images/libs/<?php echo $LibsRow["team"]; ?>.png", "50", "<?php echo $LibsRow["latitude"]; ?>", "<?php echo $LibsRow["longitude"]; ?>", '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/libs/<?php echo $LibsRow["team"]; ?>.png" width="75"><hr/><b><?php echo $LibsRow["name"]; ?></b><br/><hr />Team : <b><?php echo $teamInfo[0]["name"]; ?></b></center>');
<?php
}
?>

// Players
<?php
$Players = $db->getQuery('SELECT * FROM players');
foreach ($Players as $PlayersRow) {
	if($PlayersRow["team"] != "1" && $PlayersRow["team"] != "2" && $PlayersRow["team"] != "3")
		continue;
	
	$teamInfo = $db->getQuery('SELECT * FROM teams WHERE id = ? LIMIT 1', array($PlayersRow["team"]));

?>
AddMarkerToMap("players", "<?php echo $config['websiteAssetsUrl']; ?>/images/player.png", "50", "<?php echo $PlayersRow["latitude"]; ?>", "<?php echo $PlayersRow["longitude"]; ?>", '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/player.png" width="75"><hr/><b><?php echo $PlayersRow["name"]; ?></b><br/><?php echo $PlayersRow["latitude"]; ?>, <?php echo $PlayersRow["longitude"]; ?><hr />Team : <b><?php echo $teamInfo[0]["name"]; ?></b></center>');
<?php
}
?>

// STOPS
<?php
$Stops = $db->getQuery('SELECT * FROM stops');
foreach ($Stops as $StopsRow) {
	$size = 45;
	
	if($StopsRow["type"] == "STOP" || $StopsRow["type"] == "DUNGEON_STOP")
		$size = 25;


?>
AddMarkerToMap("<?php echo $StopsRow["type"]; ?>", "<?php echo $config['websiteAssetsUrl']; ?>/images/stops/<?php echo $StopsRow["type"]; ?>.png", <?php echo $size; ?>, "<?php echo $StopsRow["latitude"]; ?>", "<?php echo $StopsRow["longitude"]; ?>", '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/stops/<?php echo $StopsRow["type"]; ?>.png" width="75"><hr/><b><?php echo $StopsRow["name"]; ?></b><hr/>Founded the : <b><?php echo date('d/m/Y', strtotime($StopsRow["date"])); ?></b><br/>at : <b><?php echo date('h:iA', strtotime($StopsRow["date"])); ?></b><br/>by : <b><?php echo $StopsRow["questby"]; ?></b></center>');
<?php
}
?>
</script>