<?php use_helper('Javascript') ?>
<?php use_helper("DateForm")?>

<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('adminuser/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getUserName() : '').
($sf_request->hasParameter("page")? "&page=".$sf_request->getParameter("page") : "")) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<fieldset style='width:550px'>

<?php if ($form->getObject()->isNew()): ?>
<legend>New User</legend>
<?php else: ?>
<legend>Edit User Info</legend>
<?php endif; ?>

<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>

<table style='width:95%'>
	<tfoot>
		<tr>
			<td colspan="2">
            <?php echo $form->renderHiddenFields() ?>
          
			<input type="submit" value="Save" class="fbuttons"/>
            <?php if (!$form->getObject()->isNew()): ?>
          	<input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" class="fbuttons" value="Cancel" />
            <?php endif; ?>
			</td>
		</tr>
	</tfoot>
	<tbody>
		<?php if (isset($globalErrors)):?>
		<tr>
			<td class="error"><?php echo $globalErrors?></td>
		</tr>
		<?php endif;?>
		<tr>
			<td>
				<table class="inputlayout">
					<tr>
						<th width="100">Username</th>
						<?php if ($form->getObject()->isNew()): ?>
						<td><?php echo $form['user_name'] ?></td>
						<?php else:?>
						<td><?php echo $form->getObject()->getUserName() ?></td>
						<?php endif;?>
					</tr>
					<tr>
						<td></td>
						<td class="error"><?php echo $form['user_name']->renderError() ?></td>
					</tr>
					<tr>
						<th>Password</th>
						<td><?php echo $form['password'] ?></td>
					</tr>
					<tr>
						<td></td>
						<td class="error"><?php echo $form['password']->renderError() ?></td>
					</tr>
					<tr>
						<th>Type</th>
						<td><?php echo $form['type_id'] ?></td>
					</tr>
					<tr>
						<td></td>
						<td class="error"><?php echo $form['type_id']->renderError() ?></td>
					</tr>
					<tr>
						<th>Email</th>
						<td><?php echo $form['email'] ?></td>
					</tr>
					<tr>
						<td></td>
						<td class="error"><?php echo $form['email']->renderError() ?></td>
					</tr>
				</table>
			</td>
		</tr>
	</tbody>
</table>

</fieldset>
</form>