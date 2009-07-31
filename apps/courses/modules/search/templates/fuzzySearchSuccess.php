<?php echo $submenu ?>
<div id="content">
	<h3>Search Results for "<?php echo $query?>"</h3>
	<?php if (isset($error)):?>
	<table>
		<tr>
			<td><?php echo $error?></td>
		</tr>
	</table>
	<?php else:?>
	<table>
		<?php if (count($courseList)):?>
		<tr>
			<td><h3>Courses</h3></td>
		</tr>
		<tr>
			<td>
  				<ul>
	  				<?php foreach ($courseList as $courseObj):?>
	  				<li><?php echo link_to($courseObj->getId()." - ".$courseObj->getDescr(), "course/index?id=".$courseObj->getId())?></li>
	  				<?php endforeach;?>
  				</ul>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<?php endif;?>
		<?php if (count($instructorList)>0):?>
		<tr>
			<td>Instructors</td>
		</tr>
		<tr>
			<td>
  				<ul>
	  				<?php foreach ($instructorList as $instrObj):?>
	  				<li><?php echo link_to($instrObj->getLastName().", ".$instrObj->getFirstName(), 
	  					"search/searchByInstructor?instructor=".$instrObj->getId())?></li>
	  				<?php endforeach;?>
  				</ul>
			</td>
		</tr>
		<?php endif;?>
		<?php if (count($programList)>0):?>
		<tr>
			<td>Programs</td>
		</tr>
		<tr>
			<td>
				<ul>
					<?php foreach ($programList as $enumObj):?>
					<li><?php echo link_to($enumObj->getDescr(), "search/searchByProgram?program=".$enumObj->getId())?></li>
					<?php endforeach;?>
				</ul>
			</td>
		</tr>
		<?php endif;?>
	</table>
	<?php endif;?>
</div>