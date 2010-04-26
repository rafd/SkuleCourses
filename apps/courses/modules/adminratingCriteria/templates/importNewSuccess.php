<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_RATING))?>

<div id="main"><div id="critique_content">
<h2>Import New Critique Data</h2>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/index")?>' style="padding-left: 20px;width:auto;">Back to Ratings Menu</a></p>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/importIndex")?>' style="padding-left: 20px;width:auto;">Back to Import History</a></p>

<form name="import_history" action="<?php echo url_for("adminratingCriteria/importNewTwo")?>" method="post">
	<fieldset>
		<legend>Step 1 - Basic Parameters</legend>
		<table>
			<tr>
				<th>Year</th>
				<td>
					<?php $date = getdate()?>
					<select style="width:70px" name="critique_year">
				      	<?php for ($i=$date["year"]+1; $i>=skuleadminConst::EARLIEST_YEAR; $i--):?>
				      	<option value="<?php echo $i?>"<?php if ($i==$date["year"]):?> selected<?php endif;?>><?php echo $i?></option>
				      	<?php endfor;?>
			      	</select>
				</td>
			</tr>
			<tr>
				<th>Term</th>
				<td>
					<select style="width:90px" name="critique_term">
			      		<option value="9">Fall</option>
			      		<option value="1">Winter</option>
			      		<option value="5">Summer</option>
			      	</select>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Next" /></td>
			</tr>
		</table>
	</fieldset>

</form>
</div></div>