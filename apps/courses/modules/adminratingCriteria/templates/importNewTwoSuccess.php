<?php use_helper('Object')?>
<?php use_helper('Javascript')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_RATING))?>
<?php $len = count($data)?>

<div id="main"><div id="critique_content">
<h2>Import New Critique Data</h2>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/index")?>' style="padding-left: 20px;width:auto;">Back to Ratings Menu</a></p>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/importIndex")?>' style="padding-left: 20px;width:auto;">Back to Import History</a></p>

<?php $delBtnStr = "<a class='deletebtn' onclick='mappingDelete()' title='delete the last column mapping' style='margin-left:0'></a><input type='hidden' name='mappingDel' id='mappingDel' />" ?>

<script type="text/javascript">
	var mapping_len = <?php echo $len?>;
	var selected_row_index = NaN;
	var validation_requirements = new Array();

	function mappingDelete(){
		var res = confirm("Are you sure? There is no rollback on this operation.");
		if (res){
			// remove the last row
			var table = document.getElementById("mapping_table");
			document.getElementById("mappingDel").value = trim(table.rows[mapping_len].cells[4].innerHTML);
			document.getElementById("ajax_del_mapping").click();
			table.deleteRow(mapping_len);
			mapping_len -= 1;
			

			// give the second last row the delete button
			row = table.rows[mapping_len];
			row.cells[1].innerHTML = "<?php echo $delBtnStr?>";
		}
	}

	function mappingAdd(){
		mapping_len += 1;

		// add the new row
		var table = document.getElementById("mapping_table");
		var row = table.insertRow(-1);
		row.id = "mapping_tr_"+(mapping_len-1);
		row.setAttribute("selected", "false");
		row.innerHTML = "<td></td><td></td><td>"+mapping_len+"</td><td></td><td></td><td></td>";
		row.cells[0].innerHTML = "<a class='select' onclick='mappingSelection(\"mapping_tr_"+(mapping_len-1)+"\")' title='select to edit'></a>";
		row.cells[1].innerHTML = "<?php echo $delBtnStr?>";

		// remove the previous row's delete button
		row = table.rows[mapping_len-1];
		row.cells[1].innerHTML = "";
	}

	function mappingSelection(trId){
		var tr = document.getElementById(trId);

		if (tr.getAttribute("selected") == "true"){
			tr.setAttribute("selected","false");

			// remove the editable fields
			tr.cells[3].innerHTML = document.getElementById("mapping_type").value;
			tr.cells[4].innerHTML = document.getElementById("mapping_criterion").value;
			tr.cells[5].innerHTML = document.getElementById("mapping_scale").value;
			
			selected_row_index = NaN;
			
		} else {
			// first remove the selection of the previous row, if applicable
			if (!isNaN(selected_row_index)){
				mappingSelection("mapping_tr_"+selected_row_index);
			}
			
			// now do the current row
			tr.setAttribute("selected","true");
			selected_row_index = trId.split('_')[2];

			var colNum = tr.children[2].innerHTML;
			var type = tr.children[3].innerHTML;
			var criterion = tr.children[4].innerHTML;
			var rating = tr.children[5].innerHTML;
			
			tr.cells[3].innerHTML = "<select style='width:140px' onchange='fetchCriteria(this.options[this.selectedIndex].text);'>"
				<?php foreach ($mappingTypes as $type):?>
				+"<option value='<?php echo $type->getId()?>'><?php echo $type->getDescr()?></option>"
				<?php endforeach;?>
				+"</select><input type='hidden' name='mapping_type' id='mapping_type' />";
				
			tr.cells[4].innerHTML = "<select style='width:390px' onchange='fetchScales(this.options[this.selectedIndex].text)'></select>"
				+"<input type='hidden' name='mapping_criterion' id='mapping_criterion' />";

			tr.cells[5].innerHTML = "<select style='width:45px' onchange='document.getElementById(\"mapping_scale\").value=this.options[this.selectedIndex].text;'>"
				+"</select><input type='hidden' name='mapping_scale' id='mapping_scale' />";

			document.getElementById("mapping_type").value = trim(type);
			document.getElementById("mapping_criterion").value = trim(criterion);
			document.getElementById("mapping_scale").value = trim(rating);
			makeSelectSelection(tr.cells[3].children[0], document.getElementById("mapping_type"));
			fetchCriteria(type);
		}
	}

	function makeSelectSelection(selEl, txtEl){
		var arr = selEl.options;
		var len = arr.length;
		var selected = false;
		for (var i=0; i<len; i++){
			if (arr[i].text == txtEl.value){
				arr[i].selected = true;
				selected = true;
				break;
			}
		}
		
		if (!selected){
			txtEl.value = arr[0].text;
		}
	}

	function fetchCriteria(type){
		document.import_history.mapping_type.value = type;
		document.import_history.ajax_get_criteria.click();
	}

	function fetchScales(criterion){
		document.import_history.mapping_criterion.value = criterion;
		document.import_history.ajax_get_scales.click();
	}

	function validateAndSaveMappings(){
		document.getElementById("save_mapping_progress").style.display="block";
		
		if (!isNaN(selected_row_index)){
	  		mappingSelection("mapping_tr_"+(parseInt(selected_row_index)));
		}
		
		if (validation_requirements.length==0){
			document.getElementById("ajax_get_validation").click();
		} else {
			var rows = document.getElementById("mapping_table").rows;
			var len = mapping_len+1;
			var len_req = validation_requirements.length;
			for (var i=0; i<len; i++){
				var descr = trim(rows[i].cells[4].innerHTML);
				var rating = trim(rows[i].cells[5].innerHTML);
				for (var j=0; j<len_req; j++){
					if (validation_requirements[j][1]==descr){
						validation_requirements[j][0]++;
						validation_requirements[j][4] += parseInt(rating);
						break;
					}
				}
			}

			// now check that the number of rows match up the required
			var err = false;
			for (var i=0; i<len_req; i++){
				if (validation_requirements[i][0]!=0){
					if (validation_requirements[i][0]!=validation_requirements[i][2]){
						err = true;
						alert("Error during saving:\nThe criterion: \""+validation_requirements[i][1]+"\" requires "+validation_requirements[i][2]+" scales."
							+" You have only mapped "+validation_requirements[i][0]+".");
						validation_requirements = new Array();
						break;
					} else if (validation_requirements[i][4] != validation_requirements[i][3]){
					  	err = true;
						alert("Error during saving:\nThe criterion: \""+validation_requirements[i][1]+"\" requires a total scale sum of "+validation_requirements[i][3]+"."
							+" You have only mapped "+validation_requirements[i][4]+".");
						validation_requirements = new Array();
						break;
					}
				}
			}

			// if no error, save
			if (!err){
				saveMappings(1);
			} else {
			  document.getElementById("save_mapping_progress").style.display="none";
			}
		}
	}

	function saveMappings(rowIndex){
		if (rowIndex <= mapping_len){
			var row = document.getElementById("mapping_table").rows[rowIndex];
			document.getElementById("mapping_save_col").value = trim(row.cells[2].innerHTML);
			document.getElementById("mapping_save_type_descr").value = trim(row.cells[3].innerHTML);
			document.getElementById("mapping_save_descr").value = trim(row.cells[4].innerHTML);
			document.getElementById("mapping_save_scale").value = trim(row.cells[5].innerHTML);
	
			document.getElementById("ajax_save_mappings").click();
		} else {
			document.import_history.submit();
		}
	}
