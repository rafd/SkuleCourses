<script language='javascript' src='/js/FusionCharts.js'></script>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::COURSE_CRITIQUE, "courseId"=>$courseObj->getId(), "ratingYearArray"=>$ratingYearArray, "examYearArray"=>$examYearArray))?>
<div id="main"><div id="critique_content">
	<h2><?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)</h2>
	<h3>Course Critique <?php echo helperFunctions::translateTerm($year)?> Edition</h3>

	<?php $len = count($instructorArr)?>
	<?php if ($len > 1):?>
	<div class="critique_block" style="margin-bottom:7px">
		<b>Instructors:
		<?php for ($i=0; $i<$len; $i++):?>
		<?php if ($currInstructor->getId() != $instructorArr[$i]->getId()):?>
		<span style="padding:2px;border:solid 1px #ccc"><?php echo link_to($instructorArr[$i]->getLastName().", ".$instructorArr[$i]->getFirstName(), "course/critique?id=".$sf_request->getParameter("id")."&year=".$sf_request->getParameter("year")."&instructor=".$instructorArr[$i]->getId())?></span>
		<?php else:?>
		<span style="padding: 2px;border:solid 1px #ccc;background:activecaption;"><?php echo $instructorArr[$i]->getLastName()?>, <?php echo $instructorArr[$i]->getFirstName()?></span>
		<?php endif;?>
		<?php if ($i<$len-1):?>| <?php endif;?>
		<?php endfor;?>
		</b>
	</div>
	<?php endif;?>
	
	<div class="critique_block"><div class="box">
		<div class="title_bar">Overall Report for <?php echo $currInstructor->getLastName()?>, <?php echo $currInstructor->getFirstName()?></div>

		<table class="critiquetable">
			<tr>
				<th width="100">Number Enrolled</th>
				<th width="100">Number Responded</th>
				<th width="150">Aggregated Rating<a class="help" style="float: right; right: 5px">
				<span>The aggregated rating is the arithmetic average of the mean ratings of all questions below.</span></a></th>
				<th width="100">Percent Retake</th>
			</tr>
			<tr>
				<td><?php if (isset($numberEnrolled)) echo $numberEnrolled; else echo "?";?></td>
				<td><?php if (isset($numberResponded)) echo $numberResponded; else echo "?";?></td>
				<td><?php echo round($aggregatedRating,2) ?></td>
				<td><?php if (isset($retake)) echo $retake."%"; else echo "?";?></td>
			</tr>
		</table>
	</div></div>
	
	<?php $counter=0 ?>
	<?php foreach ($dataArr as $arr):?>
	<div class="critique_block"><div class="box">
		<?php $counter++?>
		<div class="title_bar"><?php echo $counter?>. <?php echo $arr["field"]?></div>
		
		<p>(<?php echo $arr["type"]?>)</p>
		
		<table class="critiquetable">
			<tr>
				<?php if ($arr["typeObj"]->getId() == EnumItemPeer::RATING_BOOLEAN):?>
					<th width="55">True</th>
					<th width="55">False</th>
				<?php elseif ($arr["typeObj"]->getParentId() == EnumItemPeer::RATING_SCALE):?>
					<?php for ($i=0; $i<$arr["typeObj"]->getDescr(); $i++):?>
					<th width="55"><?php echo $i?></th>
					<?php endfor;?>
					<th width="55">Mean</th>
					<th width="55">Median</th>
				<?php endif;?>
			</tr>
			<tr>
				<?php if ($arr["typeObj"]->getId() == EnumItemPeer::RATING_BOOLEAN):?>
					<td><?php echo $arr[0]?></td>
					<td><?php echo $arr[1]?></td>
				<?php elseif ($arr["typeObj"]->getParentId() == EnumItemPeer::RATING_SCALE):?>
					<?php for ($i=0; $i<$arr["typeObj"]->getDescr(); $i++):?>
					<td><?php echo $arr[$i]?></td>
					<?php endfor;?>
					<td><?php echo round($arr["mean"], 2)?></td>
					<td><?php echo $arr["median"]?></td>
				<?php endif;?>
			</tr>
		</table>
		
		<?php
		$arr["chart"]->setChartParam("caption", "Fig.".$counter." ".$arr["field"]);
		$arr["chart"]->setChartParam("bgAlpha", "0");
		$arr["chart"]->renderChart()
		?>
		
	</div></div>
	<?php endforeach;?>
	<div style="height:50px"></div>
</div></div>
<img class='hidden' src='/skule_images/help.on.gif' />