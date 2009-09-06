<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('adminCIA/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields() ?>
          <?php if (!$form->getObject()->isNew()): ?>
          &nbsp;<a href="<?php echo url_for('adminCIA/index') ?>">Cancel</a>
          <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th><?php echo $form['instructor_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['instructor_id']->renderError() ?>
          <?php echo $form['instructor_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['course_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['course_id']->renderError() ?>
          <?php echo $form['course_id'] ?>
        </td>
      </tr>
      <tr>
        <th>Year</th>
        <td>
          <?php echo $form['years']->renderError() ?>
          <?php echo $form['years'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['semester']->renderLabel() ?></th>
        <td>
          <?php echo $form['semester']->renderError() ?>
          <?php echo $form['semester'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>
