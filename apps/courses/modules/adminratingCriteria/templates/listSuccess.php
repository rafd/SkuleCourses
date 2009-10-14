<?php include_partial('global/siteadminmenu') ?>
<h1>Base Ratings Manager</h1>
<table>
<tr>
<td><?php include_partial('list', array('rating_field_list' => $rating_field_list)) ?></td>
<td><?php include_partial('form', array('form' => $form)) ?></td>
</tr>
</table>