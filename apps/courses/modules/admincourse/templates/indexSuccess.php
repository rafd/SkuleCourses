<?php include_partial('global/siteadminmenu') ?>
<h1>Courses</h1>
<table>
<tr><td>
<?php include_partial('list', array('course_list' => $course_list)) ?>
</td><td>
<?php if(!isset($omitdetail)): ?>
<?php $omitdetail=false ?>
<?php endif; ?>
<?php if(!isset($omitdisassoc)): ?>
<?php $omitdisassoc=false ?>
<?php endif; ?>
<?php include_partial('form', array('form' => $form, 'form2' => $form2, 'form3' => $form3, 'omitdetail' => $omitdetail, 'omitdisassoc' => $omitdisassoc)) ?>
</td>
</table>


