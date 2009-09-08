<?php include_partial('global/siteadminmenu') ?>
<h1>Instructors</h1>
<table><tr><td>
<?php include_partial('list', array('instructor_list' => $instructor_list)) ?>
</td><td>

<?php if(!isset($omiterror)): ?>
<?php include_partial('form', array('form' => $form, 'formDetail' => $form2)) ?>
<?php else: ?>
<?php include_partial('form', array('form' => $form, 'formDetail' => $form2, 'omiterror'=>$omiterror)) ?>
<?php endif; ?>
</td></tr></table>

