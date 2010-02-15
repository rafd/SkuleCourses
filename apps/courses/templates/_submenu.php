<?php 
  use_helper('Url');
  use_helper('Tag');
?>

<div id='left'>
	<?php include_partial('global/submitExam', array('courseId' => (isset($courseId)?$courseId:"")))?>
	
	<?php if ($menuOption == subMenuOptions::SEARCH):?>
	<dl><dt>Search</dt></dl>
	<?php else:?>
	<dl><dt><?php echo link_to("Search","search/index")?></dt></dl>
	<?php endif;?>
	
	<?php if ($menuOption < subMenuOptions::MAINTENANCE):?>
	
	    <?php if (isset($courseId)):?>
		<dl>
			<dt>
			<?php if ($menuOption == subMenuOptions::COURSE):?>
			<?php echo $courseId?>
			<?php else:?>
			<?php echo link_to($courseId, "course/index?id=".$courseId)?>
			<?php endif;?>
			</dt>
			
			<!-- critique -->
			<div class='popupmenu' id='subCritique' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
				<?php if (!isset($ratingYearArray) || count($ratingYearArray)==0):?>
					<a>None Available</a>
				<?php else:?>
				    <?php foreach ($ratingYearArray as $year):?>
				    <?php echo link_to(helperFunctions::translateTerm($year), "course/critique?id=".$courseId."&year=".$year)?>
				    <?php endforeach;?>
				<?php endif;?>
			</div>
			<dd onmouseover='mopen("subCritique")' onmouseout='mclosetime()' class='pointer'>
			<?php if ($menuOption == subMenuOptions::COURSE_CRITIQUE):?>Course Critiques<?php else:?><a>Course Critiques</a><?php endif;?>
			</dd>
			
			<!-- commenting -->
			<?php if ($menuOption == subMenuOptions::COURSE_COMMENTING):?>
				<dd>Course Commenting</dd>
			<?php else:?>
				<dd><?php echo link_to("Course Commenting", "course/commenting?id=".$courseId)?></dd>
			<?php endif;?>
			
			<!-- exam -->
			<div class='popupmenu' id='subExam' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
				<?php if (!isset($examYearArray) || count($examYearArray)==0):?>
					<a>None Available</a>
				<?php else:?>
					<?php foreach ($examYearArray as $year):?>
					<?php echo link_to(helperFunctions::translateTerm($year), "course/exam?id=".$courseId."&year=".$year)?>
					<?php endforeach;?>
				<?php endif;?>
				<a onclick='grayout("submitExam");'>Submit Exams</a>
			</div>
			<dd class='pointer' onmouseover='mopen("subExam")' onmouseout='mclosetime()'>
			<?php if ($menuOption == subMenuOptions::COURSE_EXAM):?>Exams Repository<?php else:?><a>Exams Repository</a><?php endif;?>
			</dd>
		</dl>
		<?php endif;?>
			
	<?php elseif ($menuOption >= subMenuOptions::MAINTENANCE && $menuOption < subMenuOptions::ERROR):?>
		
		<dl>
			<?php if ($menuOption == subMenuOptions::MAINTENANCE || $menuOption == subMenuOptions::MAINTENANCE_LOGIN):?>
				<dt>Maintenance</dt>
			<?php else:?>
				<dt><?php echo link_to("Maintenance","siteadmin/index")?></dt>
			<?php endif;?>
			
			<?php if ($menuOption != subMenuOptions::MAINTENANCE_LOGIN):?>
				<?php foreach (subMenuOptions::getMaintenanceSections() as $key => $value):?>
				<?php $names = subMenuOptions::getMaintenanceSectionNames()?>
				<?php if ($menuOption == $key):?>
		        <dd><?php echo $names[$key]?></dd>
		        <?php else:?>
		        <dd><?php echo link_to($names[$key], $value)?></dd>
		        <?php endif;?>
		        <?php endforeach;?>
		        <dd><?php echo link_to("Sign Out", "siteadmin/logout")?></dd>
			<?php endif;?>
		</dl>
		
	<?php elseif ($menuOption == subMenuOptions::ERROR):?>
	
		<dl><dt>Error</dt></dl>
		
	<?php endif;?>
</div>