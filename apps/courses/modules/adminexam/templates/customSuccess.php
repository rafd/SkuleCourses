<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_EXAM))?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<div id="main"><div id="critique_content">
<h2>Custom Exams Manager</h2>
<p><a class="back" href='<?php echo url_for("adminexam/index")?>' style="padding-left: 20px;width:auto;">Back to Exam Menu</a></p>

<form name="search_form" method="get" action="<?php echo url_for("adminexam/custom")?>">
    
	<table><tr><td>
	<fieldset style='width:730px'>
	<legend>Search</legend>
	<table class="inputlayout">
		<tr>
			<td>Course: <input name="course" type="text" /></td>
			<td>Year:
				<select style="width:70px" name="year">
				<?php for ($i=$date["year"]+1; $i>=$earliestYear; $i--):?>
		      	<option value="<?php echo $i?>"<?php if ($i==$date["year"]):?> selected<?php endif;?>><?php echo $i?></option>
		      	<?php endfor;?>
		      	</select>
			</td>
			<td>Term:
				<select style="width:90px" name="term">
      				<option value="9">Fall</option>
      				<option value="1">Winter</option>
      				<option value="5">Summer</option>
      			</select>
			</td>
			<td><a class="reload" title="Retrieve/refresh results" onclick="return document.search_form.submit();"></a></td>
		</tr>
	</table>
	</fieldset>
	</td></tr></table>
	
</form>

<form method="post" 
<?php if (isset($courseId) && isset($year)):?>
action="<?php echo url_for('adminexam/'.($form->getObject()->isNew() ? 'create?' : 'update?id='.$form->getObject()->getId().'&')
    ."course=".$courseId."&year=".substr($year,0,4)."&term=".substr($year,4,1)) ?>" 
<?php else:?>
action="<?php echo url_for('adminexam/custom')?>"
<?php endif;?>
enctype="multipart/form-data">

	<table>
		<tr>
			<td style="vertical-align:top">
				<fieldset style="width:350px">
					<legend>Exams Found <?php if (isset($courseId)):?>(<?php echo $courseId?>, <?php echo helperFunctions::translateTerm($year)?>)<?php endif;?></legend>
					<table>
						<thead>
							<tr>
								<th width="14"></th>
								<th width="14">
									<?php if (isset($courseId)):?>
									<a class="addbtn" title="Add a new exam" href="<?php echo url_for("adminexam/custom?course=".$courseId."&year=".$sf_request->getParameter("year")."&term=".$sf_request->getParameter("term"))?>"></a>
									<?php endif;?>
								</th>
								<th width="14"></th>
								<th width="220">Description</th>
								<th width="60">Type</th>
							</tr>
						</thead>
						<tbody>
							<?php if (isset($examList)):?>
							<?php foreach ($examList as $exam):?>
							<tr>
								<td><a class="select" href="<?php echo url_for("adminexam/edit?id=".$exam->getId()."&course=".$courseId."&year=".substr($exam->getYear(),0,4)."&term=".substr($exam->getYear(),4,1))?>"></a></td>
								<td><a class="deletebtn" title="Delete this exam" style="margin:0 0 0 0;" onclick="return confirm('Are you sure?');"
									href="<?php echo url_for("adminexam/delete?id=".$exam->getId()."&course=".$courseId."&year=".substr($exam->getYear(),0,4)."&term=".substr($exam->getYear(),4,1))?>"></a></td>
								<td><a class="findbtn" title="Preview this exam" href="/<?php echo $exam->getFilePath()?>" target="_blank"></a></td>
								<td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$exam->getId()):?> style="background:#FFE87C"<?php endif;?>>
								  <?php echo $exam->getDescr()?>
								</td>
								<td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$exam->getId()):?> style="background:#FFE87C"<?php endif;?>>
								  <?php echo $exam->getEnumItem()->getDescr()?>
								</td>
							</tr>
							<?php endforeach;?>
							<?php endif;?>
						</tbody>
					</table>
				</fieldset>
			</td>
			<td style="vertical-align:top">
				<fieldset style="width:342px">
					<legend><?php if ($form->getObject()->isNew()):?>New Exam<?php else:?>Edit<?php endif;?></legend>
					<?php echo $form->renderHiddenFields()?>
					<table class="inputlayout">
						<thead>
							<?php if (isset($globalerrors)):?>
							<tr>
								<td colspan="3" class="error"><?php echo $globalerrors?></td>
								<td></td>
							</tr>
							<?php endif;?>
						</thead>
						<tbody>
							<tr>
								<th>Type</th>
								<td><?php echo $form['type']?></td>
							</tr>
							<tr>
								<th>Title</th>
								<td><?php echo $form['descr']?></td>
							</tr>
							<tr>
								<th>Replace existing file</th>
								<td><input type="file" name="file_path" /></td>
							</tr>
						</tbody>
					</table>
					<br />
					<input type="submit" <?php if (!isset($courseId) || !isset($year)):?>disabled <?php endif;?>value="Save" />
					<?php if (!$form->getObject()->isNew()):?>
					<input type="button" value="Cancel" />
					<?php endif;?>
				</fieldset>
			</td>
		</tr>
	</table>
</form>
</div></div>