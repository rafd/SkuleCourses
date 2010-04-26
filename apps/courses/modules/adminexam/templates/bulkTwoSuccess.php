<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_EXAM))?>
<div id="main"><div id="critique_content">
<h2>Bulk Exams Upload</h2>
<p><a class="back" href='<?php echo url_for("adminexam/index")?>' style="padding-left: 20px;width:auto;">Back to Exam Menu</a></p>
<p><a class="back" href='<?php echo url_for("adminexam/bulk")?>' style="padding-left: 20px;width:auto;">Back to Step 1</a></p>

<form>
	<fieldset>
		<legend>Step 2 - Upload Exams</legend>
		<center>
		<applet codebase="classes" code="Client/Client.class" archive='/applets/appletExamsUploader.jar' width=720 height=500>
			<?php include(sfContext::getInstance()->getConfigCache()->checkConfig('config/skuleGlobal.yml')) ?>
	        <param name='username' value="<?php echo $appletUploaderParams['username']?>" />
	        <param name='password' value="<?php echo $appletUploaderParams['password']?>" />
	        <param name='handlerPath' value="<?php echo url_for("invisible/bulkExamsHandler", true)?>" />
        	<param name="registrationPath" value="<?php echo url_for("invisible/bulkExamsRegistration", true)?>" />
	        <param name='year' value="<?php echo $bulkYear?>" />
	        <param name='url' value="<?php echo url_for("adminexam/bulkThree", true)?>" />
    	</applet>
    	</center>
	</fieldset>
</form>
</div></div>

<?php if (isset($caution)):?>
<script type="text/javascript">
	ans = confirm('The directory under <?php echo $bulkYear?> is not empty. This is a strong indication that the bulk exams for <?php echo $bulkYear?> have already been imported. You should NOT import the same CD twice.\n\nAre you sure you want to proceed?');
	if (!ans){
		history.go(-1);
	}
</script>
<?php endif;?>