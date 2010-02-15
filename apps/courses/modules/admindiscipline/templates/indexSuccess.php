<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_DISCIPLINE))?>
<div id="main"><div id="critique_content">
<h2>Disciplines Manager</h2>
<table class='inputlayout'>
<tr>
<td class='topup'><?php include_partial('list', array('enum_item_list' => $enum_item_list)) ?></td>
<td class='topup'><?php include_partial('form', array('form' => $form, 'globalErrors' => (isset($globalErrors)?$globalErrors:null), 
	'redirectAddress' => (isset($redirectAddress)?$redirectAddress:null), 'assocData' => $assocData, 'separator' => $separator)) ?></td>
</tr>
</table>
</div></div>