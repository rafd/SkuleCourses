<?php use_helper('Javascript') ?>
<?php use_helper("DateForm")?>

<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>
<?php include_stylesheets_for_form($form2) ?>
<?php include_javascripts_for_form($form2) ?>

<script type="text/javascript" src="/js/base64.js"></script>
<script type="text/javascript">
	<?php if ((isset($courseDetail) && $form2['hasDetail']->getValue()=="") || $form2['hasDetail']->getValue()==1):?>
	var detailsShown = false;
	<?php else: ?>
	var detailsShown = true;
	<?php endif;?>
	
	function toggleDetails(){
		if (detailsShown) {
			detailsShown = false;
			document.getElementsByName("<?php echo $form2->getName()."[".$form2['hasDetail']->getName()."]"?>")[0].value=0;
			document.getElementById("blockShow").style.display = "none";
			document.getElementById("blockHid").style.display = "block";
			document.getElementsByName("<?php echo $form2->getName()."[".$form2['first_offered']->getName()."]"?>")[0].value="";
			document.getElementsByName("<?php echo $form2->getName()."[".$form2['last_offered']->getName()."]"?>")[0].value="";
			document.getElementById('pseudo_descr').value="";
		} else {
		  	detailsShown = true;
		  	document.getElementsByName("<?php echo $form2->getName()."[".$form2['hasDetail']->getName()."]"?>")[0].value=1;
			document.getElementById("blockShow").style.display = "block";
			document.getElementById("blockHid").style.display = "none";
		}
	}

	function confirmDetailsRemoval(){
		var res = confirm("Remove detailed description of this instructor?");
		if (res){toggleDetails();}
	}

	function preSave(){
		var encoded = nl2br(document.getElementById('pseudo_descr').value);
		encoded = Base64.encode(encoded);
		document.getElementsByName('<?php echo $form2->getName()."[".$form2['detail_descr']->getName()."]"?>')[0].value=encoded;
		return true;
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

<table style='width:95%'>
	<tfoot>
		<tr>
			<td colspan="2">
            <?php echo $form->renderHiddenFields() ?>
         	<?php echo $form2->renderHiddenFields() ?>
          
			<input type="submit" value="Save" onclick="return preSave();" class="fbuttons"/>
            <?php if (!$form->getObject()->isNew()): ?>
          	<input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" class="fbuttons" value="Cancel" />
            <?php endif; ?>
			</td>
		</tr>
	</tfoot>
	<tbody>
		<?php if (isset($globalErrors)):?>
		<tr><td class="error">
	    <?php echo $globalErrors?>
		</td></tr>
		<?php endif;?>
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
			    	<td class="error"><?php echo $form['dept_id']->renderError() ?></td>
			    	<td class="error"><?php echo $form['code']->renderError() ?></td>
			    	<td class="error"><?php echo $form['credit']->renderError() ?></td>
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
					<tr><td></td><td class="error"><?php echo $form['descr']->renderError() ?></td></tr>
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
      						<td><textarea cols="42" rows="4" name="pseudo_descr" id="pseudo_descr"></textarea></td>
      					</tr>
      					<tr>
      						<td></td>
      						<td>
      							<?php if(!$omitdetailerr): ?>
						        <span class="error">
						        <?php echo $form2['detail_descr']->renderError() ?>
						        </span>
						        <?php endif; ?>
      						</td>
      					</tr>
      					<tr>
      						<th>Date First Offered</th>
      						<td>
      							<?php echo input_date_tag($form2->getName()."[".$form2['first_offered']->getName()."]", $form2['first_offered']->getValue(), array("rich"=>true, "calendar_button_img"=>"/skule_images/calendar.gif", "class"=>"date"))?>
      						</td>
      					</tr>
      					<tr>
      						<td></td><td class="error"><?php echo $form2['first_offered']->renderError() ?></td>
      					</tr>
      					<tr>
      						<th>Date Last Offered</th>
      						<td>
      							<?php echo input_date_tag($form2->getName()."[".$form2['last_offered']->getName()."]", $form2['last_offered']->getValue(), array("rich"=>true, "calendar_button_img"=>"/skule_images/calendar.gif", "class"=>"date"))?>
      						</td>
      					</tr>
      					<tr>
      						<td></td><td class="error"><?php echo $form2['last_offered']->renderError() ?></td>
      					</tr>
      				</table>
				</fieldset>
				
				<script type="text/javascript">
					toggleDetails();
					var descr = Base64.decode(document.getElementsByName('<?php echo $form2->getName()."[".$form2['detail_descr']->getName()."]"?>')[0].value);
					descr = br2nl(descr);
					document.getElementById('pseudo_descr').value=descr;
				</script>
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