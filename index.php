<?php
require_once("app/database/database.php");
require_once("includes/config.php");

session_start();
if(isset($_SESSION['login'])) {
	$userInfo = $db->getQuery('SELECT * FROM users WHERE id=?', array($_SESSION['login']));
}
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
			<div class="logo"><a href="./"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/logo.png"></a></div>
			
			<ul class="menu">
				<li><a href="#" class="active" id="mapButton"><i class="fas fa-map-pin"></i> Map</a></li>
				<li><a href="pages/bestiary"><i class="fas fa-search"></i> Bestiary</a></li>
				<li><a href="pages/creatures"><i class="far fa-hand-rock"></i> Creatures</a></li>
			</ul>
			
			<div class="user">
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
				<input type="checkbox" id="toggle_creatures" checked>
				<label for="toggle_creatures">Creatures</label>
				
				<input type="checkbox" id="toggle_gyms" checked>
				<label for="toggle_gyms">Arenas</label>
				
				<input type="checkbox" id="toggle_building" checked>
				<label for="toggle_building">Stops</label>
				
				<input type="checkbox" id="toggle_library" checked>
				<label for="toggle_library">Librarys</label>
			</div>
		</div>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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