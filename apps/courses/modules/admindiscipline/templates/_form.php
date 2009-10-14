<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('admindiscipline/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<fieldset><legend>Edit Discipline</legend>
<?php else: ?>
<fieldset><legend>New Discipline</legend>
<?php endif; ?>
  <table>
    <tfoot>
      <tr><td colspan="2"><?php echo $form->renderHiddenFields() ?></td></tr>
      <tr>
          <td>
          
          </td>
          <td>
          <input type="submit" value="Save" class="fbuttons"/>
          <?php if (!$form->getObject()->isNew()): ?>

          <input type="button" href="<?php echo url_for('admindiscipline/index') ?>" onclick="window.location.href(this.href);" class="fbuttons" value="Cancel" />
          <?php endif; ?>
          
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th>Discipline <br />Description</th>
        <td>
          <?php echo $form['descr']->renderError() ?>
          <?php echo $form['descr'] ?>
        </td>
      </tr>
    </tbody>
  </table>
  </fieldset>
</form>
