<?php echo use_helper('Javascript') ?>
<?php echo stylesheet_tag('/sf/calendar/calendar-win2k.css') ?>
<?php echo javascript_include_tag('/sf/calendar/calendar.js') ?>
<?php echo javascript_include_tag('/sf/calendar/lang/calendar-en.js') ?>
<?php echo javascript_include_tag('/sf/calendar/calendar-setup.js') ?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>
<?php include_stylesheets_for_form($form2) ?>
<?php include_javascripts_for_form($form2) ?>
<?php include_stylesheets_for_form($form3) ?>
<?php include_javascripts_for_form($form3) ?>

<?php if ($form->getObject()->isNew()): ?>
<h2>New Course</h2>
<?php else: ?>
<h2>Edit Course <?php echo $sf_request->getParameter('id')?></h2>
<?php endif; ?>
<form action="<?php echo url_for('admincourse/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
 
<div><?php echo $form->renderGlobalErrors() ?></div>
<h3>Course Info:</h3>
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

<h3>Course Detail:</h3>
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
        <?php echo $form2['first_offered'] ?>
        
      
        <?php echo $form2['first_offered']->renderError() ?>
      
        <br />
        <?php echo $form2['last_offered']->renderLabel() ?><br />
        <?php echo $form2['last_offered'] ?>
        
      
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
          <?php if (!$form->getObject()->isNew()): ?>
         
          <a href="<?php echo url_for('admincourse/index') ?>">Cancel</a>
         
          <?php endif; ?>
          <input type="submit" value="Save" />
        </div>

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
<fieldset><legend>Course Instructor Association:</legend>
     <div id="_courseinstructassoc_">
     <?php echo link_to_remote('List', array(
          'update' => '_courseinstructassoc_',
          'url'    => $sf_request->getRelativeUrlRoot().'/adminCIA/index?course='.$sf_request->getParameter('id'),
          )) ?>
</fieldset>
<?php endif; ?>
