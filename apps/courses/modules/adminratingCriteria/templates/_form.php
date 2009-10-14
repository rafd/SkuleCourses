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
          
          <input type="submit" value="Save" class="fbuttons"/>
          <?php if (!$form->getObject()->isNew()): ?>

          <input type="button" href="<?php echo url_for('adminratingCriteria/list') ?>" onclick="window.location.href(this.href);" class="fbuttons" value="Cancel" />
          <?php endif; ?>
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
        <th><?php echo $form['scale']->renderLabel() ?></th>
        <td>
          <?php echo $form['scale']->renderError() ?>
          <?php echo $form['scale'] ?>
        </td>
      </tr>
      
    </tbody>
  </table>
</form>
