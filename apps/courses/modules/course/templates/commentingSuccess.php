<?php echo $submenu ?>
<div id="main"><div id="critique_content">
	<h2><?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)</h2>
	<h3>Course Commenting</h3>

	<?php if (count($commentList) == 0):?>
	<div class="critique_block">
		<div class="box">
			<div class="title_bar">No comment as of yet</div>
			<a class="btn" onclick="">I would like to leave a comment for this course...</a>
		</div>
	</div>
	<?php else:?>
	<?php foreach ($commentList as $commentObj):?>
	<div class="critique_block">
	<div class="box">
		<?php $a=strtotime($commentObj->getInputDt());?>
		<div class="title_bar">
			Submitted: <?php echo date('M d, Y h:i A', $a)?>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
			Applies To: <?php echo helperFunctions::translateTerm($commentObj->getAppliesTo())?>
		</div>
		<?php echo $commentObj->getComment()?>
	</div></div>
	<?php endforeach;?>
	
	<div class="critique_block">
	<div class="box">
		<a class="btn" onclick="grayout('submitComment');">I would like to leave a comment for this course...</a>
	</div></div>
	<?php endif;?>
	<?php include_partial("global/submitCourseComment", array("courseObj"=>$courseObj))?>
</div></div>