<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_EXAM))?>
<div id="main"><div id="critique_content">
<h2>Bulk Exams Upload</h2>
<p><a class="back" href='<?php echo url_for("adminexam/index")?>' style="padding-left: 20px;width:auto;">Back to Exam Menu</a></p>
<p>
Bulk exam upload imports a whole semester's worth of exams from the official Faculty exam CDs. To start, specify a
year and term to which the CD applies and click Next (please refrain from importing the same CD twice).
</p>
<form method="post" action="<?php echo url_for("adminexam/bulkTwo")?>">
	<fieldset>
		<legend>Step 1</legend>
		<table>
			<tr>
				<th>Year</th>
				<td>
					<?php $date = getdate()?>
					<select style="width:70px" name="bulk_year">
				      	<?php for ($i=$date["year"]+1; $i>=skuleadminConst::EARLIEST_YEAR; $i--):?>
				      	<option value="<?php echo $i?>"<?php if ($i==$date["year"]):?> selected<?php endif;?>><?php echo $i?></option>
				      	<?php endfor;?>
			      	</select>
				</td>
			</tr>
			<tr>
				<th>Term</th>
				<td>
					<select style="width:90px" name="bulk_term">
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