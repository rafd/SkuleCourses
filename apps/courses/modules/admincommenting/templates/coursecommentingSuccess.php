<?php echo $submenu ?>
<?php use_helper('Object')?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<script type="text/javascript">
	function preSave(){
		var encoded = nl2br(document.getElementById('pseudo_comment').value);
		document.getElementsByName('<?php echo $form->getName()."[".$form['comment']->getName()."]"?>')[0].value=encoded;

		var app_year = document.getElementById("app_year");
		var app_term = document.getElementById("app_term");
		var year = app_year.options[app_year.selectedIndex].value + app_term.options[app_term.selectedIndex].value;
		document.getElementsByName('<?php echo $form->getName()."[".$form['applies_to']->getName()."]"?>')[0].value = year;

		var cid = document.getElementsByName('<?php echo $form->getName()."[".$form["course_id"]->getName()."]"?>')[0];
		if (cid.value == ""){
			cid.value = '<?php echo $sf_request->getParameter("course")?>';
		}

		var ip = document.getElementsByName('<?php echo $form->getName()."[".$form["ip"]->getName()."]"?>')[0];
		if (ip.value == ""){
			ip.value = '<?php echo $_SERVER['REMOTE_ADDR']?>';
		}

		var date = document.getElementsByName('<?php echo $form->getName()."[".$form["input_dt"]->getName()."]"?>')[0];
		if (date.value == ""){
			date.value = '<?php echo date(skuleadminConst::TIMESTAMP_FORMAT)?>';
		}
		
		return true;
	}
</script>

<div id="main"><div id="critique_content">
<h2>Course Commenting Manager</h2>

<p><a class="back" href='<?php echo url_for("admincommenting/index")?>' style="padding-left: 20px;width:auto;">Back to Commenting Menu</a></p>

<form name="search_form" method="get" action="<?php echo url_for("admincommenting/coursecommenting")?>">
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

<form method="post" action="<?php echo url_for('admincommenting/'.($form->getObject()->isNew() ? 'createCourse?' : 'updateCourse?id='.$form->getObject()->getId().'&')."course=".$courseId.
($sf_request->hasParameter("page")? '&page='.$sf_request->getParameter("page") : "")) ?>">

	<table>
		<tr>
			<td style="vertical-align:top">
				<fieldset style="width:320px">
					<legend>Comments Found <?php if (isset($courseId)):?>(<?php echo $courseId?>)<?php endif;?></legend>
					<table>
						<thead>
							<tr>
								<th width="14"></th>
								<th width="14">
									<?php if (isset($courseId)):?>
									<a class="addbtn" title="Add a new comment" href="<?php echo url_for("admincommenting/coursecommenting?course=".$courseId)?>"></a>
									<?php endif;?>
								</th>
								<th width="140">Submitter IP</th>
								<th width="124">Submit Time</th>
							</tr>
						</thead>
						<tbody>
							<?php if (isset($commentList)):?>
							<?php foreach ($commentList->getResults() as $comment):?>
							<tr>
								<td><a class="select" href="<?php echo url_for("admincommenting/editCourse?id=".$comment->getId()."&course=".$courseId)?>"></a></td>
								<td><a class="deletebtn" onclick="return confirm('Are you sure?');" title="Delete this exam" style="margin:0 0 0 0;" href="<?php echo url_for("admincommenting/deleteCourse?id=".$comment->getId()."&course=".$courseId)?>"></a></td>
								<td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$comment->getId()):?> style="background:#FFE87C"<?php endif;?>>
								  <?php echo $comment->getIp()?>
								</td>
								<td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$comment->getId()):?> style="background:#FFE87C"<?php endif;?>>
								  <?php echo $comment->getInputDt()?>
								</td>
							</tr>
							<?php endforeach;?>
							<?php endif;?>
						</tbody>
					</table>
					<br />
					<center><table>
						<?php if (isset($commentList)):?>
		                <?php include_partial('global/paging', array('pagelist' => $commentList, 'location' => skuleadminConst::decomposeURL($sf_context, $sf_request))) ?>
		                <?php endif;?>
					</table></center>
				</fieldset>
			</td>
			<td style="vertical-align:top">
				<fieldset style="width:372px">
					<legend><?php if ($form->getObject()->isNew()):?>New Comment<?php else:?>Edit<?php endif;?></legend>
					<?php echo $form->renderHiddenFields()?>
					<div style="display:none"><?php echo $form["course_id"]?></div>
					<table class="inputlayout">
						<thead>
							<?php if (isset($globalErrors)):?>
							<tr>
								<td colspan="1" class="error"><?php echo $globalErrors?></td>
							</tr>
							<?php endif;?>
						</thead>
						<tbody>
							<tr>
								<th>Applicable Year</th>
								<td>
									<?php $date=getdate()?>
									<select style="width:100px" id="app_year">
						    		<?php for ($i=$date["year"]+1; $i>=skuleadminConst::EARLIEST_YEAR; $i--):?><option value="<?php echo $i?>"><?php echo $i?></option><?php endfor;?>
						    		</select>
								</td>
							</tr>
							<tr>
								<th>Applicable Term</th>
								<td>
									<select style="width:100px" id="app_term">
							    		<option value="9">Fall</option>
							    		<option value="1">Winter</option>
							    		<option value="5">Summer</option>
						    		</select>
								</td>
							</tr>
							<tr>
								<th>Comment</th>
								<td></td>
							</tr>
						</tbody>
					</table>
					<table class="inputlayout">
						<tr>
							<td><textarea cols="40" rows="6" id="pseudo_comment"></textarea></td>
						</tr>
					</table>
					<script type="text/javascript">
						var _descr = document.getElementsByName('<?php echo $form->getName()."[".$form['comment']->getName()."]"?>')[0].value;
						_descr = br2nl(_descr);
						document.getElementById('pseudo_comment').value=_descr;
	
						var _year = document.getElementsByName('<?php echo $form->getName()."[".$form['applies_to']->getName()."]"?>')[0].value;
						document.getElementById('app_year').value=_year.substr(0,4);
						document.getElementById('app_term').value=_year.substr(4,1);
					</script>
					<table class="inputlayout">
						<tr>
							<th>Check to Approve</th>
							<td><?php echo $form["approved"]?></td>
						</tr>
					</table>
					<br />
					<input type="submit" value="Save" <?php if (!isset($commentList)):?>disabled <?php endif;?>onclick="return preSave();" />
					<?php if (!$form->getObject()->isNew()):?>
					<input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" value="Cancel" />
					<?php endif;?>
				</fieldset>
			</td>
		</tr>
	</table>
</form>

</div></div>