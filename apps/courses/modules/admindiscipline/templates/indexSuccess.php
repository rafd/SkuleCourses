<?php include_partial('global/siteadminmenu') ?>
<h1>Discipline</h1>
<table>
<tr>
<td><?php include_partial('list', array('enum_item_list' => $enum_item_list)) ?></td>
<td><?php include_partial('form', array('form' => $form)) ?></td>
</tr>
</table>


