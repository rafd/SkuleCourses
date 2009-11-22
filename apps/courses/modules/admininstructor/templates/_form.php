<?php echo use_helper('Javascript') ?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>
<?php include_stylesheets_for_form($formDetail) ?>
<?php include_javascripts_for_form($formDetail) ?>

<script type="text/javascript">
	function course_search(event){
		if (event.keyCode == 13){
			document.getElementById('ajax_search').click();
			return false;
		}
		return true;
	}
</script>

<script type="text/javascript">
	var detailsShown = true;

	function toggleDetails(){
		if (detailsShown) {
			detailsShown = false;
			document.getElementById("blockShow").style.display = "none";
			document.getElementById("blockHid").style.display = "block";
			document.getElementById("<?php echo $formDetail['descr']->renderId()?>").value="";
		} else {
		  	detailsShown = true;
			document.getElementById("blockShow").style.display = "block";
			document.getElementById("blockHid").style.display = "none";
		}
	}

	function confirmDetailsRemoval(){
		 var res = confirm("Remove detailed description of this instructor?");
		 if (res){toggleDetails();}
	}
</script>

<form action="<?php echo url_for('admininstructor/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<fieldset style='width:450px'>

<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<legend>Edit Instructor</legend>
<?php else: ?>
<legend>New Instructor</legend>
<?php endif;?>

<table style='width:95%'>
	<tfoot>
		<tr>
			<td colspan="2">
            <?php echo $form->renderHiddenFields() ?>
            <?php echo $formDetail->renderHiddenFields() ?>
          
			<input type="submit" value="Save" class="fbuttons"/>
            <?php if (!$form->getObject()->isNew()): ?>
          	<input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" class="fbuttons" value="Cancel" />
            <?php endif; ?>
			</td>
		</tr>
	</tfoot>
	<tbody>
		<?php if (isset($globalErrors)):?>
		<tr><td class="error">
	    <?php echo $globalErrors ?>
		</td></tr>
		<?php endif;?>
		<tr><td colspan="2">
			<table class="inputlayout">
				<tr>
					<th>Last Name</th>
					<td><?php echo $form['last_name'] ?></td>
				</tr>
				<tr><td></td><td class="error"><?php echo $form['last_name']->renderError() ?></td></tr>
				<tr>
					<th>First Name</th>
					<td><?php echo $form['first_name'] ?></td>
				</tr>
				<tr><td></td><td class="error"><?php echo $form['first_name']->renderError() ?></td></tr>
				<tr>
					<th>Department</th>
					<td><?php echo $form['dept_id'] ?></td>
				</tr>
				<tr><td></td><td class="error"><?php echo $form['dept_id']->renderError() ?></td></tr>
			</table>
      		</td>
		</tr>
		<?php //TODO instructor detail
		/*
		<tr>
			<td style='width:100%'>
				<fieldset style='width:100%' id="blockHid">
					<legend style='font-size:10pt'>Instructor Details 
      				<img onclick="toggleDetails()" style="cursor:pointer" title="Add detailed description" src='/skule_images/expand.gif' />
      				</legend>
				</fieldset>
      			<fieldset style='width:100%' id="blockShow">
      				<legend style='font-size:10pt'>Instructor Detail 
      				<img onclick="confirmDetailsRemoval()" style="cursor:pointer" title="Remove detailed description" src='/skule_images/collapse.gif' />
      				</legend>
      				
      				Instructor Description<br/>
      				<?php echo $formDetail['descr'] ?>
      				
      				<?php if(isset($omiterror) && $omiterror==true): ?>
			        <div style="float: left; display:none">
			        <?php else: ?>
			        <div style="float: left">
			        <?php endif; ?>
			        <?php echo $formDetail['descr']->renderError() ?></div>
      			</fieldset>
      			
      			<script type="text/javascript">toggleDetails();</script>
          	</td>
		</tr>
		*/?>
		<tr>
			<td>
				<div id='instrAssocChooser' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
	      			<table class="inputlayout">
	      				<tr>
	      					<td>Search Courses: <input type="text" onkeydown="return course_search(event)" name="ajax_query" />
	      					<?php echo submit_to_remote('ajax_search', 'Search', array(
	      					  'update'=>'ajax_search_results',
	      					  'url'=>'admincourse/ajaxSearch'), array(
	      					  'id'=>'ajax_search'))?>
	      					</td>
	      				</tr>
	      				<tr>
	      					<td><i>Click on the results to add them.</i></td>
	      				</tr>
	      				<tr><td><ul id="ajax_search_results"></ul></td>
	      				</tr>
	      			</table>
	      		</div>
	      		<fieldset style="width:100%" onmouseover='mopen("instrAssocChooser", 1)' onmouseout='mclosetime()'>
	      			<legend style='font-size:10pt'>Associated Courses</legend>
	      			<table class="inputlayout" style="width:100%">
	      				<tr>
	      					<td>Year: 
	      						<select style="width:70px" id="year">
	      						<?php $date = getdate();?>
	      						<?php for ($i=$date["year"]+1; $i>=1998; $i--):?>
	      							<option value="<?php echo $i?>"<?php if ($i==$date["year"]):?> selected<?php endif;?>><?php echo $i?></option>
	      						<?php endfor;?>
	      						</select>
	      						&nbsp;&nbsp;Term: 
	      						<select style="width:90px" id="term">
	      							<option value="9">Fall</option>
	      							<option value="1">Winter</option>
	      							<option value="5">Summer</option>
	      						</select>
	      					</td>
	      				</tr>
	      				<tr>
	      					<td style="width:100%">
	      						<table class="disptable" style="margin-top:5px;width:100%">
	      							<tr><th>Selected Courses</th></tr>
	      							<?php for ($i=0;$i<=4; $i++):?>
	      							<tr>
		      							<td style="padding-left:5px;padding:right:40px">AER202H1 (Mechanical System Design)
		      							<a class="deletebtn" style="margin-top:3px;margin-right:5px"></a>
		      							</td>
	      							</tr>
	      							<?php endfor;?>
	      						</table>
	      					</td>
	      				</tr>
	      			</table>
	      		</fieldset>
			</td>
		</tr>
    </tbody>
  </table>
  </fieldset>
</form>