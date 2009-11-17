<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
<h2>Departments Manager</h2>
<table class='inputlayout'>
  <tr>
    <td class='topup'><?php include_partial('list', array('department_list' => $department_list)) ?></td>
    <td class='topup'><?php include_partial('form', array('form' => $form, 'globalErrors' => (isset($globalErrors)?$globalErrors:null),
		'redirectAddress' => (isset($redirectAddress)?$redirectAddress:null))) ?></td>
  </tr>
</table>
</div></div>