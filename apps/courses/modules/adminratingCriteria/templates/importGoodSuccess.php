<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_RATING))?>

<script type="text/javascript">
	
</script>

<div id="main"><div id="critique_content">
<h2>Import History - Matched Entries (<?php echo $dt?>)</h2>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/index")?>' style="padding-left: 20px;width:auto;">Back to Ratings Menu</a></p>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/importIndex")?>' style="padding-left: 20px;width:auto;">Back to Import History</a></p>

<form name="import_history" action="<?php echo url_for("adminratingCriteria/importIndex")?>" method="post">

<div style="margin-top:10px;margin-bottom:10px">
<input type="button" value="Save" />
<input type="button" value="Cancel" />
</div>

<table class="disptable">
	<tr>
		<th width="10"></th>
		<th width="100">Applies To</th>
		<th width="100">Course</th>
		<th width="150">Criterion</th>
		<th width="150">Rating</th>
		<th width="150">Number</th>
	</tr>
	<?php foreach ($matchedData as $row):?>
	<tr>
		<td><?php echo link_to(" ", "course/index", array("class"=>"select","title"=>"Select to edit"))?></td>
		<td><?php echo helperFunctions::translateTerm($row->getCourseInstructorAssociation()->getYear())?></td>
		<td><?php echo $row->getCourseInstructorAssociation()->getCourseId()?></td>
		<td><?php echo $row->getRatingField()->getDescr()?></td>
		<td>
			<?php if ($row->getFieldId()==RatingFieldPeer::NUMBER_ENROLLED || $row->getFieldId()==RatingFieldPeer::NUMBER_RESPONDED):?>
			/
			<?php else:?>
		    <?php echo $row->getRating()?>
		    <?php endif;?>
		</td>
		<td><?php echo $row->getNumber()?></td>
	</tr>
	<?php endforeach;?>
</table>

<div style="margin-top:10px">
<input type="button" value="Save" />
<input type="button" value="Cancel" />
</div>

<input type="hidden" name="dt" id="history_dt" />
<input type="hidden" name="redirect_loc" id="redirect_loc" />
</form>

</div></div>