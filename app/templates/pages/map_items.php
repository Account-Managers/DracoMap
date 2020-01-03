<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
session_start();
?>
<script>
var Id = 0;
var countId = 0;
var Marker = {};

// CREATURES
<?php
$Creatures = $db->getQuery('SELECT * FROM creatures WHERE visible = ?', array(1));
foreach ($Creatures as $CreatureRow) {
	if($CreatureRow["creature"] == null || $CreatureRow["creature"] == "")
		continue;
	
	$infoCreatureRow = $db->getQuery('SELECT * FROM bestiary WHERE id = ? LIMIT 1', array($CreatureRow["creature"]));
?>
	Id++;
	var marker = new MarkerClass({ category : "creatures", icon_url : "<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $infoCreatureRow[0]["id"]; ?>.png", icon_size : "45", lat: "<?php echo $CreatureRow["latitude"]; ?>", long: "<?php echo $CreatureRow["longitude"]; ?>", message: '<center style="width: 180px"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $infoCreatureRow[0]["id"]; ?>.png" width="75"><hr/><b>Sniper protocols:</b><br/>ACM: <a href="acm://<?php echo $infoCreatureRow[0]["monster"]; ?>/<?php echo $CreatureRow["latitude"]; ?>,<?php echo $CreatureRow["longitude"]; ?>" target="_blank">Snipe this!</a><br/>DracoSniper: <a href="dracosniper://<?php echo $infoCreatureRow[0]["monster"]; ?>/<?php echo $CreatureRow["latitude"]; ?>,<?php echo $CreatureRow["longitude"]; ?>" target="_blank">Snipe this!</a><hr/><b><?php echo $infoCreatureRow[0]["monster"]; ?></b><br/>CP : <b><?php echo $CreatureRow["cp"]; ?></b><br />IV : <b><?php echo $CreatureRow["iv"]; ?></b>%<br /><hr/>Founded the : <b><?php echo date('d/m/Y', strtotime($CreatureRow["date"])); ?></b><br/>at : <b><?php echo date('h:iA', strtotime($CreatureRow["date"])); ?></b><br/>by : <b><?php echo $CreatureRow["spotter"]; ?></b><hr/>Latitude : <b><?php echo $CreatureRow["latitude"]; ?></b><br/>Longitude : <b><?php echo $CreatureRow["longitude"]; ?></b><br/><a href="https://www.google.com/maps/?daddr=<?php echo $CreatureRow["latitude"]; ?>,<?php echo $CreatureRow["longitude"]; ?>" target="_blank">Google Map</a><?php if(isset($_SESSION['login'])) { ?><hr/><div class="like_count <?php if($CreatureRow["good"] != 0 && $CreatureRow["good"] > 0) { echo "like"; } else if($CreatureRow["good"] != 0 && $CreatureRow["good"] < 0) { echo "unlike"; } ?>"><i class="fas fa-thumbs-up like_button" id="<?php echo $CreatureRow["spotid"]; ?>"></i> <?php echo $CreatureRow["good"]; ?> <i class="far fa-thumbs-down unlike_button" id="<?php echo $CreatureRow["spotid"]; ?>"></i></div><?php } ?></center>' });
	Marker[Id] = marker;
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
	Id++;
	var marker = new MarkerClass({ category : "gym", icon_url : "<?php echo $config['websiteAssetsUrl']; ?>/images/gyms/<?php echo $GymsRow["team"]; ?>.png", icon_size : "50", lat: "<?php echo $GymsRow["latitude"]; ?>", long: "<?php echo $GymsRow["longitude"]; ?>", message: '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/gyms/<?php echo $GymsRow["team"]; ?>.png" width="75"><hr/><b><?php echo $GymsRow["name"]; ?></b><br/><hr />Team : <b><?php echo $teamInfo[0]["name"]; ?></b></center>' });
	Marker[Id] = marker;
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
	Id++;
	var marker = new MarkerClass({ category : "librarys", icon_url : "<?php echo $config['websiteAssetsUrl']; ?>/images/libs/<?php echo $LibsRow["team"]; ?>.png", icon_size : "50", lat: "<?php echo $LibsRow["latitude"]; ?>", long: "<?php echo $LibsRow["longitude"]; ?>", message: '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/libs/<?php echo $LibsRow["team"]; ?>.png" width="75"><hr/><b><?php echo $LibsRow["name"]; ?></b><br/><hr />Team : <b><?php echo $teamInfo[0]["name"]; ?></b></center>' });
	Marker[Id] = marker;
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
Id++;
	var marker = new MarkerClass({ category : "players", icon_url : "<?php echo $config['websiteAssetsUrl']; ?>/images/player.png", icon_size : "50", lat: "<?php echo $PlayersRow["latitude"]; ?>", long: "<?php echo $PlayersRow["longitude"]; ?>", message: '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/player.png" width="75"><hr/><b><?php echo $PlayersRow["name"]; ?></b><br/><?php echo $PlayersRow["latitude"]; ?>, <?php echo $PlayersRow["longitude"]; ?><hr />Team : <b><?php echo $teamInfo[0]["name"]; ?></b></center>'});
	Marker[Id] = marker;
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
	Id++;
	var marker = new MarkerClass({ category : "<?php echo $StopsRow["type"]; ?>", icon_url : "<?php echo $config['websiteAssetsUrl']; ?>/images/stops/<?php echo $StopsRow["type"]; ?>.png", icon_size : <?php echo $size; ?>, lat: "<?php echo $StopsRow["latitude"]; ?>", long: "<?php echo $StopsRow["longitude"]; ?>", message: '<center style="width: 180px;"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/stops/<?php echo $StopsRow["type"]; ?>.png" width="75"><hr/><b><?php echo $StopsRow["name"]; ?></b><hr/>Founded the : <b><?php echo date('d/m/Y', strtotime($StopsRow["date"])); ?></b><br/>at : <b><?php echo date('h:iA', strtotime($StopsRow["date"])); ?></b><br/>by : <b><?php echo $StopsRow["questby"]; ?></b></center>'});
	Marker[Id] = marker;
<?php
}
?>

async function loadMarker() {
	countId++;
	var marker = Marker[countId];
	
	if(marker != null)
	{
		await marker.init(function() {
			loadMarker();
		});
	}
}

loadMarker();

</script>