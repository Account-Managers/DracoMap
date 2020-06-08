<?php
require_once("../../database/database.php");
require_once("../../../includes/config.php");
?>


<div class="list_items">
<?php
$Creatures = $db->getQuery('SELECT * FROM creatures ORDER BY iv DESC');
foreach ($Creatures as $CreatureRow) {
	if($CreatureRow["creature"] == null || $CreatureRow["creature"] == "")
		continue;
	
	$infoCreatureRow = $db->getQuery('SELECT * FROM bestiary WHERE id = ? LIMIT 1', array($CreatureRow["creature"]));
	$purebred = $CreatureRow["purebred"]
		
?>
	<div class="row" onclick="getCapturedCreature('<?php echo $CreatureRow["latitude"]; ?>', '<?php echo $CreatureRow["longitude"]; ?>')">
		<div class="image"><img src="<?php echo $config['websiteAssetsUrl']; ?>/images/icons/<?php echo $infoCreatureRow[0]["id"]; ?>.png"></div>
		<div class="name"><?php echo $infoCreatureRow[0]["monster"]; ?></div>
		<!--TODO: add this to styles -->
		<div align="center"><font size=2px>#<?php echo $CreatureRow["creature"]; ?></font></div>		
		<div class="stats">
			<div class="infos">
				CP : <span><?php echo $CreatureRow["cp"]; ?></span><br />
				IV : <span><?php echo $CreatureRow["iv"]; ?>%</span><br />
				Spotter : <span><?php echo $CreatureRow["spotter"]; ?></span><br />
				Founded : <span><?php echo date('h:iA', strtotime($CreatureRow["date"])); ?></span><br />
				</span>
			</div>
		</div>
	</div>
<?php
}
?>
</div>
<div class="clearfix"></div>