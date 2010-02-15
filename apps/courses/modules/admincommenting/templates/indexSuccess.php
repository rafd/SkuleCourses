<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_COMMENTING))?>
<div id="main"><div id="critique_content">
<h2>Commenting Manager</h2>
<table>
<tr><td width="50%" style="vertical-align:top">
<h3>
<?php echo link_to('Unapproved Comments', 'admincommenting/unapproved')?>
</h3>
<p>
View and manage all unapproved comments submitted by users.
</p>
</td>
<td width="50%" style="vertical-align:top">
<h3>
<?php echo link_to('Course Commenting', 'admincommenting/coursecommenting')?>
</h3>
<p>
Manage course comments.
</p>
</td></tr></table>
</div></div>