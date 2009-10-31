<?php echo use_helper('Javascript') ?>
<?php echo javascript_tag("
    var uri = 'http://".$sf_request->getHost()."/';
    ") //this varibale is needed in the datetimepicker_css.js change line 259 inside and the places that uses it (262 to 275)?>
<script type="text/javascript" src="http://<?php echo $sf_request->getHost() ?>/js/datetimepicker_css.js"></script>


<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>
<?php include_stylesheets_for_form($form2) ?>
<?php include_javascripts_for_form($form2) ?>
<?php include_stylesheets_for_form($form3) ?>
<?php include_javascripts_for_form($form3) ?>

<form action="<?php echo url_for('admincourse/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<?php if ($form->getObject()->isNew()): ?>
<fieldset style='width:550px'><legend>New Course</legend>
<?php else: ?>
<fieldset style='width:550px'><legend>Edit <?php echo $sf_request->getParameter('id')?></legend>
<?php endif; ?>

<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
 
<div><?php echo $form->renderGlobalErrors() ?></div>
<b>Course Info:</b>
<div>
       <?php if ($form->getObject()->isNew()): ?>
       <table style="width: 1px">
     
    <tr>
      <th><?php echo $form['dept_id']->renderLabel() ?></th>
           <th><div style="float: left"><?php echo $form['code']->renderLabel() ?></div> <i style="valign: middle;float: left">&nbsp;&nbsp;Example: 101</i> </th>
           <th> <?php echo $form['credit']->renderLabel() ?></th>
    </tr>
       <tr>
       <td valign="top">
       <?php echo $form['dept_id'] ?>
       <?php echo $form['dept_id']->renderError() ?>
       
       </td>
       <td valign="top">
       
       <?php echo $form['code'] ?>
       <?php echo $form['code']->renderError() ?>
       
       </td>
       <td valign="top">
       <?php echo $form['credit'] ?>
        <?php echo $form['credit']->renderError() ?>
       </td>
       </tr>
       </table>
      
       <?php else: ?>
       
       <div>Course Code: <?php echo $form->getObject()->getId() ?></div>
       <div>Department: <?php echo $form->getObject()->getDepartment() ?></div>
       <br />
     
       <?php endif; ?>
       
       <?php echo $form['descr']->renderLabel() ?><br />
       <?php echo $form['descr'] ?>
       <?php echo $form['descr']->renderError() ?>
    
       <?php echo $form['is_eng']->renderLabel() ?><br />
       <?php echo $form['is_eng'] ?>
       <?php echo $form['is_eng']->renderError() ?>
     </div>

<b>Course Detail:</b>
<div>
<div id="_expand1" style="display: none"><?php echo link_to_function(image_tag('expand.gif',array('alt' => 'Alternative text', 'size' => '16x16')), 'more(1)') ?></div>
    <div id="_collapse1" style="display: none"><?php echo link_to_function(image_tag('collapse.gif',array('alt' => 'Alternative text', 'size' => '16x16')), 'less(1)') ?></div>
     </div>
     <div><div id="_expand1_" style="display: block">
        <?php echo $form2['detail_descr']->renderLabel() ?><br />
        <?php echo $form2['detail_descr'] ?>
        <?php if(isset($omitdetail)): ?>
        <div style="display: none">
        <?php else: ?>
        <div style="">
        <?php endif; ?>
        <?php echo $form2['detail_descr']->renderError() ?>
        </div>
        <br />
        <?php echo $form2['first_offered']->renderLabel() ?><br />
        <?php //echo $form2['first_offered']->renderRow(array('class' => 'date-pick')) ?>
        Format (date:dd-MM-yyyy):
        <?php echo $form2['first_offered'] ?>
        <a href="javascript:NewCssCal('<?php echo $form2['first_offered']->renderId() ?>','ddmmyyyy')"><img src="http://<?php echo $sf_request->getHost() ?>/images/cal.gif" width="16" height="16" alt="Pick a date"></a>
        
        <?php //echo $sf_request->getHost() ?><?php //echo url_for('@homepage', true) ?>
      
        <?php echo $form2['first_offered']->renderError() ?>
     
        <br />
        <?php echo $form2['last_offered']->renderLabel() ?><br />
        Format (date:dd-MM-yyyy):
        <?php echo $form2['last_offered'] ?>
        <a href="javascript:NewCssCal('<?php echo $form2['last_offered']->renderId() ?>','ddmmyyyy')"><img src="http://<?php echo $sf_request->getHost() ?>/images/cal.gif" width="16" height="16" alt="Pick a date"></a>
      
        <?php echo $form2['last_offered']->renderError() ?>
      
        </div></div>
 
  
 <h3>Course Discipline Association:</h3>     
     <div>
<div id="_expand2" style="display: none"><?php echo link_to_function(image_tag('expand.gif',array('alt' => 'Alternative text', 'size' => '16x16')), 'more(2)') ?></div>
    <div id="_collapse2" style="display: none"><?php echo link_to_function(image_tag('collapse.gif',array('alt' => 'Alternative text', 'size' => '16x16')), 'less(2)') ?></div>
    </div>
    
    <div id="_expand2_" style="display: block">
       <?php echo $form3['discipline_id']->renderLabel() ?><br />
       <?php echo $form3['discipline_id'] ?>
       
       <?php if(isset($omitdisassoc)): ?>
       <div style="display: none">
       <?php else: ?>
       <div style="">
       <?php endif; ?>
       <?php echo $form3['discipline_id']->renderError() ?>
       </div>
       
       <br />
       <?php echo $form3['year_of_study']->renderLabel() ?><br />
       <?php echo $form3['year_of_study'] ?>
       
       <?php if(isset($omitdisassoc)): ?>
       <div style="display: none">
       <?php else: ?>
       <div style="">
       <?php endif; ?>
       <?php echo $form3['year_of_study']->renderError() ?>
       </div>
     </div>
 
     
      <div>
          <?php echo $form->renderHiddenFields() ?>
          <?php echo $form2->renderHiddenFields() ?>
          <?php echo $form3->renderHiddenFields() ?>
          &nbsp;
          <input type="submit" value="Save" class="fbuttons"/>
          <?php if (!$form->getObject()->isNew()): ?>
          <input type="button" href="<?php echo url_for('admincourse/index') ?>" onclick="window.location.href(this.href);" class="fbuttons" value="Cancel" />
         
          <?php endif; ?>
          
        </div>

</fieldset>
</form>

<?php if (!$form->getObject()->isNew()): ?>
<?php echo javascript_tag("
    document.getElementById('_expand1').style.display = 'block';
    document.getElementById('_expand1_').style.display = 'none';
    ") ?>
<?php echo javascript_tag("
    document.getElementById('_expand2').style.display = 'block';
    document.getElementById('_expand2_').style.display = 'none';
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
<?php endif; ?>
