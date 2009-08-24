<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<?php include_stylesheets_for_form($formDetail) ?>
<?php include_javascripts_for_form($formDetail) ?>

<form action="<?php echo url_for('instructor/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields() ?>
          <?php echo $formDetail->renderHiddenFields() ?>
          &nbsp;<a href="<?php echo url_for('instructor/index') ?>">Cancel</a>
          <?php if (!$form->getObject()->isNew()): ?>
            &nbsp;<?php echo link_to('Delete', 'instructor/delete?id='.$form->getObject()->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
          <?php endif; ?>
          <input type="submit" value="Save" />
        </td>
      </tr>
    </tfoot>
    <tbody>
      <tr><td colspan="2">
      <?php echo $form->renderGlobalErrors() ?>
      </td></tr>
      <tr><td colspan="2">
        <?php echo $form['last_name']->renderLabel() ?><br />
        
          <?php echo $form['last_name']->renderError() ?>
          <?php echo $form['last_name'] ?>
        <br />
      
      
        <?php echo $form['first_name']->renderLabel() ?><br />
        
          <?php echo $form['first_name']->renderError() ?>
          <?php echo $form['first_name'] ?>
        <br />
      
        <?php echo $form['dept_id']->renderLabel() ?><br />
        
          <?php echo $form['dept_id']->renderError() ?>
          <?php echo $form['dept_id'] ?>
        <br />
      </td></tr>
      <tr><td colspan="2">
      Instructor Detail:
      </td></tr>  
      <tr><td colspan="2">
        <?php echo $formDetail['descr']->renderLabel() ?><br />
        
          <?php echo $formDetail['descr']->renderError() ?>
          <?php echo $formDetail['descr'] ?>
          
      </td></tr>
    </tbody>
  </table>
</form>
