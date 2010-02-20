<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_RATING))?>
<div id="main"><div id="critique_content">

	<h2>Rating Criteria Manager</h2>
	<p><a class="back" href='<?php echo url_for("adminratingCriteria/index")?>' style="padding-left: 20px;width:auto;">Back to Ratings Menu</a></p>
	
	<table>
	<tr>
	<td style="vertical-align:top"><?php include_partial('list', array('rating_field_list' => $rating_field_list)) ?></td>
	<?php if(isset($is_reserved)): ?>
	<td style="vertical-align:top"><?php include_partial('view', array('rating' => $rating)) ?></td>
	<?php else: ?>
	<td style="vertical-align:top"><?php include_partial('form', array('form' => $form, 'scale_PID' => $scale_PID, 'globalErrors' => (isset($globalErrors)?$globalErrors:null))) ?></td>
	<?php endif; ?>
	</tr>
	</table>
</div></div>