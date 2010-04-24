<?php use_helper('Url')?>
<?php use_helper('Tag')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::SEARCH))?>
<div id="main"><div id="critique_content">
	<h2>Search Results for "<?php echo $query?>"</h2>
	
	<table><tr><td><a class="back" href='<?php echo url_for("search/index")?>' style="float:left; padding-left: 20px;width:auto;">Back to Search...</a></td></tr></table><br/>

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
					<?php foreach ($programList as $discipline):?>
					<li><?php echo link_to($discipline->getDescr(), "search/searchByProgram?program=".$discipline->getId()."&year=0")?></li>
					<?php endforeach;?>
				</ul>
			</td>
		</tr>
		<?php endif;?>
	</table>
	<?php endif;?>
</div></div>

<img class='hidden' src='/skule_images/back.on.gif' />