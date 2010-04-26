<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_RATING))?>

<div id="main"><div id="critique_content">
<h2>Import New Critique Data</h2>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/index")?>' style="padding-left: 20px;width:auto;">Back to Ratings Menu</a></p>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/importIndex")?>' style="padding-left: 20px;width:auto;">Back to Import History</a></p>

<script type="text/javascript">
	function validateCritique(){
		var file = document.import_history.data_file.value;
		var arr = file.split('.');
		if (file == ""){
			alert("A file is required");
		} else if (arr[arr.length-1].toUpperCase() != "CSV"){
			alert("Only a comma splitted value (csv) file is accepted here");
		} else {
			document.import_history.submit();
		}
	}
</script>

<form name="import_history" enctype="multipart/form-data" action="<?php echo url_for("adminratingCriteria/importNewFour")?>" method="post">
	<input type="hidden" value="<?php echo $sf_request->getParameter("critique_year")?>" name="critique_year" />
	<input type="hidden" value="<?php echo $sf_request->getParameter("critique_term")?>" name="critique_term" />

	<fieldset>
		<legend>Step 3 - Import File</legend>
		<table>
			<tr>
				<th>Data File</th>
				<td><input type="file" name="data_file" /></td>
			</tr>
		</table>
		<br />
		<input type="button" onclick="validateCritique()" value="Next" />
	</fieldset>

</form>
</div></div>