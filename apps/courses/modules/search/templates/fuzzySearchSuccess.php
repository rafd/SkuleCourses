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
		<tr>
			<td>Course Results</td>
		</tr>
		<tr>
			<td>
				<div class='resultset'>
	  				<ul>
		  				<?php foreach ($courseList as $courseObj):?>
		  				<li><?php echo link_to($courseObj->getId()." - ".$courseObj->getDescr(), "course/index?id=".$courseObj->getId())?></li>
		  				<?php endforeach;?>
	  				</ul>
	  			</div>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>Instructor Results</td>
		</tr>
		<tr>
			<td>
				<div class='resultset'>
	  				<ul>
		  				<?php foreach ($instructorList as $instrObj):?>
		  				<li><?php echo link_to($instrObj->getLastName().", ".$instrObj->getFirstName(), 
		  					"search/searchByInstructor?instructor=".$instrObj->getId())?></li>
		  				<?php endforeach;?>
	  				</ul>
	  			</div>
			</td>
		</tr>
	</table>
	<?php endif;?>
</div>