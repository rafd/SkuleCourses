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
		
		return true;
	}
</script>

<form action="<?php echo url_for('admincommenting/updateUnapproved?id='.$form->getObject()->getId()) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<fieldset style='width:390px'>

<legend>Comment</legend>

<input type="hidden" name="sf_method" value="put" />

<table>
	<tfoot>
		<tr>
			<td>
            <?php echo $form->renderHiddenFields() ?>
          
			<input type="submit" value="Save" <?php if(!$sf_request->hasParameter("id")):?>disabled <?php endif;?>onclick="return preSave();" class="fbuttons"/>
          	<input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" class="fbuttons" value="Cancel" />
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
			    <table>
			    	<tr>
			    		<th>Course</th>
			    		<td><?php echo $form['course_id']?></td>
			    	</tr>
			    	<tr>
			    		<th width="150">Applicable Year</th>
			    		<?php $date = getdate()?>
			    		<td><select style="width:100px" id="app_year">
			    		<?php for ($i=$date["year"]+1; $i>=skuleadminConst::EARLIEST_YEAR; $i--):?><option value="<?php echo $i?>"><?php echo $i?></option><?php endfor;?>
			    		</select></td>
			    	</tr>
			    	<tr>
			    		<th>Applicable Term</th>
			    		<td><select style="width:100px" id="app_term">
			    		<option value="9">Fall</option>
			    		<option value="1">Winter</option>
			    		<option value="5">Summer</option>
			    		</select></td>
			    	</tr>
			    	
			    </table>
			</td>
		</tr>
		<tr>
			<td>
				<table>
					<tr><th>Comment</th></tr>
					<tr>
						<td style="padding:0 0 0 5px;"><textarea cols="42" rows="6" id="pseudo_comment"></textarea></td>
					</tr>
					<tr><td></td><td class="error"><?php echo $form['comment']->renderError() ?></td></tr>
				</table>
				
				<script type="text/javascript">
					var _descr = document.getElementsByName('<?php echo $form->getName()."[".$form['comment']->getName()."]"?>')[0].value;
					_descr = br2nl(_descr);
					document.getElementById('pseudo_comment').value=_descr;

					var _year = document.getElementsByName('<?php echo $form->getName()."[".$form['applies_to']->getName()."]"?>')[0].value;
					document.getElementById('app_year').value=_year.substr(0,4);
					document.getElementById('app_term').value=_year.substr(4,1);
				</script>
			</td>
		</tr>
		<tr>
			<td>
				<table class="inputlayout">
					<tr>
						<th>Check to Approve</th>
						<td><?php echo $form['approved']?></td>
					</tr>
				</table>
			</td>
		</tr>
	</tbody>
</table>

</fieldset>
</form>