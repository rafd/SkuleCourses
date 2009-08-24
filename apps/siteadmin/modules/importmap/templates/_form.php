<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('importmap/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?column='.$form->getObject()->getColumn().'&import_file_type='.$form->getObject()->getImportFileType() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields() ?>
          &nbsp;<a href="<?php echo url_for('importmap/index') ?>">Cancel</a>
          <?php if (!$form->getObject()->isNew()): ?>
            &nbsp;<?php echo link_to('Delete', 'importmap/delete?column='.$form->getObject()->getColumn().'&import_file_type='.$form->getObject()->getImportFileType(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
          <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th><?php echo $form['mapping']->renderLabel() ?></th>
        <td>
          <?php echo $form['mapping']->renderError() ?>
          <?php echo $form['mapping'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['rating_field_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['rating_field_id']->renderError() ?>
          <?php echo $form['rating_field_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['question_rating']->renderLabel() ?></th>
        <td>
          <?php echo $form['question_rating']->renderError() ?>
          <?php echo $form['question_rating'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>
