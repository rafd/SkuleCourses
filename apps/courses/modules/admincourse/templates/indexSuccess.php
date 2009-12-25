<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
<h2>Course Manager</h2>
	<table class="inputlayout">
		<tr>
			<td class='topup'>
				<?php include_partial('list', array('course_list' => $course_list)) ?>
				</td><td class='topup'>
				<?php if(!isset($omitdetailerr)): ?>
				<?php $omitdetailerr=false ?>
				<?php endif; ?>
				<?php include_partial('form', array('form' => $form, 'form2' => $form2, 'omitdetailerr' => $omitdetailerr, 'globalErrors' => (isset($globalErrors)?$globalErrors:null),
					'redirectAddress' => (isset($redirectAddress)?$redirectAddress:null), 'courseDetail' => (isset($courseDetail)?$courseDetail:null))) ?>
			</td>
		</tr>
	</table>
</div></div>