<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
?>


<div class="list_items">
<?php
$DracoDex = $db->getQuery('SELECT * FROM pokedex ORDER BY id DESC');
foreach ($DracoDex as $DracoDexItem) {
	if($DracoDexItem["monster"] == "Chest")
		continue;
?>
	<div class="row">
		<div class="image"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $DracoDexItem["id"]; ?>.png"></div>
		<div class="name"><?php echo $DracoDexItem["monster"]; ?></div>
		<!--TODO: add this to styles -->
		<div align="center"><font size=2px>#<?php echo $DracoDexItem["id"]; ?></font></div>
	</div>
<?php
}
?>
</div>
<div class="clearfix"></div>