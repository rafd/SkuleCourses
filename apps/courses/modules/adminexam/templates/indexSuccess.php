<h1>Exam List</h1>
<table><tr><td>
<?php include_partial('list', array('exam_list' => $exam_list)) ?>
</td><td>
<?php if(isset($uploaddir)): ?>
<?php include_partial('form', array('form' => $form, 'uploaddir' => $uploaddir)) ?>
<?php else: ?>
<?php include_partial('form', array('form' => $form)) ?>
<?php endif; ?>
</td></tr>
</table>
