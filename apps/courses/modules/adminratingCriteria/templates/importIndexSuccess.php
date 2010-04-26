<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_RATING))?>

<script type="text/javascript">
	function importHistoryDelete(dt){
		var res = confirm("Are you sure?");
		if (res){
			document.getElementById("history_dt").value = dt;
			document.getElementById("redirect_loc").value = "delete";
			document.import_history.submit();
			return true;
		} else {
			return false;
		}
	}

	function importHistoryGood(dt){
	  	document.getElementById("history_dt").value = dt;
		document.getElementById("redirect_loc").value = "good";
		document.import_history.submit();
		return true;
	}

	function importHistoryMismatched(dt){
  		document.getElementById("history_dt").value = dt;
		document.getElementById("redirect_loc").value = "mismatched";
		document.import_history.submit();
		return true;
	}
</script>

<div id="main"><div id="critique_content">
<h2>Import History</h2>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/index")?>' style="padding-left: 20px;width:auto;">Back to Ratings Menu</a></p>

<p><input type="button" value="Import New..." onclick="window.location='<?php echo url_for("adminratingCriteria/importNew")?>'" /></p>

<form name="import_history" action="<?php echo url_for("adminratingCriteria/importIndex")?>" method="post">
<table class="disptable">
	<tr>
		<th width="10"></th>
		<th width="150">Import Date Time</th>
		<th width="150">Number of Entries</th>
		<th width="150">Mismatched Entries</th>
	</tr>
	<?php foreach ($history as $row):?>
	<tr>
		<td><a class="deletebtn" onclick="return importHistoryDelete('<?php echo $row["import_dt"]?>')" title="Remove all entries of this import" style="margin-left:0"></a></td>
		<td><?php echo $row['import_dt']?></td>
		<td><?php echo $row['num_good']?> <img class="btn" title="View these entries..." onclick="return importHistoryGood('<?php echo $row["import_dt"]?>')" style="margin-bottom:-2px" src="/skule_images/find.png" /></td>
		<td><?php echo $row['num_mismatched']?> <img class="btn" title="View these entries..." onclick="return importHistoryMismatched('<?php echo $row["import_dt"]?>')" style="margin-bottom:-2px" src="/skule_images/find.png" /></td>
	</tr>
	<?php endforeach;?>
</table>
<input type="hidden" name="dt" id="history_dt" />
<input type="hidden" name="redirect_loc" id="redirect_loc" />
</form>

</div></div>