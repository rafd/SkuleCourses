<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('admindiscipline/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<fieldset style='width:450px'>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<legend>Edit Discipline</legend>
<?php else: ?>
<legend>New Discipline</legend>
<?php endif; ?>
  <table style="width:95%">
    <tfoot>
      <tr><td><?php echo $form->renderHiddenFields() ?></td></tr>
      <tr>
          <td>
          <input type="submit" value="Save" class="fbuttons"/>
          <?php if (!$form->getObject()->isNew()): ?>
          <input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" class="fbuttons" value="Cancel" />
          <?php endif; ?>
          </td>
      </tr>
    </tfoot>
    <tbody>
      <?php if (isset($globalErrors)):?>
      <span class="error"><p><?php echo $globalErrors?></p></span>
      <?php endif;?>
      <tr>
      	<td>
      		<table class="inputlayout">
      			<tr>
			        <th>Title</th>
			        <td>
			          <?php echo $form['descr'] ?>
			        </td>
			    </tr>
			    <tr><td></td><td class="error"><?php echo $form['descr']->renderError() ?></td></tr>
      		</table>
      	</td>
      </tr>
      <tr>
      	<td>
      		<fieldset style="width:100%">
      			<legend style='font-size:10pt'>Associated Courses</legend>
      		</fieldset>
      		<table class="inputlayout" style="width:100%">
      			<tr>
					<td>
						
					</td>
				  </tr>
      		</table>
      	</td>
      </tr>
    </tbody>
  </table>
  </fieldset>
</form>
