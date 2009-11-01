<?php use_helper('Javascript') ?>
<?php use_helper("DateForm")?>

<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>
<?php include_stylesheets_for_form($form2) ?>
<?php include_javascripts_for_form($form2) ?>
<?php include_stylesheets_for_form($form3) ?>
<?php include_javascripts_for_form($form3) ?>

<script type="text/javascript">
	var detailsShown = true;

	function toggleDetails(){
		if (detailsShown) {
			detailsShown = false;
			document.getElementById("blockShow").style.display = "none";
			document.getElementById("blockHid").style.display = "block";
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

<form action="<?php echo url_for('admincourse/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<fieldset style='width:550px'>

<?php if ($form->getObject()->isNew()): ?>
<legend>New Course</legend>
<?php else: ?>
<legend>Edit Course</legend>
<?php endif; ?>

<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
 
<div><?php echo $form->renderGlobalErrors() ?></div>

<table style='width:95%'>
	<tfoot>
		<tr>
			<td colspan="2">
            <?php echo $form->renderHiddenFields() ?>
         	<?php echo $form2->renderHiddenFields() ?>
            <?php echo $form3->renderHiddenFields() ?>
          
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
		<tr>
			<td>
				<?php if ($form->getObject()->isNew()): ?>
				<table class="inputlayout"> 
			    <tr>
			    	<th>Department</th>
			    	<th>Code <i>(e.g. 101)</i></th>
			    	<th>Credit</th>
			    </tr>
			    <tr>
			       <td><?php echo $form['dept_id'] ?></td>
			       <td><?php echo $form['code'] ?></td>
			       <td><?php echo $form['credit'] ?></td>
			    </tr>
			    <tr>
			    	<td><?php echo $form['dept_id']->renderError() ?></td>
			    	<td><?php echo $form['code']->renderError() ?></td>
			    	<td><?php echo $form['credit']->renderError() ?></td>
			    </tr>
			    </table>
			    
			    <?php else:?>
			    
			    <table class="inputlayout">
			    	<tr>
			    		<th>Course Code</th>
			    		<td><?php echo $form->getObject()->getId() ?></td>
			    	</tr>
			    </table>
			    
			    <?php endif;?>
			</td>
		</tr>
		<tr>
			<td>
				<table class="inputlayout">
					<tr>
						<th>Title</th>
						<td><?php echo $form['descr'] ?></td>
					</tr>
					<tr><td></td><td><?php echo $form['descr']->renderError() ?></td></tr>
					<tr>
						<th colspan="10">Is An Engineering Course? <?php echo $form['is_eng'] ?></th>
						<td></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td style="width:100%">
				<fieldset style='width:100%' id="blockHid">
					<legend style='font-size:10pt'>Course Details 
      				<img onclick="toggleDetails()" style="cursor:pointer" title="Add detailed description" src='/skule_images/expand.gif' />
      				</legend>
				</fieldset>
				<fieldset style='width:100%' id="blockShow">
					<legend style='font-size:10pt'>Course Details 
      				<img onclick="confirmDetailsRemoval()" style="cursor:pointer" title="Remove detailed description" src='/skule_images/collapse.gif' />
      				</legend>
      				
      				<table class="inputlayout">
      					<tr>
      						<th>Description</th>
      						<td><?php echo $form2['detail_descr'] ?></td>
      					</tr>
      					<tr>
      						<td></td>
      						<td>
      							<?php if(isset($omitdetail)): ?>
						        <span style="display: none">
						        <?php else: ?>
						        <span>
						        <?php endif; ?>
						        <?php echo $form2['detail_descr']->renderError() ?>
						        </span>
      						</td>
      					</tr>
      					<tr>
      						<th>Date First Offered</th>
      						<td>
      							<?php echo input_date_tag($form2->getName()."[".$form2['first_offered']->getName()."]", '', array("rich"=>true, "calendar_button_img"=>"/skule_images/calendar.gif", "class"=>"date"))?>
      						</td>
      					</tr>
      					<tr>
      						<td></td><td><?php echo $form2['first_offered']->renderError() ?></td>
      					</tr>
      					<tr>
      						<th>Date Last Offered</th>
      						<td>
      							<?php echo input_date_tag($form2->getName()."[".$form2['last_offered']->getName()."]", '', array("rich"=>true, "calendar_button_img"=>"/skule_images/calendar.gif", "class"=>"date"))?>
      						</td>
      					</tr>
      					<tr>
      						<td></td><td><?php echo $form2['last_offered']->renderError() ?></td>
      					</tr>
      				</table>
				</fieldset>
				
				<script type="text/javascript">toggleDetails();</script>
			</td>
		</tr>
		<tr>
			<td style="width:100%">
				<fieldset style='width:100%'>
					<legend style='font-size:10pt'>Associated Disciplines</legend>
				</fieldset>
			</td>
		</tr>
	</tbody>
</table>

<?php //FIXME 
/*<h3>Course Discipline Association:</h3>     
 	<div>
		<div id="_expand2" style="display: none"><?php echo link_to_function(image_tag('expand.gif',array('alt' => 'Alternative text', 'size' => '16x16')), 'more(2)') ?></div>
    	<div id="_collapse2" style="display: none"><?php echo link_to_function(image_tag('collapse.gif',array('alt' => 'Alternative text', 'size' => '16x16')), 'less(2)') ?></div>
    </div>
    
    <div id="_expand2_" style="display: block">
       <?php echo $form3['discipline_id']->renderLabel() ?><br />
       <?php echo $form3['discipline_id'] ?>
       
       <?php if(isset($omitdisassoc)): ?>
       <div style="display: none">
       <?php else: ?>
       <div style="">
       <?php endif; ?>
       <?php echo $form3['discipline_id']->renderError() ?>
       </div>
       
       <br />
       <?php echo $form3['year_of_study']->renderLabel() ?><br />
       <?php echo $form3['year_of_study'] ?>
       
       <?php if(isset($omitdisassoc)): ?>
       <div style="display: none">
       <?php else: ?>
       <div style="">
       <?php endif; ?>
       <?php echo $form3['year_of_study']->renderError() ?>
       </div>
     </div>
*/
?>

</fieldset>
</form>