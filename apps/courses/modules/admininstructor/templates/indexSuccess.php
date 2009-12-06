<?php use_helper('Object')?>
<?php echo $submenu ?>

<div id="main"><div id="critique_content">
<h2>Instructors Manager</h2>
<table class="inputlayout">
	<tr>
		<td class="topup">
		    <?php include_partial('list', array('instructor_list' => $instructor_list)) ?>
		</td>
		<td class="topup">
			<?php //include_partial('form', array('form' => $form, 'formDetail' => $form2, 'globalErrors' => (isset($globalErrors)?$globalErrors:null), 'omiterror'=>(isset($omiterror)?$omiterror:null), 'redirectAddress' => (isset($redirectAddress)?$redirectAddress:null))) ?>
			<?php include_partial('form', array('form' => $form, 'globalErrors' => (isset($globalErrors)?$globalErrors:null), 
			'redirectAddress' => (isset($redirectAddress)?$redirectAddress:null), 'separator' => $separator, 'assocData' => $assocData,
			'date' => $date, 'earliestYear' => $earliestYear)) ?>
		</td>
	</tr>
</table>
</div></div>