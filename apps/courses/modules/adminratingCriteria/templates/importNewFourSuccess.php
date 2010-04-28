<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_RATING))?>

<div id="main"><div id="critique_content">
<h2>Import New Critique Data</h2>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/index")?>' style="padding-left: 20px;width:auto;">Back to Ratings Menu</a></p>
<p><a class="back" href='<?php echo url_for("adminratingCriteria/importIndex")?>' style="padding-left: 20px;width:auto;">Back to Import History</a></p>

<form name="import_history" enctype="multipart/form-data" action="<?php echo url_for("adminratingCriteria/importNewThree")?>" method="post">
	<input type="hidden" value="<?php echo $sf_request->getParameter("critique_year")?>" name="critique_year" />
	<input type="hidden" value="<?php echo $sf_request->getParameter("critique_term")?>" name="critique_term" />

	<fieldset>
		<legend>Step 4</legend>
		
		<?php if (isset($error)):?>
			<?php if ($error==1):?>
			<script type="text/javascript">
				alert("Column mappings are not compatible with the import file. You need to go back and make sure that the mappings are correct.");
				history.go(-1);
			</script>
			<?php else:?>
			Unknown error occurred. Import failed.
			<?php endif;?>
		<?php else:?>
			Import successful.
		<?php endif;?>
		
	</fieldset>

</form>
</div></div>