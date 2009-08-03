<?php echo $submenu ?>
<div id="content">
	<h3>Course Critique for <?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)<br/><?php echo $year?> Edition</h3>

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
					<th width="150">Number Enrolled</th>
					<th width="150">Number Responded</th>
					<th width="150">Aggregated Rating<a class="help" style="float: right"></a></th>
				</tr>
				<tr>
					<td><?php if (isset($numberEnrolled)) echo $numberEnrolled; else echo "?";?></td>
					<td><?php if (isset($numberResponded)) echo $numberResponded; else echo "?";?></td>
					<td>75%</td>
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
			<td><h4><?php echo $counter?>. <?php echo $arr["type"]?>, <?php echo $arr["field"]?></h4></td>
		</tr>
		<tr>
			<td>
				<table class="disptable">
					<tr>
						<th width="60">1</th>
						<th width="60">2</th>
						<th width="60">3</th>
						<th width="60">4</th>
						<th width="60">5</th>
						<th width="60">6</th>
						<th width="60">7</th>
						<th width="60">Mean</th>
						<th width="60">Median</th>
					</tr>
					<tr>
						<td><?php echo $arr[1]?></td>
						<td><?php echo $arr[2]?></td>
						<td><?php echo $arr[3]?></td>
						<td><?php echo $arr[4]?></td>
						<td><?php echo $arr[5]?></td>
						<td><?php echo $arr[6]?></td>
						<td><?php echo $arr[7]?></td>
						<td>?</td>
						<td>?</td>
					</tr>
				</table>
			</td>
		</tr>
		<?php endforeach;?>
	</table>
</div>