<?php echo $submenu ?>
<div id="content">
	<h3>Maintenance Section</h3>
	<p>This section provides means to manage SkuleCourses. Please note that modifications to the system are irreversible once saved. 
	Please pay due diligence when accessing this section.</p>
	<p>Editable Sections:</p>
	<ul>
		<?php foreach (subMenuOptions::getMaintenanceSections() as $key=>$value):?>
		<li><?php echo link_to($key, $value)?></li>
		<?php endforeach;?>
	</ul>
</div>