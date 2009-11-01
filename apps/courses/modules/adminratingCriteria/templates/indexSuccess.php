<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
<h2>Course Ratings Manager</h2>
<table>
<tr><td width="50%">
<h3>
<?php echo link_to('Rating Questions Manager', 'adminratingCriteria/list')?>
</h3>
<p>
This shows a list of rating questions that are set default to all courses.
</p>
</td>
<td>
<h3>
<?php echo link_to('Rating Import Manager', 'adminratingCriteria/list')?>
</h3>
<p>
This contains the import history and data of the ratings documents from skule officials.
</p>
</td></tr></table>
</div></div>