<?php echo $submenu ?>
<div id="main"><div id="critique_content">
	<h2><?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)</h2>
	<h3>Course Commenting</h3>
	
	<div style="margin:0 5px 0 5px;">
		<a class="first" title="Go to first page" style="float:left" href="<?php echo url_for("course/commenting?id=".$sf_request->getParameter("id")."&page=".$commentList->getFirstPage())?>"></a>
		<a class="previous" title="Go to previous page" style="float:left" href="<?php echo url_for("course/commenting?id=".$sf_request->getParameter("id")."&page=".$commentList->getPreviousPage())?>"></a>
		<a class="last" title="Go to last page" style="float:right" href="<?php echo url_for("course/commenting?id=".$sf_request->getParameter("id")."&page=".$commentList->getLastPage())?>"></a>
		<a class="next" title="Go to next page" style="float:right" href="<?php echo url_for("course/commenting?id=".$sf_request->getParameter("id")."&page=".$commentList->getNextPage())?>"></a>
	<center><?php echo $commentList->getPage()?> / <?php echo ($commentList->getLastPage()==0)? 1 : $commentList->getLastPage()?></center>
	</div>
	
	<?php if (count($commentList->getResults()) == 0):?>
	<div class="critique_block">
		<div class="box">
			<div class="title_bar">No comment as of yet</div>
			<a class="btn" onclick="grayout('submitComment');">I would like to leave a comment for this course...</a>
		</div>
	</div>
	<?php else:?>
	<?php foreach ($commentList->getResults() as $commentObj):?>
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
	
	<img class="hidden" src="/skule_images/previous.on.png" />
	<img class="hidden" src="/skule_images/next.on.png" />
	<img class="hidden" src="/skule_images/last.on.png" />
	<img class="hidden" src="/skule_images/first.on.png" />
</div></div>