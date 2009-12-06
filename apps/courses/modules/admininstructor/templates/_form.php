<?php echo use_helper('Javascript') ?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>
<?php //include_stylesheets_for_form($formDetail) ?>
<?php //include_javascripts_for_form($formDetail) ?>

<script type="text/javascript">
	var separator = '<?php echo $separator ?>';
	
	// ajax course search onkeydown
	function course_search(event){
		if (event.keyCode == 13){
			document.getElementById('ajax_search').click();
			return false;
		}
		return true;
	}
	
	function yosOnChange(){
		var el = document.getElementById("hidAssoc"+getYear());
		parseAssocData(el.value);
		return true;
	}

	function getYear(){
	  	var y = document.getElementById("year");
		var t = document.getElementById("term");
		return y.options[y.selectedIndex].value + t.options[t.selectedIndex].value;
	}
	
	// read raw data from string and parse to table
	function parseAssocData(dataString){
		var arr = splice(dataString, separator);
		var disptable = document.getElementById("disptable");
		disptable.innerHTML = "<tr><th>Selected Courses</th></tr>";
		for (var i=0; i<arr.length; i++){
			if (trim(arr[i]) != ""){
				disptable.innerHTML += "<tr><td style='padding-left:5px;padding:right:40px'>" + arr[i] 
				+ "<a class='deletebtn' onclick='removeFromSelected(\"" + arr[i] + "\")' style='margin-top:3px;margin-left:15px'></a></td></tr>";
			}
		}
	}
	
	function addToSelected(item){
		var el = document.getElementById("hidAssoc"+getYear());
		var arr = splice(el.value, separator);
	
		var DNE = true;
		for (var i=0; i<arr.length; i++){
			if (arr[i] == item){
				DNE = false;
				break;
			}
		}
	
		if (DNE){
			el.value += item + separator;
			yosOnChange();
		}
	}
	
	function removeFromSelected(item){
		var el = document.getElementById("hidAssoc"+getYear());
		var arr = splice(el.value, separator);
	
		el.value = "";
		for (var i=0; i<arr.length; i++){
			if (arr[i] != item && trim(arr[i]) != ""){
				el.value += arr[i] + separator;
			}
		}
	
		yosOnChange();
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
            <?php //echo $formDetail->renderHiddenFields() ?>
          
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
				<?php for ($i=$date["year"]+1; $i>=$earliestYear; $i--):?>
				<?php for ($j=1; $j<=9; $j+=4):?>
				<input type="hidden" name="assoc[<?php echo $i.$j?>]" id="hidAssoc<?php echo $i.$j?>" value="<?php echo $assocData[$i.$j]?>" />
				<?php endfor;?>
	      		<?php endfor;?>
			
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
	      						<select style="width:70px" id="year" onchange="return yosOnChange()">
	      						<?php for ($i=$date["year"]+1; $i>=$earliestYear; $i--):?>
	      							<option value="<?php echo $i?>"<?php if ($i==$date["year"]):?> selected<?php endif;?>><?php echo $i?></option>
	      						<?php endfor;?>
	      						</select>
	      						&nbsp;&nbsp;Term: 
	      						<select style="width:90px" id="term" onchange="return yosOnChange()">
	      							<option value="9">Fall</option>
	      							<option value="1">Winter</option>
	      							<option value="5">Summer</option>
	      						</select>
	      					</td>
	      				</tr>
	      				<tr>
	      					<td style="width:100%">
	      						<table class="disptable" id="disptable" style="margin-top:5px;width:100%"></table>
	      					</td>
	      				</tr>
	      			</table>
	      		</fieldset>
	      		
	      		<script type="text/javascript">
	      			// initialize the assoc table
	      			parseAssocData(document.getElementById("hidAssoc"+getYear()).value);
      			</script>
			</td>
		</tr>
    </tbody>
  </table>
  </fieldset>
</form>