<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::COURSE, "courseId"=>$courseObj->getId(), "ratingYearArray"=>$ratingYearArray, "examYearArray"=>$examYearArray))?>

<script type="text/javascript" src="/js/toggleBox.js"></script>
<script type="text/javascript">
	function showExamDetails(year){
		document.getElementById("btn_show_"+year).style.display = "none";
		document.getElementById("btn_hide_"+year).style.display = "block";
		toggleTransitionOn("exam_block_"+year);
	}

	function hideExamDetails(year){
		document.getElementById("btn_show_"+year).style.display = "block";
		document.getElementById("btn_hide_"+year).style.display = "none";
		el = document.getElementById("exam_block_"+year); 
		el.style.display = "none";
		el.style.height = "0px";
	}
</script>

<div id="main"><div id="critique_content">
	<h2><?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)</h2>
	
	<?php if ($courseObj->getIsEng()==0):?>
		<div class="critique_block"><p style="padding-left:5px;margin-bottom:-5px;font-style:italic">This is not a course offered by the Faculty of Applied Science and Engineering.</p></div>
	<?php endif;?>
	
	<?php if (isset($courseDetail) || isset($currentInstructorList) || isset($programList)):?>
	<div class="critique_block">
		<?php if (isset($courseDetail)):?>
		<table class="description">
			<tr>
				<td class="title">Description</td>
				<td>
					<?php echo base64_decode($courseDetail->getDetailDescr())?>
				</td>
			</tr>
			<tr>
				<td>First Offered On</td>
				<td><?php echo $courseDetail->getFirstOffered()?></td>
			</tr>
			<tr>
				<td>Last Offered On</td>
				<td><?php echo $courseDetail->getLastOffered()?></td>
			</tr>
		</table>
		<?php endif;?>
		<?php if (isset($currentInstructorList)):?>
		<table class="description">
			<tr>
				<td class="title">Instructor(s)</td>
				<td>
					<?php foreach ($currentInstructorList as $result):?>
					<?php echo link_to($result["name"], "search/searchByInstructor?instructor=".$result["ID"], "title='Click to find all courses taught by this instructor'")?><br/>
					<?php endforeach;?>
				</td>
			</tr>
			<tr>
				<td>Past Instructors</td>
				<td>
					<?php foreach ($pastInstructorList as $result):?>
					<?php if (!in_array($result, $currentInstructorList)):?>
					<?php echo link_to($result["name"], "search/searchByInstructor?instructor=".$result["ID"], "title='Click to find all courses taught by this instructor'")?><br/>
					<?php endif;?>
					<?php endforeach;?>
				</td>
			</tr>
		</table>
		<?php endif;?>
		<?php if (isset($programList)):?>
		<table class="description">
			<tr>
				<td class="title">Related Programs</td>
				<td>
					<?php foreach ($programList as $program):?>
					<?php echo link_to($program["programName"]." (".$program["year"].")", "search/searchByProgram?program=".$program["disciplineId"]."&year=".$program["numYear"],
					 "title='Click to find all courses related to this program'")?><br/>
					<?php endforeach;?>
				</td>
			</tr>
		</table>
		<?php endif;?>
	</div>
	<?php endif;?>
	
	<div class="critique_block">
		<table style="width:100%">
			<tr>
				<td style="vertical-align:top; width:310px">
					Course Commenting
					<a class="help" style="right:170px; float:right">
					<span>Course Commenting contains comments submitted by students directly to Skule Courses. This module aims to accurately reflect students' experience of the course
					and provide opportunity to give constructive feedback on the instructors and the course materials.</span></a>
					<ul>
						<li><?php echo link_to("View Comments", "course/commenting?id=".$sf_request->getParameter('id'))?></li>
						<?php if ($courseObj->getIsEng()):?>
						<li><a class="btn" onclick="grayout('submitComment');">Leave My Comment</a></li>
						<?php endif;?>
					</ul>
					<br/>
					Official Course Critiques
					<a class="help" style="right:150px; float:right">
					<span>Course Critiques uses the course evaluation data provided by the Faculty of Applied Science and Engineering, which were gathered at the end of every semester, and accurately report them.</span></a>
					<ul>
						<?php foreach ($ratingYearArray as $year):?>
						<li><?php echo link_to(helperFunctions::translateTerm($year), "course/critique?id=".$sf_request->getParameter('id')."&year=".$year)?></li>
						<?php endforeach;?>
					</ul>
				</td>
				<td style="vertical-align:top">Exams Repository (<a style="cursor:pointer;" onclick='grayout("submitExam");'>Submit Exams</a>)<br />
					<table class="examtable">
						<?php foreach ($examYearArray as $year):?>
						<tr>
							<td style="width:10px">
								<img class="btn" title="Show exams" src='/skule_images/arrow-up.gif' id="btn_show_<?php echo $year?>" onclick="showExamDetails(<?php echo $year?>)" />
								<img class="btn" title="Hide exams" src='/skule_images/arrow-down.gif' style="display:none" id="btn_hide_<?php echo $year?>" onclick="hideExamDetails(<?php echo $year?>)" />
							</td>
							<td width="100%"><?php echo link_to(helperFunctions::translateTerm($year), "course/exam?id=".$sf_request->getParameter('id')."&year=".$year)?></td>
						</tr>
						<tr>
							<td></td>
							<td>
								<div class="exam_block" id="exam_block_<?php echo $year?>" style="max-height:200px">
									<?php $examArr = $examData[$year]?>
									<?php foreach ($examArr as $type => $arr):?>
										<div class="critique_block">
										<div class="box">
											<div class="title_bar">
												<?php if ($type == EnumItemPeer::EXAM):?>
												Exams
												<?php elseif ($type == EnumItemPeer::TEST):?>
												Tests
												<?php elseif ($type == EnumItemPeer::QUIZ):?>
												Quizes
												<?php elseif ($type == EnumItemPeer::PROBLEM_SET):?>
												Problem Sets
												<?php endif;?>
											</div>
											<ul>
												<?php foreach ($arr as $exam):?>
												<li><a href='/<?php echo $exam->getFilePath()?>' target='_blank'><?php echo $exam->getDescr()?></a></li>
												<?php endforeach;?>
											</ul>
										</div>
									</div>
									<?php endforeach;?>
								</div>
							</td>
						</tr>
						<?php endforeach;?>
					</table>
				</td>
			</tr>
		</table>
	</div>
	
	<?php include_partial("global/submitCourseComment", array("courseObj"=>$courseObj))?>
	
	<img class="hidden" src="/skule_images/help.on.gif" />
</div></div>