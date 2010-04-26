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
		
	</fieldset>

</form>
</div></div>