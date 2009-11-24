<?php use_helper('Javascript')?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

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

	function yosOnChange(yos){
		var year = yos.options[yos.selectedIndex].value;
		var el = document.getElementById("hidAssoc"+year);
		parseAssocData(el.value);
		return true;
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
		var yos = document.getElementById("yos");
	  	var year = yos.options[yos.selectedIndex].value;
		var el = document.getElementById("hidAssoc"+year);
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
			yosOnChange(yos);
		}
	}

	function removeFromSelected(item){
	  	var yos = document.getElementById("yos");
	  	var year = yos.options[yos.selectedIndex].value;
		var el = document.getElementById("hidAssoc"+year);
		var arr = splice(el.value, separator);

		el.value = "";
		for (var i=0; i<arr.length; i++){
			if (arr[i] != item && trim(arr[i]) != ""){
				el.value += arr[i] + separator;
			}
		}

		yosOnChange(yos);
	}
</script>

<form action="<?php echo url_for('admindiscipline/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<fieldset style='width:450px'>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<legend>Edit Discipline</legend>
<?php else: ?>
<legend>New Discipline</legend>
<?php endif; ?>
  <table style="width:95%">
    <tfoot>
      <tr><td><?php echo $form->renderHiddenFields() ?></td></tr>
      <tr>
          <td>
          <input type="submit" value="Save" class="fbuttons"/>
          <?php if (!$form->getObject()->isNew()): ?>
          <input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" class="fbuttons" value="Cancel" />
          <?php endif; ?>
          </td>
      </tr>
    </tfoot>
    <tbody>
      <?php if (isset($globalErrors)):?>
      <span class="error"><p><?php echo $globalErrors?></p></span>
      <?php endif;?>
      <tr>
      	<td>
      		<table class="inputlayout">
      			<tr>
			        <th>Title</th>
			        <td>
			          <?php echo $form['descr'] ?>
			        </td>
			    </tr>
			    <tr><td></td><td class="error"><?php echo $form['descr']->renderError() ?></td></tr>
      		</table>
      	</td>
      </tr>
      <tr>
      	<td>
      		<input type="hidden" name="assoc[1]" id="hidAssoc1" value="<?php echo $assocData[1]?>" />
      		<input type="hidden" name="assoc[2]" id="hidAssoc2" value="<?php echo $assocData[2]?>" />
      		<input type="hidden" name="assoc[3]" id="hidAssoc3" value="<?php echo $assocData[3]?>" />
      		<input type="hidden" name="assoc[4]" id="hidAssoc4" value="<?php echo $assocData[4]?>" />
      	
      		<div id='disciplAssocChooser' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
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
      		
      		<fieldset style="width:100%" onmouseover='mopen("disciplAssocChooser", 1)' onmouseout='mclosetime()'>
      			<legend style='font-size:10pt'>Associated Courses</legend>
      			<table class="inputlayout" style="width:100%">
      				<tr>
      					<td>Year of Study: 
      						<select style="width:50px" id="yos" onchange="return yosOnChange(this)">
      							<option value="1">1</option>
      							<option value="2">2</option>
      							<option value="3">3</option>
      							<option value="4">4</option>
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
      			var yos = document.getElementById("yos");
      			var year = yos.options[yos.selectedIndex].value;
      			parseAssocData(document.getElementById("hidAssoc"+year).value);
      		</script>
      	</td>
      </tr>
    </tbody>
  </table>
  </fieldset>
</form>
