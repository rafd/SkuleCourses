<?php echo use_helper('Javascript') ?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<?php include_stylesheets_for_form($formDetail) ?>
<?php include_javascripts_for_form($formDetail) ?>

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
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<fieldset style='width:450px'><legend>New Instructor</legend>
<?php else: ?>
<fieldset style='width:450px'><legend>Edit Instructor</legend>
<?php endif;?>

<table style='width:90%'>
	<tfoot>
		<tr>
			<td colspan="2">
            <?php echo $form->renderHiddenFields() ?>
            <?php echo $formDetail->renderHiddenFields() ?>
          
			<input type="submit" value="Save" class="fbuttons"/>
            <?php if (!$form->getObject()->isNew()): ?>
          	<input type="button" onclick="window.location.href=window.location.href;" class="fbuttons" value="Cancel" />
            <?php endif; ?>
			</td>
		</tr>
	</tfoot>
	<tbody>
		<tr><td colspan="2">
	      <?php echo $form->renderGlobalErrors() ?>
		</td></tr>
		<tr><td colspan="2">
			<table class="inputlayout">
				<tr>
					<td>Last Name</td>
					<td>
						<div style="float: left"> <?php echo $form['last_name'] ?>  </div>
						<div style="float: left"><?php echo $form['last_name']->renderError() ?></div>
					</td>
				</tr>
				<tr>
					<td>First Name</td>
					<td>
				       <div style="float: left">   <?php echo $form['first_name'] ?></div>
				       <div style="float: left">   <?php echo $form['first_name']->renderError() ?></div>
					</td>
				</tr>
				<tr>
					<td>Department</td>
					<td>
						<div style="float: left"><?php echo $form['dept_id'] ?></div>
						<div style="float: left"><?php echo $form['dept_id']->renderError() ?></div>
					</td>
				</tr>
			</table>
      		</td>
		</tr>
		<tr>
			<td style='width:100%'>
				<fieldset style='width:100%' id="blockHid">
					<legend style='font-size:10pt'>Instructor Detail 
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
		<tr>
			<td>
				<fieldset style='width:100%' id="blockShow">
      				<legend style='font-size:10pt'>Associated Courses</legend>
      			</fieldset>
			</td>
		</tr>
    </tbody>
  </table>
  </fieldset>
</form>