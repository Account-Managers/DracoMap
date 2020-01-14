<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
?>


<div class="list_items">
<?php
$Bestiary = $db->getQuery('SELECT * FROM bestiary ORDER BY gid ASC');
foreach ($Bestiary as $BestiaryItem) {
	if($BestiaryItem["monster"] == "Chest")
		continue;
?>
	<div class="row">
		<div class="image"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $BestiaryItem["id"]; ?>.png"></div>
		<div class="name"><?php echo $BestiaryItem["monster"]; ?></div>
		<!--TODO: add this to styles -->
		<div align="center"><font size=2px>#<?php echo $BestiaryItem["id"]; ?></font></div>
	</div>
<?php
}
?>
</div>
<div class="clearfix"></div>
