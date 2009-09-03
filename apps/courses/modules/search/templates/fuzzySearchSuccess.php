<?php echo $submenu ?>
<div id="main"><div id="critique_content">
	<h2>Search Results for "<?php echo $query?>"</h2>
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
			<td><b>Courses</b></td>
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
			<td><b>Instructors</b></td>
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
			<td><b>Programs</b></td>
		</tr>
		<tr>
			<td>
				<ul>
					<?php foreach ($programList as $enumObj):?>
					<li><?php echo link_to($enumObj->getDescr(), "search/searchByProgram?program=".$enumObj->getId()."&year=0")?></li>
					<?php endforeach;?>
				</ul>
			</td>
		</tr>
		<?php endif;?>
	</table>
	<?php endif;?>
</div></div>