<script language='javascript' src='/js/FusionCharts.js'></script>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
	<h2><?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)</h2>
	<h3>Course Critique <?php echo helperFunctions::translateTerm($year)?> Edition</h3>

	<table class="layout">
		<tr>
			<td>
				<b>Instructors:
				<?php $len = count($instructorArr)?>
				<?php for ($i=0; $i<$len; $i++):?>
				<?php if ($currInstructor->getId() != $instructorArr[$i]->getId()):?>
				<?php echo link_to($instructorArr[$i]->getLastName().", ".$instructorArr[$i]->getFirstName(), "course/critique?id=".$sf_request->getParameter("id")."&year=".$sf_request->getParameter("year")."&instructor=".$instructorArr[$i]->getId())?>
				<?php else:?>
				<?php echo $instructorArr[$i]->getLastName()?>, <?php echo $instructorArr[$i]->getFirstName()?>
				<?php endif;?>
				<?php if ($i<$len-1):?>| <?php endif;?>
				<?php endfor;?>
				</b>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<h4>Overall Report for <?php echo $currInstructor->getLastName()?>, <?php echo $currInstructor->getFirstName()?></h4>
			</td>
		</tr>
		<tr>
			<td>
			<table class="disptable">
				<tr>
					<th width="100">Number Enrolled</th>
					<th width="100">Number Responded</th>
					<th width="150">Aggregated Rating<a class="help" style="float: right">
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
			</td>
		</tr>
		<?php $counter=0 ?>
		<?php foreach ($dataArr as $arr):?>
		<?php $counter++?>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><h4><?php echo $counter?>. <?php echo $arr["field"]?><br/>(<?php echo $arr["type"]?>)</h4></td>
		</tr>
		<tr>
			<td>
				<table class="disptable">
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
			</td>
		</tr>
		<tr>
			<td>
			<?php
			$arr["chart"]->setChartParam("caption", "Fig.".$counter." ".$arr["field"]);
			$arr["chart"]->renderChart()
			?>
			</td>
		</tr>
		<?php endforeach;?>
	</table>
</div></div>
<img class='hidden' src='/skule_images/help.on.gif' />