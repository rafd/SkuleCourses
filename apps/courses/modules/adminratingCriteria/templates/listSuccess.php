<h1>Base Ratings Manager</h1>
<table>
<tr>
<td><?php include_partial('list', array('rating_field_list' => $rating_field_list)) ?></td>
<?php if(isset($is_reserved)): ?>
<td><?php include_partial('view', array('rating' => $rating)) ?></td>
<?php else: ?>
<td><?php include_partial('form', array('form' => $form, 'scale_PID' => $scale_PID)) ?></td>
<?php endif; ?>
</tr>
</table>