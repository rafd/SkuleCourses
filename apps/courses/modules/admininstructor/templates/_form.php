<?php echo use_helper('Javascript') ?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<?php include_stylesheets_for_form($formDetail) ?>
<?php include_javascripts_for_form($formDetail) ?>

<form action="<?php echo url_for('admininstructor/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
  <table>
    <tfoot>
      <tr>
        <td colspan="2">
          <?php echo $form->renderHiddenFields() ?>
          <?php echo $formDetail->renderHiddenFields() ?>
          
          <?php if (!$form->getObject()->isNew()): ?>
          
            &nbsp;<a href="<?php echo url_for('admininstructor/index') ?>">Cancel</a>
          
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
      
<table>
<tr><td>
        <?php echo $form['last_name']->renderLabel() ?>
</td><td>
  <div style="float: left"> <?php echo $form['last_name'] ?>  </div>

      
          <div style="float: left"><?php echo $form['last_name']->renderError() ?></div>
        </td></tr>
      <tr><td>
      
        <?php echo $form['first_name']->renderLabel() ?>
      </td><td>
       <div style="float: left">   <?php echo $form['first_name'] ?></div>

       <div style="float: left">   <?php echo $form['first_name']->renderError() ?></div>
      </td></tr>
     
    <tr><td>
        <?php echo $form['dept_id']->renderLabel() ?>
      </td><td>
      <div style="float: left"><?php echo $form['dept_id'] ?></div>
   
      <div style="float: left"><?php echo $form['dept_id']->renderError() ?></div>
</td></tr>
</table>

      </td></tr>
      <tr><td colspan="2">
      
     
       <div style="float:left">Instructor Detail:&nbsp;&nbsp;&nbsp;&nbsp; </div>
     
     
      <div style="float:left" id="_expand1" style="display: none;"><?php echo link_to_function(image_tag('expand.gif',array('alt' => 'Alternative text', 'size' => '16x16')), 'more(1)') ?></div>
    <div style="float:left" id="_collapse1" style="display: none;"><?php echo link_to_function(image_tag('collapse.gif',array('alt' => 'Alternative text', 'size' => '16x16')), 'less(1)') ?></div>
    
    <div id="_expand1_" style="display: block; clear: left">
    <table>
    <tr><td>
        <?php echo $formDetail['descr']->renderLabel() ?>
        </td>
          <td>
          <div style="float: left"><?php echo $formDetail['descr'] ?></div>
          <?php if(isset($omiterror) && $omiterror==true): ?>
          <div style="float: left; display:none">
          <?php else: ?>
          <div style="float: left">
          <?php endif; ?>
          <?php echo $formDetail['descr']->renderError() ?></div>
          </td>
          </table>
          </div>
          
      </td></tr>
    </tbody>
  </table>
</form>
<?php if (!$form->getObject()->isNew()): ?>
<?php echo javascript_tag("
    document.getElementById('_expand1').style.display = 'block';
    document.getElementById('_expand1_').style.display = 'none';
    ") ?>

<?php echo javascript_tag("
  function more(num)
  {
    var n1='_expand'+num;
    document.getElementById(n1).style.display = 'none';
    var n2='_expand'+num+'_';
    document.getElementById(n2).style.display = 'block';
    var n3='_collapse'+num;
    document.getElementById(n3).style.display = 'block';
    
  }
  function less(num)
  {
    var n1='_expand'+num;
    document.getElementById(n1).style.display = 'block';
    var n2='_expand'+num+'_';
    document.getElementById(n2).style.display = 'none';
    var n3='_collapse'+num;
    document.getElementById(n3).style.display = 'none';
    
  }
") ?>

<fieldset><legend>Course Instructor Association:</legend>
     <div id="_courseinstructassoc_">
     <?php echo link_to_remote('List', array(
          'update' => '_courseinstructassoc_',
          'url'    => $sf_request->getRelativeUrlRoot().'/adminCIA/index?instructor='.$form->getObject()->getId(),
          )) ?>
</fieldset>
<?php endif; ?>