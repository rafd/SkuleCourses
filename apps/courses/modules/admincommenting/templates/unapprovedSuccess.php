<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
<h2>Unapproved Comments</h2>

<p><a class="back" href='<?php echo url_for("admincommenting/index")?>' style="padding-left: 20px;width:auto;">Back to Commenting Menu</a></p>

<table class="inputlayout">
	<tr>
		<td class='topup'>
		<?php include_partial('unapprovedList', array('comment_list' => $comment_list)) ?>
		</td>
		<td class='topup'>
		<?php include_partial('unapprovedForm', array('form' => $form, 'globalErrors' => (isset($globalErrors)?$globalErrors:null), 'redirectAddress' => (isset($redirectAddress)?$redirectAddress:null))) ?>
		</td>
	</tr>
</table>

</div></div>