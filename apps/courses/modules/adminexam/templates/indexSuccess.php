<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
<h2>Exams Manager</h2>
<table>
<tr><td width="50%">
<h3>
<?php echo link_to('Custom Exams Manager', 'adminexam/custom')?>
</h3>
<p>
The Custom Exam Manager allows admin to import and maintain exams individually.
</p>
</td>
<td width="50%">
<h3>
<?php echo link_to('Bulk Exams Manager', 'adminexam/bulk')?>
</h3>
<p>
The Bulk Exam Manager allows admin to import and maintain exams from discs or packages.
</p>
</td></tr></table>
</div></div>