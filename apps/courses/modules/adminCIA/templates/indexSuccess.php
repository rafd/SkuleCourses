<?php include_partial('global/siteadminmenu') ?>
<h1>Course Instructor Association List</h1>

<table>
<tr>
<td>
<!-- table listing starts -->

      <?php if(!isset($instruct_id)): ?>
      <?php $instruct_id=null ?>
      <?php endif; ?>
      <?php if(!isset($course_id)): ?>
      <?php $course_id=null ?>
      <?php endif; ?>
      <?php include_partial('list', array('course_instructor_association_list' => $course_instructor_association_list, '$course_id' => $course_id, 'instruct_id' => $instruct_id)) ?>
<!-- table listing ends -->
</td>
<td><?php include_partial('form', array('form' => $form)) ?></td>
</tr>
</table>
   <?php if(isset($course_id)): ?>
 <a href="<?php echo url_for('adminCIA/index?course='.$course_id) ?>">New Instructor</a>
 <?php endif; ?>
  <?php if(isset($instruct_id)): ?>
 <a href="<?php echo url_for('adminCIA/index?instructor='.$instruct_id) ?>">New Course</a>
 <?php endif; ?>
 <?php if(!isset($instruct_id) && !isset($course_id)): ?>
 <a href="<?php echo url_for('adminCIA/index') ?>">New Course</a>
 <?php endif; ?>