<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
require_once("../../../includes/helpers.php");
?>


<div class="list_items">
<?php
$bestiaryById = array();
foreach ($db->getQuery('SELECT id, monster FROM bestiary') as $item) {
	$bestiaryById[$item["id"]] = $item["monster"];
}

foreach ($db->getQuery('SELECT * FROM creatures ORDER BY iv DESC') as $CreatureRow) {
	if ($CreatureRow["creature"] == null || $CreatureRow["creature"] == "")
		continue;

	$monster = isset($bestiaryById[$CreatureRow["creature"]]) ? $bestiaryById[$CreatureRow["creature"]] : $CreatureRow["creature"];
	$latitude = e($CreatureRow["latitude"]);
	$longitude = e($CreatureRow["longitude"]);
?>
	<div class="row" onclick="getCapturedCreature('<?php echo $latitude; ?>', '<?php echo $longitude; ?>')">
		<div class="image"><img src="<?php echo e($config['websiteAssetsUrl']); ?>/images/icons/<?php echo e($CreatureRow["creature"]); ?>.png"></div>
		<div class="name"><?php echo e($monster); ?></div>
		<!--TODO: add this to styles -->
		<div align="center"><font size=2px>#<?php echo e($CreatureRow["creature"]); ?></font></div>		
		<div class="stats">
			<div class="infos">
				CP : <span><?php echo e($CreatureRow["cp"]); ?></span><br />
				IV : <span><?php echo e($CreatureRow["iv"]); ?>%</span><br />
				Spotter : <span><?php echo e($CreatureRow["spotter"]); ?></span><br />
				Founded : <span><?php echo e(date('h:iA', strtotime($CreatureRow["date"]))); ?></span><br />
				</span>
			</div>
		</div>
	</div>
<?php
}
?>
</div>
<div class="clearfix"></div>
