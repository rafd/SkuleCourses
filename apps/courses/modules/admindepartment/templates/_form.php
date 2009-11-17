<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('admindepartment/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<fieldset style='width:550px'>

<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<legend>Edit Department</legend>
<?php else: ?>
<legend>New Department</legend>
<?php endif; ?>

  <table> 
     <tfoot>
     <tr><td colspan="2"><?php echo $form->renderHiddenFields() ?></td></tr>
     <tr class="t_foot">
        <td></td>
        
        <td> 
          <input type="submit" value="Save" class="fbuttons"/>
          <?php if (!$form->getObject()->isNew()): ?>
          <input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" class="fbuttons" value="Cancel" />
          <?php endif; ?>
        </td>
      </tr>
     
     </tfoot>
     <tbody>
       <?php if (isset($globalErrors)): ?>
       <span class="error"><p><?php echo $globalErrors ?></p></span>
       <?php endif;?>
      <?php if ($form->getObject()->isNew()): ?>
      <tr>
		<th>Abbreviations</th>
        <td><?php echo $form['id'] ?></td>
      </tr>
      <tr>
      	<td></td>
      	<td class="error"><?php echo $form['id']->renderError() ?></td>
      </tr>
      <?php else: ?>
      <tr>
        <th>Abbreviations</th>
        <td><?php echo $form->getObject()->getId() ?></td>
      </tr>
      <?php endif; ?>
      <tr>
        <th>Title</th>
        <td>
          <?php echo $form['descr'] ?>
        </td>
      </tr>
      <tr>
      	<td></td><td class="error"><?php echo $form['descr']->renderError() ?></td>
      </tr>
      </tbody>
      
  </table>
</fieldset>
</form>
