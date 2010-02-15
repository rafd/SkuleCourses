<?php 
  $conn = Propel::getConnection();
  $arr = EnumItemPeer::getAllForParentNodeId(EnumItemPeer::EXAM_TYPES_NODE_ID, $conn);
?>

<div class='grayout_dialog' id='submitExam'>
    <script type='text/javascript'>
    	function securityFrameOnLoad(){
    		if (hidSecurityFrame.document.getElementById('status')) {
    			var status = hidSecurityFrame.document.getElementById('status').value; 
    			if (status == 'Success'){
    				document.getElementById('inputButtons').style.display = 'none';
    				document.getElementById('successButtons').style.display = 'block';
    				dispStatus('Submission Successful');
    			} else if (status == 'Security'){
    				dispStatus('Security string does not match.');
    			} else {
    				dispStatus('An error occurred. Please try again later.');
    			}
    		}
    	}
    	
    	function submitExamOnSubmit(){
    		// check that everything has been filled in before submission
    		var year = trim(document.exam_submission.year.value);
    		if (year == ''){
    			dispStatus('You must specify a year.');
    			return false;
    		}
    		if (isNaN(year) || year < 1990 || year > 2020){
    			dispStatus('Year must be bigger than 1990 and smaller than 2020.');
    			return false;
    		}
    		if (trim(document.exam_submission.security.value) == ''){
    			dispStatus('You must type in the security string.');
    			return false;
    		}
    		if (trim(document.exam_submission.descr.value) == ''){
    			dispStatus('You must type in the display title.');
    			return false;
    		}
    		var fileName = trim(document.exam_submission.file.value);
    		if (fileName == ''){
    			dispStatus('No file has been selected.');
    			return false;
    		}
    		if (fileName.lastIndexOf('pdf')==-1 && fileName.lastIndexOf('PDF')==-1){
    			dispStatus('Only a PDF file can be submitted.');
    			return false;
    		}
    		
    		dispStatus('Please wait...');

    		return true;
    	}
    	
    	function dispStatus(msg){
    		document.getElementById('statusSpan').style.display = 'block';
    		document.getElementById('statusSpan').innerHTML = msg;
    	}
    	
    	function cancelAction(){
    		grayout('submitExam');
    		document.getElementById('statusSpan').style.display = 'none';
    		document.getElementById('inputButtons').style.display = 'block';
    		document.getElementById('successButtons').style.display = 'none';
    		document.exam_submission.security.value='';
    	}
    	
    	function reloadAction(){
    		document.getElementById('statusSpan').style.display = 'none';
    		document.getElementById('inputButtons').style.display = 'block';
    		document.getElementById('successButtons').style.display = 'none';
    		document.getElementById('exam_descr').value = '';
    		document.getElementById('exam_file').value = '';
    	}
</script>

<div class='title_bar'>Submit Exam</div>
	<form name='exam_submission' method='post' enctype='multipart/form-data' action='<?php echo url_for("invisible/submitExam")?>' target='hidSecurityFrame'>
		<table>
		<tr>
			<td width='100'>Course:</td>
			<td align='left'><?php echo $courseId?>
			<input type='hidden' name='course' value='<?php echo $courseId?>'/></td>
		</tr>
		<tr>
			<td>Type:</td>
			<td align='left'>
				<select name='type' style='width:100px'>
				<?php foreach ($arr as $enum): ?>
		      	<option value='<?php echo $enum->getId()?>'><?php echo $enum->getDescr()?></option>
		    	<?php endforeach;?>
		    	</select>
		   	</td>
		</tr>
		<tr>
			<td>Year:</td>
			<td align='left'>
				<select name='year' style='width:100px'>
				<?php $date = getdate() ?>
			    <?php for ($i=$date["year"]+1; $i>=skuleadminConst::EARLIEST_YEAR; $i--): ?>
			    	<option value='<?php echo $i?>'<?php if ($i == $date["year"]):?> selected<?php endif;?>><?php echo $i?></option>
			    <?php endfor;?>
			    </select>
			</td>
		</tr>
		<tr>
			<td>Term:</td>
			<td>
			    <input type='radio' name='term' id='radioFall' value='9' CHECKED><label for='radioFall'>Fall</label>
			    <input type='radio' name='term' id='radioWinter' value='1'><label for='radioWinter'>Winter</label>
			    <input type='radio' name='term' id='radioSummer' value='5'><label for='radioSummer'>Summer</label>
			</td>
		</tr>
			<tr>
				<td>Display Title:</td><td align='left'><input type='text' name='descr' id='exam_descr' /></td>
			</tr>
			<tr>
				<td>File:</td><td align='left'><input type='file' name='file' id='exam_file' /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td></td>
				<td align='left'><img src='<?php echo url_for('invisible/securityImage')?>'/></td>
			</tr>
			<tr>
				<td>Security String:</td><td><input type='text' name='security' /></td>
			</tr>
		</table>
	    <div id='inputButtons'>
	    	<input type='submit' onclick='return submitExamOnSubmit();' value='Submit'/>
	    	<input type='button' onclick='cancelAction()' value='Cancel'/>
	    </div>
	    <div id='successButtons' style='display:none'>
	    	<input type='button' onclick='reloadAction()' value='Submit Another'/>
	    	<input type='button' onclick='cancelAction()' value='Close'/>
	    </div>
	</form>

	<iframe name='hidSecurityFrame' style='display:none' onload='securityFrameOnLoad()';></iframe>
	<br/><span style='display:none' id='statusSpan'></span>
</div>