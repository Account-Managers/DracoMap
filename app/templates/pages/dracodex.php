<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
?>


<div class="list_items">
<?php
$DracoDex = $db->getQuery('SELECT * FROM pokedex ORDER BY monster ASC');
foreach ($DracoDex as $DracoDexItem) {
	if($DracoDexItem["monster"] == "Chest")
		continue;
?>
	<div class="row">
		<div class="image"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $DracoDexItem["id"]; ?>.png"></div>
		<div class="name"><?php echo $DracoDexItem["monster"]; ?></div>
	</div>
<?php
}
?>
</div>
<div class="clearfix"></div>