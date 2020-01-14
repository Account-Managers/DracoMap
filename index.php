<?php
session_start();
require_once("app/database/database.php");
require_once("includes/config.php");

if(isset($_SESSION['login'])) {
	$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
	$_SESSION['mapCenter'] = $userInfo[0]["mapCenter"];
	$_SESSION['mapSize'] = $userInfo[0]["mapSize"];
	$_SESSION['hideObelisks'] = $userInfo[0]["hideObelisks"];
	$_SESSION['hidePilars'] = $userInfo[0]["hidePilars"];
} else {
	$_SESSION['mapCenter'] = $config['mapCenter'];
	$_SESSION['mapSize'] = $config['mapSize'];
	$_SESSION['hideObelisks'] = $config['hideObelisks'];
	$_SESSION['hidePilars'] = $config['hidePilars'];
};
?>
<!DOCTYPE HTML>
<html>
	<head>
		<title><?php echo $config['websiteName']; ?></title>
		<link rel="icon" type="image/png" href="<?php echo $config['websiteAssetsUrl']; ?>/images/favicon.png" />
		<link rel="stylesheet" href="<?php echo $config['websiteAssetsUrl']; ?>/css/styles.css" type="text/css">
		<link rel="stylesheet" href="<?php echo $config['websiteAssetsUrl']; ?>/css/leaflet.css" type="text/css">
		<link rel="stylesheet" href="<?php echo $config['fontAwesomeStyle']; ?>" type="text/css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald|Open+Sans|Roboto" type="text/css">
	</head>
	
	<body>
		<header>
			<div class="logo"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/logo.png"></div>
			
			<ul class="menu">
				<li><a href="#" class="active" id="mapButton"><i class="fas fa-map-pin"></i> Map</a></li>
				<li><a href="pages/bestiary"><i class="fas fa-search"></i> Bestiary</a></li>
				<li><a href="pages/creatures"><i class="far fa-hand-rock"></i> Creatures</a></li>
			</ul>
			
			<div class="user">
				<div class="menuToggle"><i class="fas fa-cog"></i></div>
				<?php if(!isset($_SESSION['login'])) { ?>
				<div class="avatar"><img src="avatars/default_avatar.png"></div>
				<div class="username">Guest <i class="fas fa-caret-down"></i></div>
				<ul class="submenu">
					<li><a href="overlay/login"><i class="fas fa-user"></i> Login</a></li>
					<li><a href="overlay/register"><i class="fas fa-user-plus"></i> Register</a></li>
				</ul>
				<?php } else { ?>
				<div class="avatar"><img src="avatars/<?php echo $userInfo[0]["avatar"]; ?>"></div>
				<div class="username"><?php echo $userInfo[0]["uname"]; ?> <i class="fas fa-caret-down"></i></div>
				<ul class="submenu">
					<li><a href="overlay/settings"><i class="fas fa-cog"></i> Settings</a></li>
					<?php if($userInfo[0]["usergroup"] == 3) { ?>
					<li><a href="overlay/admin_settings"><i class="fas fa-wrench"></i> Admin settings</a></li>
					<?php } ?>
					<li><a href="logout.php"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
				</ul>
				<?php } ?>
			</div>
			
			<div class="clearfix"></div>
		</header>
		
		<div id="alertMsg" class="error">
			<div class="close"><i class="fas fa-times"></i></div>
			
			<div class="message"></div>
		</div>
		
		<div id="overlay">
			<div class="close"><i class="fas fa-times"></i></div>
			
			<div class="overlay_content">
			</div>
		</div>
		
		<div id="global">
		</div>
		
		<div id="map_container">
			<div id="map_coords">
			</div>
			
			<div id="map_points">
			</div>
			
			<div class="items_toggles">
				<div class="scroller">
					<label>Clear map every</label>
					<select id="toggleClear">
						<option selected value="1">1 hour</option>
						<option value="24">24 hours</option>
						<option value="48">48 hours</option>
						<option value="96">96 hours</option>
						<option value="191">191 hours</option>
						<option value="999999">Infinite</option>
					</select>
					
					<div class="timerClear desc">Next clear in <span>1 hours</span>.</div>
					<br>
					<label>Items shown on map:</label>
					<br><br>
					<div class="clearfix"></div>
					
					<input type="checkbox" class="players">
					<label>Players</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="creatures">
					<label>Creatures</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="gym" checked>
					<label>Arenas</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="librarys" checked>
					<label>Librarys</label>
					
					<?php
					if ($_SESSION['hideObelisks'] == 0) {
						echo '<div class="clearfix"></div>';
						echo '';
						echo '<input type="checkbox" class="OBELISK" checked>';
						echo '<label>Obelisk</label>';
					};
					?>
					
					<?php
					if ($_SESSION['hidePilars'] == 0) {
						echo '<div class="clearfix"></div>';
						echo '';
						echo '<input type="checkbox" class="STOP" checked>';
						echo '<label>Stops</label>';
						echo '';
						echo '<div class="clearfix"></div>';
						echo '';
						echo '<input type="checkbox" class="DUNGEON_STOP" checked>';
						echo '<label>Dungeon stops</label>';
					};
					?>

					<div class="clearfix"></div>
					
					<input type="checkbox" class="PORTAL" checked>
					<label>Portal</label>
					
					<div class="clearfix"></div>
										
					<input type="checkbox" class="ROOST" checked>
					<label>Roost</label>
					
					<div class="clearfix"></div>
					<br>
					<label>Other items/stops:</label>
					<br><br>
					<input type="checkbox" class="ALTAR" checked>
					<label>Altar</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="CONTEST" checked>
					<label>Contest</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="ELEMENTAL_EARTH" checked>
					<label>Elemental earth</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="ELEMENTAL_FIRE" checked>
					<label>Elemental fire</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="ELEMENTAL_WATER" checked>
					<label>Elemental water</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="ELEMENTAL_WIND" checked>
					<label>Elemental wild</label>
					
					<div class="clearfix"></div>
					
					<input type="checkbox" class="ELEMENTAL_DUNGEON" checked>
					<label>Elemental dungeon</label>
				</div>
				
				<div class="timerMap desc">Next map update in <span>60</span> seconds.</div>
			</div>
		</div>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha256-KM512VNnjElC30ehFwehXjx1YCHPiQkOPmqnrWtpccM=" crossorigin="anonymous"></script>
		<script src="<?php echo $config['websiteAssetsUrl']; ?>/js/scripts.js"></script>
		<script src="<?php echo $config['websiteAssetsUrl']; ?>/js/leaflet.js"></script>

		<script>
		$(document).ready(function() {
			$('#map_container #map_coords').load("app/templates/pages/map.php", function(){
				$('#map_container #map_points').load("app/templates/pages/map_items.php");
				$('#map_container').fadeIn('slow');
			});
		});
		</script>
	</body>
</html>