</script>

<form name="import_history" action="<?php echo url_for("adminratingCriteria/importNewThree")?>" method="post">
	<input type="hidden" value="<?php echo $sf_request->getParameter("critique_year")?>" name="critique_year" />
	<input type="hidden" value="<?php echo $sf_request->getParameter("critique_term")?>" name="critique_term" />

	<fieldset>
		<legend>Step 2 - Import Column Mappings</legend>
		<a class="help">
		<span>Each column of the import file must be mapped to a rating criterion that exists in our system.</span></a><br />
		<table class="disptable" id="mapping_table">
			<tr>
				<th width="10"></th>
				<th width="10"><a class="addbtn" title="Add a new column mapping" onclick="mappingAdd()"></a></th>
				<th width="50">Column</th>
				<th width="150">Type</th>
				<th width="400">Criterion</th>
				<th width="50">Rating</th>
			</tr>
			<?php for ($i=0; $i<$len; $i++):?>
			<?php $row = $data[$i]?>
			<tr id="mapping_tr_<?php echo $i?>" selected="false">
				<td><a class='select' onclick='mappingSelection("mapping_tr_<?php echo $i?>")' title='select to edit'></a></td>
				<td>
					<?php if ($i==($len-1)):?>
					<?php echo $delBtnStr?>
					<?php endif;?>
				</td>
				<td><?php echo $row->getColumn()?></td>
				<td><?php echo $row->getEnumItemRelatedByMapping()->getDescr()?></td>
				<td>
					<?php if ($row->getMapping()==EnumItemPeer::MAPPING_QUESTION || $row->getMapping()==EnumItemPeer::MAPPING_NUMBER):?>
					<?php echo $row->getRatingField()->getDescr()?>
				    <?php endif;?>
				</td>
				<td>
					<?php if ($row->getRatingFieldId()!=RatingFieldPeer::NUMBER_ENROLLED 
					  && $row->getRatingFieldId()!=RatingFieldPeer::NUMBER_RESPONDED && $row->getRatingFieldId()!=RatingFieldPeer::RETAKE):?>
				    <?php echo $row->getQuestionRating()?>
				    <?php endif;?>
				</td>
			</tr>
			<?php endfor;?>
		</table>
		<br />
		<input type="button" value="Next" onclick="validateAndSaveMappings()" />
		<br />
		<div id="save_mapping_progress" class="hidden">Saving, please wait...</div>
		
		<?php echo submit_to_remote('ajax_get_criteria', 'Search', array(
      	  'update'   =>   'tmp_mapping_updater',
      	  'url'      =>   'adminratingCriteria/ajaxFindCriteria',
		  'script'   =>   true), array(
      	  'id'       =>   'ajax_get_criteria',
		  'class'    =>   'hidden'))?>
		
		<?php echo submit_to_remote('ajax_get_scales', 'Search', array(
      	  'update'   =>   'tmp_mapping_updater',
      	  'url'      =>   'adminratingCriteria/ajaxFindScales',
		  'script'   =>   true), array(
      	  'id'       =>   'ajax_get_scales',
		  'class'    =>   'hidden'))?>
		  
		<?php echo submit_to_remote('ajax_get_validation', 'Search', array(
      	  'update'   =>   'tmp_mapping_updater',
      	  'url'      =>   'adminratingCriteria/ajaxFetchValidationRequirements',
		  'script'   =>   true), array(
      	  'id'       =>   'ajax_get_validation',
		  'class'    =>   'hidden'))?>
		  
		<?php echo submit_to_remote('ajax_save_mappings', 'Search', array(
      	  'update'   =>   'tmp_mapping_updater',
      	  'url'      =>   'adminratingCriteria/ajaxSaveMappings',
		  'script'   =>   true), array(
      	  'id'       =>   'ajax_save_mappings',
		  'class'    =>   'hidden'))?>
		  
		<?php echo submit_to_remote('ajax_del_mapping', 'Search', array(
      	  'update'   =>   'tmp_mapping_updater',
      	  'url'      =>   'adminratingCriteria/ajaxDeleteLastMapping',
		  'script'   =>   true), array(
      	  'id'       =>   'ajax_del_mapping',
		  'class'    =>   'hidden'))?>
		
		<div class="hidden" id="tmp_mapping_updater"></div>
		
		<input type="hidden" id="mapping_save_descr" name="mapping_save_descr" />
		<input type="hidden" id="mapping_save_col" name="mapping_save_col" />
		<input type="hidden" id="mapping_save_type_descr" name="mapping_save_type_descr" />
		<input type="hidden" id="mapping_save_scale" name="mapping_save_scale" />
	</fieldset>

</form>
</div></div>