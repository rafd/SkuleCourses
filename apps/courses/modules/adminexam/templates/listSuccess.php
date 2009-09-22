<?php include_partial('global/siteadminmenu') ?>
<h1>Custom Exams Manager</h1>
<table><tr><td>
<?php include_partial('list', array('exam_list' => $exam_list)) ?>
</td><td>
<?php if(isset($uploadpath)): ?>
<?php include_partial('form', array('form' => $form, 'uploadpath' => $uploadpath)) ?>
<?php else: ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php endif; ?>

</td></tr>
</table>
