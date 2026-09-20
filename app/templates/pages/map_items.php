<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
require_once("../../../includes/helpers.php");
session_start();

$assets = $config['websiteAssetsUrl'];
$loggedIn = isset($_SESSION['login']);

// Prefetch lookup tables once instead of one query per marker (avoids N+1).
$bestiaryById = array();
foreach ($db->getQuery('SELECT id, monster FROM bestiary') as $item) {
	$bestiaryById[$item["id"]] = $item["monster"];
}

$teamById = array();
foreach ($db->getQuery('SELECT id, name FROM teams') as $team) {
	$teamById[$team["id"]] = $team["name"];
}

$markers = array();

// Rows imported from scanners carry an HTML coordinate suffix in `name`
// (e.g. 'Arena <br/> [40.76326086, -73.97623128]'). Keep only the clean label.
if (!function_exists('cleanMarkerName')) {
	function cleanMarkerName($name) {
		$name = preg_replace('/<br\s*\/?>\s*\[[^\]]*\]\s*$/i', '', (string)$name);
		return trim($name);
	}
}

// CREATURES
foreach ($db->getQuery('SELECT * FROM creatures WHERE visible = ?', array(1)) as $row) {
	if (empty($row["creature"]))
		continue;

	$monster = isset($bestiaryById[$row["creature"]]) ? $bestiaryById[$row["creature"]] : $row["creature"];
	$icon = $assets . "/images/icons/" . $row["creature"] . ".png";

	$message = '<center style="width: 180px"><img src="' . e($icon) . '" width="75">'
		. '<hr/><b>Sniper protocols:</b><br/>'
		. 'ACM: <a href="acm://' . e($monster) . '/' . e($row["latitude"]) . ',' . e($row["longitude"]) . '" target="_blank">Snipe this!</a><br/>'
		. 'DracoSniper: <a href="dracosniper://' . e($monster) . '/' . e($row["latitude"]) . ',' . e($row["longitude"]) . '" target="_blank">Snipe this!</a>'
		. '<hr/><b>' . e($monster) . '</b><br/>'
		. 'CP : <b>' . e($row["cp"]) . '</b><br/>IV : <b>' . e($row["iv"]) . '</b>%<br/>'
		. '<hr/>Founded the : <b>' . e(date('d/m/Y', strtotime($row["date"]))) . '</b><br/>'
		. 'at : <b>' . e(date('h:iA', strtotime($row["date"]))) . '</b><br/>'
		. 'by : <b>' . e($row["spotter"]) . '</b>'
		. '<hr/>Coords: <b>' . e($row["latitude"]) . ', ' . e($row["longitude"]) . '</b>'
		. '<br/><a href="https://www.google.com/maps/?daddr=' . e($row["latitude"]) . ',' . e($row["longitude"]) . '" target="_blank">Google Map</a>';

	if ($loggedIn) {
		$likeClass = "";
		if ($row["good"] != 0 && $row["good"] > 0)
			$likeClass = "like";
		else if ($row["good"] != 0 && $row["good"] < 0)
			$likeClass = "unlike";

		$message .= '<hr/><div class="like_count ' . $likeClass . '">'
			. '<i class="fas fa-thumbs-up like_button" id="' . e($row["spotid"]) . '"></i> ' . e($row["good"])
			. ' <i class="far fa-thumbs-down unlike_button" id="' . e($row["spotid"]) . '"></i></div>';
	}
	$message .= '</center>';

	$markers[] = array(
		"category" => "creatures",
		"icon_url" => $icon,
		"icon_size" => "45",
		"lat" => $row["latitude"],
		"long" => $row["longitude"],
		"message" => $message,
	);
}

// GYMS
foreach ($db->getQuery('SELECT * FROM gyms') as $row) {
	if ($row["team"] != "1" && $row["team"] != "2" && $row["team"] != "3")
		continue;

	$teamName = isset($teamById[$row["team"]]) ? $teamById[$row["team"]] : "";
	$icon = $assets . "/images/gyms/" . $row["team"] . ".png";

	$message = '<center style="width: 180px;"><img src="' . e($icon) . '" width="75">'
		. '<hr/><b>' . e(cleanMarkerName($row["name"])) . '</b><br/>'
		. '<hr/>Team : <b>' . e($teamName) . '<hr/></b>'
		. 'Founded the : <b>' . e(date('d/m/Y', strtotime($row["date"]))) . '</b><br/>'
		. 'at : <b>' . e(date('h:iA', strtotime($row["date"]))) . '</b><br/>'
		. 'by : <b>' . e($row["spotter"]) . '</b>'
		. '<hr/>Coords: <b>' . e($row["latitude"]) . ', ' . e($row["longitude"]) . '</b>'
		. '<br/><a href="https://www.google.com/maps/?daddr=' . e($row["latitude"]) . ',' . e($row["longitude"]) . '" target="_blank">Google Map</a></center>';

	$markers[] = array(
		"category" => "gym",
		"icon_url" => $icon,
		"icon_size" => "50",
		"lat" => $row["latitude"],
		"long" => $row["longitude"],
		"message" => $message,
	);
}

