<?php echo use_helper('Javascript') ?>

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
        <th>Type:</th>
        <td>
          <?php echo $form['type_scale']->renderError() ?>
          <?php echo $form['type_scale'] ?>
        </td>
      </tr>
      
      <?php if($form->getObject()->getTypeId()>30 && $form->getObject()->getTypeId()<40): ?>
      <tr id="scale_data" style="visibility: visible;">
      <?php else: ?>
      <tr id="scale_data" style="visibility: hidden;">
      <?php endif; ?>
        <th><?php echo $form['scale']->renderLabel() ?></th>
        <td>
          <?php echo $form['scale']->renderError() ?>
          <?php echo $form['scale'] ?>
        </td>
      </tr>
    </tbody>
  </table>
</form>
<?php echo javascript_tag("
  function changeType(self)
  {
    var scale_data = document.getElementById('scale_data');
    if(self.options[self.selectedIndex].value == '".$scale_PID."'){
       scale_data.style.visibility = 'visible';
    }else{
       scale_data.style.visibility = 'hidden';
    }
  }
") ?>