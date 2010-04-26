<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_RATING))?>

<div id="main"><div id="critique_content">
<h2>Course Ratings Manager</h2>
<table>
<tr><td width="50%">
<h3>
<?php echo link_to('Rating Criteria Manager', 'adminratingCriteria/list')?>
</h3>
<p>
Rating criteria are the list of questions used to gauge the performance of an instructor.
</p><p>
Before importing new critique data, one should make sure that all the critique questions are contained within
this list.
</p>
</td>
<td style="vertical-align:top">
<h3>
<?php echo link_to('Rating Import Manager', 'adminratingCriteria/importIndex')?>
</h3>
<p>
Use this manager to view import history and import new critique data.
</p>
</td></tr></table>
</div></div>