// LIBS
foreach ($db->getQuery('SELECT * FROM libs') as $row) {
	if ($row["team"] != "1" && $row["team"] != "2" && $row["team"] != "3")
		continue;

	$teamName = isset($teamById[$row["team"]]) ? $teamById[$row["team"]] : "";
	$icon = $assets . "/images/libs/" . $row["team"] . ".png";

	$message = '<center style="width: 180px;"><img src="' . e($icon) . '" width="75">'
		. '<hr/><b>' . e(cleanMarkerName($row["name"])) . '</b><br/>'
		. '<hr/>Team : <b>' . e($teamName) . '</b>'
		. '<hr/>Founded the : <b>' . e(date('d/m/Y', strtotime($row["date"]))) . '</b><br/>'
		. 'at : <b>' . e(date('h:iA', strtotime($row["date"]))) . '</b><br/>'
		. 'by : <b>' . e($row["spotter"]) . '</b>'
		. '<hr/>Coords: <b>' . e($row["latitude"]) . ', ' . e($row["longitude"]) . '</b>'
		. '<br/><a href="https://www.google.com/maps/?daddr=' . e($row["latitude"]) . ',' . e($row["longitude"]) . '" target="_blank">Google Map</a></center>';

	$markers[] = array(
		"category" => "librarys",
		"icon_url" => $icon,
		"icon_size" => "50",
		"lat" => $row["latitude"],
		"long" => $row["longitude"],
		"message" => $message,
	);
}

// PLAYERS
foreach ($db->getQuery('SELECT * FROM players') as $row) {
	if ($row["team"] != "1" && $row["team"] != "2" && $row["team"] != "3")
		continue;

	$teamName = isset($teamById[$row["team"]]) ? $teamById[$row["team"]] : "";
	$icon = $assets . "/images/player.png";

	$message = '<center style="width: 180px;"><img src="' . e($icon) . '" width="75">'
		. '<hr/><b>' . e($row["name"]) . ' Lv: ' . e($row["level"]) . '</b>'
		. '<hr/>Team : <b>' . e($teamName) . '</b>'
		. '<hr/>Coords: <b>' . e($row["latitude"]) . ', ' . e($row["longitude"]) . '</b>'
		. '<br/><a href="https://www.google.com/maps/?daddr=' . e($row["latitude"]) . ',' . e($row["longitude"]) . '" target="_blank">Google Map</a></center>';

	$markers[] = array(
		"category" => "players",
		"icon_url" => $icon,
		"icon_size" => "50",
		"lat" => $row["latitude"],
		"long" => $row["longitude"],
		"message" => $message,
	);
}

// STOPS
if (($_SESSION['hidePilars'] == 1) && ($_SESSION['hideObelisks'] == 1)) {
	$SQL = 'SELECT * FROM `stops` WHERE type != "STOP" AND type != "DUNGEON_STOP" AND type != "OBELISK"';
} elseif ($_SESSION['hidePilars'] == 1) {
	$SQL = 'SELECT * FROM `stops` WHERE type != "STOP" AND type != "DUNGEON_STOP"';
} elseif ($_SESSION['hideObelisks'] == 1) {
	$SQL = 'SELECT * FROM `stops` WHERE type != "OBELISK"';
} else {
	$SQL = 'SELECT * FROM stops';
}

foreach ($db->getQuery($SQL) as $row) {
	$size = 45;
	if ($row["type"] == "STOP" || $row["type"] == "DUNGEON_STOP")
		$size = 25;

	$icon = $assets . "/images/stops/" . $row["type"] . ".png";

	$message = '<center style="width: 180px;"><img src="' . e($icon) . '" width="75">'
		. '<hr/><b>' . e(cleanMarkerName($row["name"])) . '</b>'
		. '<hr/>Founded the : <b>' . e(date('d/m/Y', strtotime($row["date"]))) . '</b><br/>'
		. 'at : <b>' . e(date('h:iA', strtotime($row["date"]))) . '</b><br/>'
		. 'by : <b>' . e($row["spotter"]) . '</b>'
		. '<hr/>Coords: <b>' . e($row["latitude"]) . ', ' . e($row["longitude"]) . '</b>'
		. '<br/><a href="https://www.google.com/maps/?daddr=' . e($row["latitude"]) . ',' . e($row["longitude"]) . '" target="_blank">Google Map</a></center>';

	$markers[] = array(
		"category" => $row["type"],
		"icon_url" => $icon,
		"icon_size" => (string)$size,
		"lat" => $row["latitude"],
		"long" => $row["longitude"],
		"message" => $message,
	);
}

$markerJson = json_encode($markers, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_UNESCAPED_UNICODE);
if ($markerJson === false)
	$markerJson = '[]';
?>
<script>
var Id = 0;
var countId = 0;
var Marker = {};

var markerData = <?php echo $markerJson; ?>;

markerData.forEach(function(data) {
	Id++;
	Marker[Id] = new MarkerClass(data);
});

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
