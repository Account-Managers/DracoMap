<?php
// ##########################################################################################################

// CONFIG YOUR WEBSITE
$config['websiteName'] = "WebDraconiusGo";
$config['websiteUrl'] = "https://webpokemon.net/DracoMap"; // without the / final
$config['websiteAssetsUrl'] = "assets"; // without the / final - or let like that
$config['mapCenter'] = "40.764665, -73.973184";

// CONFIG YOUR DATABASE
$config['mysql_host'] = "localhost";
$config['mysql_root'] = "root";
$config['mysql_password'] = "";
$config['mysql_database'] = "draco";

// EXTERNE CONFIG (IF PROBLEM)
$config['fontAwesomeStyle'] = "https://use.fontawesome.com/releases/v5.2.0/css/all.css";

// ##########################################################################################################
	
$db = new Database($config['mysql_host'], $config['mysql_database'], $config['mysql_root'], $config['mysql_password']);