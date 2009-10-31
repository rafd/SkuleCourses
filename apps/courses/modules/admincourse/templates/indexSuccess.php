<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
<h2>Course Manager</h2>
<table class="inputlayout">
<tr><td class='topup'>
<?php include_partial('list', array('course_list' => $course_list)) ?>
</td><td class='topup'>
<?php if(!isset($omitdetail)): ?>
<?php $omitdetail=false ?>
<?php endif; ?>
<?php if(!isset($omitdisassoc)): ?>
<?php $omitdisassoc=false ?>
<?php endif; ?>
<?php include_partial('form', array('form' => $form, 'form2' => $form2, 'form3' => $form3, 'omitdetail' => $omitdetail, 'omitdisassoc' => $omitdisassoc)) ?>
</td>
</table>
</div></div>