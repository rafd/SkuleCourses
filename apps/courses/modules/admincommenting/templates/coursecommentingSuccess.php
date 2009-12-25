<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
<h2>Course Commenting Manager</h2>

<p><a class="back" href='<?php echo url_for("admincommenting/index")?>' style="padding-left: 20px;width:auto;">Back to Commenting Menu</a></p>

<form name="search_form" method="post" action="<?php echo url_for("admincommenting/coursecommenting")?>">
	<table><tr><td>
	<fieldset style='width:730px'>
	<legend>Search</legend>
	<table class="inputlayout">
		<tr>
			<td>Course: <input name="course" type="text" /></td>
			<td><a class="reload" title="Retrieve/refresh results" onclick="return document.search_form.submit();"></a></td>
		</tr>
	</table>
	</fieldset>
	</td></tr></table>	
</form>

<form method="post" action="<?php echo url_for('admincommenting/'.($form->getObject()->isNew() ? 'createCourse?' : 'updateCourse?id='.$form->getObject()->getId().'&')."course=".$form->getObject()->getCourseId()) ?>">

	<table>
		<tr>
			<td style="vertical-align:top">
				<fieldset style="width:320px">
					<legend>Comments Found <?php if (isset($courseId)):?>(<?php echo $courseId?>)<?php endif;?></legend>
					<table class="disptable">
						<thead>
							<tr>
								<th width="14"></th>
								<th width="14">
									<?php if (isset($courseId)):?>
									<a class="addbtn" title="Add a new comment" href="<?php echo url_for("admincommenting/coursecommenting?course=".$courseId)?>"></a>
									<?php endif;?>
								</th>
								<th width="140">Submitter IP</th>
								<th width="120">Submit Time</th>
							</tr>
						</thead>
						<tbody>
							<?php if (isset($commentList)):?>
							<?php foreach ($commentList as $comment):?>
							<tr>
								<td><a class="select" href="<?php echo url_for("admincommenting/editCourse?id=".$exam->getId()."&course=".$courseId)?>"></a></td>
								<td><a class="deletebtn" title="Delete this exam" style="margin:0 0 0 0;" href="<?php echo url_for("admincommenting/editCourse?id=".$exam->getId()."&course=".$courseId)?>"></a></td>
								<td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$exam->getId()):?> style="background:#FFE87C"<?php endif;?>>
								  <?php echo $comment->getIp()?>
								</td>
								<td style="text-align:center<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$exam->getId()):?>;background:#FFE87C<?php endif;?>">
								  <?php echo $comment->getInputDt()?>
								</td>
							</tr>
							<?php endforeach;?>
							<?php endif;?>
						</tbody>
					</table>
				</fieldset>
			</td>
			<td style="vertical-align:top">
				<fieldset style="width:372px">
					<legend>Edit</legend>
					<?php echo $form->renderHiddenFields()?>
					<table class="inputlayout">
						<thead>
							<?php if (isset($globalerrors)):?>
							<tr>
								<td colspan="1"><?php echo $globalerrors?></td>
							</tr>
							<?php endif;?>
						</thead>
						<tbody>
							<tr>
								<th>Applicable Year</th>
								<td></td>
							</tr>
							<tr>
								<th>Applicable Term</th>
								<td></td>
							</tr>
							<tr>
								<th>Comment</th>
								<td></td>
							</tr>
						</tbody>
					</table>
					<table class="inputlayout">
						<tr>
							<td><textarea cols="40" rows="6"></textarea></td>
						</tr>
					</table>
					<table class="inputlayout">
						<tr>
							<th>Check to Approve</th>
							<td><?php echo $form["approved"]?></td>
						</tr>
					</table>
					<br />
					<input type="submit" value="Save" />
					<?php if (!$form->getObject()->isNew()):?>
					<input type="button" value="Cancel" />
					<?php endif;?>
				</fieldset>
			</td>
		</tr>
	</table>
</form>

</div></div>