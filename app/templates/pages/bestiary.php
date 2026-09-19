<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
require_once("../../../includes/helpers.php");
?>


<div class="list_items">
<?php
$Bestiary = $db->getQuery('SELECT * FROM bestiary ORDER BY gid ASC');
foreach ($Bestiary as $BestiaryItem) {
	if($BestiaryItem["monster"] == "Chest")
		continue;
?>
	<div class="row">
		<div class="image"><img src="<?php echo e($config['websiteAssetsUrl']); ?>/images/icons/<?php echo e($BestiaryItem["id"]); ?>.png"></div>
		<div class="name"><?php echo e($BestiaryItem["monster"]); ?></div>
		<!--TODO: add this to styles -->
		<div align="center"><font size=2px>#<?php echo e($BestiaryItem["id"]); ?></font></div>
	</div>
<?php
}
?>
</div>
<div class="clearfix"></div>
