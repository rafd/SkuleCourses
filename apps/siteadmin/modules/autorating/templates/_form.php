<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('autorating/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields() ?>
          &nbsp;<a href="<?php echo url_for('autorating/index') ?>">Cancel</a>
          <?php if (!$form->getObject()->isNew()): ?>
            &nbsp;<?php echo link_to('Delete', 'autorating/delete?id='.$form->getObject()->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
          <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th><?php echo $form['field_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['field_id']->renderError() ?>
          <?php echo $form['field_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['rating']->renderLabel() ?></th>
        <td>
          <?php echo $form['rating']->renderError() ?>
          <?php echo $form['rating'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['import_dt']->renderLabel() ?></th>
        <td>
          <?php echo $form['import_dt']->renderError() ?>
          <?php echo $form['import_dt'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['course_ins_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['course_ins_id']->renderError() ?>
          <?php echo $form['course_ins_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['number']->renderLabel() ?></th>
        <td>
          <?php echo $form['number']->renderError() ?>
          <?php echo $form['number'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>
