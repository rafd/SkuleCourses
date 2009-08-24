<?php echo use_helper('Javascript') ?>
<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>
<?php include_stylesheets_for_form($form2) ?>
<?php include_javascripts_for_form($form2) ?>
<?php include_stylesheets_for_form($form3) ?>
<?php include_javascripts_for_form($form3) ?>

<?php if ($form->getObject()->isNew()): ?>
<fieldset><legend>New Course</legend>
<?php else: ?>
<fieldset><legend>Edit Course <?php echo $sf_request->getParameter('id')?></legend>
<?php endif; ?>
<form action="<?php echo url_for('course/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<?php endif; ?>
 
<div><?php echo $form->renderGlobalErrors() ?></div>
<fieldset><legend align="center">Course Info:</legend>
<div>
      <?php if ($form->getObject()->isNew()): ?>
        <?php echo $form['id']->renderLabel() ?><br />
        <?php echo $form['id'] ?>
        <?php echo $form['id']->renderError() ?>
        <br />
      <?php endif; ?>
       <?php echo $form['dept_id']->renderLabel() ?><br />
       <?php echo $form['dept_id'] ?>
       <?php echo $form['dept_id']->renderError() ?>
       <br />
       <?php echo $form['descr']->renderLabel() ?><br />
       <?php echo $form['descr'] ?>
       <?php echo $form['descr']->renderError() ?>
       <br />
       <?php echo $form['is_eng']->renderLabel() ?><br />
       <?php echo $form['is_eng'] ?>
       <?php echo $form['is_eng']->renderError() ?>
     </div>
</fieldset>
<fieldset><legend align="center">Course Detail:</legend>
<div>
<div id="_expand1" style="display: none"><?php echo link_to_function('expand', 'more(1)') ?></div>
    <div id="_collapse1" style="display: none"><?php echo link_to_function('collapse', 'less(1)') ?></div>
     </div>
     <div><div id="_expand1_" style="display: block">
        <?php echo $form2['detail_descr']->renderLabel() ?><br />
        <?php echo $form2['detail_descr'] ?>
        <?php echo $form2['detail_descr']->renderError() ?>
        <br />
        <?php echo $form2['first_offered']->renderLabel() ?><br />
        <?php echo $form2['first_offered'] ?>
        <?php echo $form2['first_offered']->renderError() ?>
        <br />
        <?php echo $form2['last_offered']->renderLabel() ?><br />
        <?php echo $form2['last_offered'] ?>
        <?php echo $form2['last_offered']->renderError() ?>
        </div></div>
 </fieldset> 
  
  <fieldset><legend align="center">Course Discipline Association:</legend>     
     <div>
<div id="_expand2" style="display: none"><?php echo link_to_function('expand', 'more(2)') ?></div>
    <div id="_collapse2" style="display: none"><?php echo link_to_function('collapse', 'less(2)') ?></div>
    </div>
    
    <div id="_expand2_" style="display: block">
       <?php echo $form3['discipline_id']->renderLabel() ?><br />
       <?php echo $form3['discipline_id'] ?>
       <?php echo $form3['discipline_id']->renderError() ?>
       <br />
       <?php echo $form3['year_of_study']->renderLabel() ?><br />
       <?php echo $form3['year_of_study'] ?>
       <?php echo $form3['year_of_study']->renderError() ?>

     </div>
     </fieldset>
     
      <div>
          <?php echo $form->renderHiddenFields() ?>
          <?php echo $form2->renderHiddenFields() ?>
          <?php echo $form3->renderHiddenFields() ?>
          &nbsp;
          <?php echo link_to_remote('Cancel', array(
          'update' => '_feedback_',
          'url'    => 'course/cancel',
          )) ?>
          <noscript>
          <a href="<?php echo url_for('course/index') ?>">Cancel</a>
          </noscript>
          <input type="submit" value="Save" />
        </div>

</form>
</fieldset>
<?php if (!$form->getObject()->isNew()): ?>
<fieldset><legend>Course Instructor Association:</legend>
     <div id="_courseinstructassoc_">
     <?php echo link_to_remote('List', array(
          'update' => '_courseinstructassoc_',
          'url'    => $sf_request->getRelativeUrlRoot().'/courseinstrucassoc/list?course='.$sf_request->getParameter('id'),
          )) ?>
</fieldset>
<?php endif; ?>