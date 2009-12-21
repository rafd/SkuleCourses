<?php use_helper('Javascript')?>

<div class="grayout_dialog" id="submitComment">
	<script type="text/javascript">
		function cancelCommentSubmission(){
			grayout("submitComment");
			document.commentSubmissionForm.security.value="";
			document.getElementById("commentSubmissionStatus").innerHTML="";
		}
	</script>
	<div class="title_bar">Leave My Comment</div>
	<form action="<?php echo url_for("course/commenting?id=".$courseObj->getId())?>" method="post" name="commentSubmissionForm">
		<p style="text-align:left; margin:5px 5px 3px 5px">Commenting about:</p>
		<table>
			<tr>
				<td>Year:</td>
				<td>
					<select style="width:100px" name="year">
						<?php $today = getdate();
						for ($i=($today["year"]+1); $i>=skuleadminConst::EARLIEST_YEAR+10; $i--):?>
						<option value="<?php echo $i?>"<?php if ($i==$today["year"]):?> selected<?php endif;?>><?php echo $i?></option>
						<?php endfor;?>
					</select>
				</td>
			<tr>
				<td>Term:</td>
				<td>
					<input type='radio' name='term' id='radioFall' value='9' CHECKED><label for='radioFall'>Fall</label>
				    <input type='radio' name='term' id='radioWinter' value='1'><label for='radioWinter'>Winter</label>
				    <input type='radio' name='term' id='radioSummer' value='5'><label for='radioSummer'>Summer</label>
				</td>
			</tr>
		</table>
		<p style="text-align:left; margin:5px 0 3px 5px">My comment:</p>
		<textarea cols="39" rows="6" name="my_comment"></textarea>
		<table style="margin-top:5px">
			<tr>
				<td></td>
				<td><img src="<?php echo url_for("invisible/currentSecurityImage")?>" /></td>
			</tr>
			<tr>
				<td>Security string:</td>
				<td><input type='text' name='security' /></td>
			</tr>
		</table><br />
		<div id="commentInputBtns">
			<?php echo submit_to_remote('commentSubmit', 'Submit', array(
			    'loading' => 'document.getElementById("commentSubmissionStatus").innerHTML="Please wait..."',
      			'update'  => 'commentSubmissionStatus',
			    'script'  => true,
      			'url'     => 'course/ajaxCommentSubmission?id='.$courseObj->getId()))?>
			<input type="button" value="Cancel" onclick="cancelCommentSubmission()" />
		</div>
		<div id="commentSuccessBtns" style="display:none"><input type='button' onclick='cancelCommentSubmission()' value='Close'/></div>
		<div id="commentSubmissionStatus" style="margin-top:7px"></div>
	</form>
</div>