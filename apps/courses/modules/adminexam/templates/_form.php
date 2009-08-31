<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('adminexam/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields() ?>
             <?php if (!$form->getObject()->isNew()): ?>
          &nbsp;<a href="<?php echo url_for('adminexam/index') ?>">Cancel</a>
          <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <?php echo $form->renderGlobalErrors() ?>
      <tr>
        <th><?php echo $form['course_id']->renderLabel() ?></th>
        <td>
          <?php echo $form['course_id']->renderError() ?>
          <?php echo $form['course_id'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['type']->renderLabel() ?></th>
        <td>
          <?php echo $form['type']->renderError() ?>
          <?php echo $form['type'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['year']->renderLabel() ?></th>
        <td>
          <?php echo $form['year']->renderError() ?>
          <?php echo $form['year'] ?>
        </td>
      </tr>
      <tr>
        <th><?php echo $form['descr']->renderLabel() ?></th>
        <td>
          <?php echo $form['descr']->renderError() ?>
          <?php echo $form['descr'] ?>
        </td>
      </tr>
      <?php if (!$form->getObject()->isNew()): ?>
      <tr>
        <th>File</th>
        <td>
          <?php echo link_to($form->getObject()->getFilePath(), $sf_request->getRelativeUrlRoot().'/'.$uploaddir.'/'.$form->getObject()->getFilePath())?>
        </td>
      </tr>
      <?php endif; ?>
      <tr>
        <th><?php echo $form['file_path']->renderLabel() ?></th>
        <td>
          <?php echo $form['file_path']->renderError() ?>
          <?php echo $form['file_path'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>
