<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE))?>
<div id="main"><div id="critique_content">
<h2>Skule Courses Maintenance</h2>
<p>This section provides means to manage SkuleCourses. Please note that modifications to the system are irreversible once saved. 
Please pay due diligence when accessing this section.</p>
<p>Editable Sections:</p>
<table style='width:100%'>
<?php $counter = 0;?>
<?php foreach (subMenuOptions::getMaintenanceSections() as $key=>$value):?>
	<?php if ($counter%2==0):?>
		</tr>
		<tr>
	<?php endif;?>
	<td width="50%">
		<h3><?php echo link_to($sectionNames[$key], $value)?></h3>
		<p>
		<?php echo $sectionDetails[$key]?>
		</p>
	</td>
	<?php $counter++;?>
	
<?php endforeach;?>
</tr></table>
</div></div>
<img class='hidden' src='/skule_images/delete.on.gif' />
<img class='hidden' src='/skule_images/select.on.gif' />