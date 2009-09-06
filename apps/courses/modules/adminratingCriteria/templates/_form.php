<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('adminratingCriteria/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields() ?>
          <?php if (!$form->getObject()->isNew()): ?>
          &nbsp;<a href="<?php echo url_for('adminratingCriteria/index') ?>">Cancel</a>
         <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th>Question</th>
        <td>
          <?php echo $form['descr']->renderError() ?>
          <?php echo $form['descr'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['type_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['type_id']->renderError() ?>
          <?php echo $form['type_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['is_reserved']->renderLabel() ?></th>
        <td>
          <?php echo $form['is_reserved']->renderError() ?>
          <?php echo $form['is_reserved'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>
