<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_USER))?>
<div id="main"><div id="critique_content">
<h2>User Manager</h2>
	<table class="inputlayout">
		<tr>
			<td class='topup'>
				<?php include_partial('list', array('user_list' => $user_list)) ?>
				</td><td class='topup'>
				<?php include_partial('form', array('form' => $form, 'globalErrors' => (isset($globalErrors)?$globalErrors:null), 'redirectAddress' => (isset($redirectAddress)?$redirectAddress:null))) ?>
			</td>
		</tr>
	</table>
</div></div>