<table>
  <thead>
    <tr>
      <th></th>
      <?php if(!isset($instruct_id)): ?>
      <th>Instructor</th>
      <?php endif; ?>
      <?php if(!isset($course_id)): ?>
      <th>Course</th>
      <?php endif; ?>
      <th>Year</th>
      <th>Semester</th>
      
    </tr>
  </thead>
  <tbody>
    <?php foreach ($course_instructor_association_list->getResults() as $course_instructor_association): ?>
    <tr>
      <td><a href="<?php echo url_for('adminCIA/edit?id='.$course_instructor_association->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'adminCIA/delete?id='.$course_instructor_association->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      </td>
       <?php if(!isset($instruct_id)): ?>
      <td>
            <a href="<?php echo url_for('admininstructor/edit?id='.$course_instructor_association->getInstructorId()) ?>"><?php echo $course_instructor_association->getInstructorId() ?></a>
      </td>
      <?php endif; ?>
      <?php if(!isset($course_id)): ?>
      <td>
      <a href="<?php echo url_for('admincourse/edit?id='.$course_instructor_association->getCourseId()) ?>"><?php echo $course_instructor_association->getCourseId() ?></a>
      </td>
      <?php endif; ?>
      <td><?php echo substr($course_instructor_association->getYear(),0,4) ?></td>
      <td>
      <?php if(substr($course_instructor_association->getYear(),-1)==1): ?>
      Spring      
      <?php elseif(substr($course_instructor_association->getYear(),-1)==9): ?>
      Winter
      <?php elseif(substr($course_instructor_association->getYear(),-1)==5): ?>
      Summer
      <?php endif; ?>
      </td>
      
    </tr>
    <?php endforeach; ?>
    
    <?php include_partial('global/paging', array('pagelist' => $course_instructor_association_list, 'location' => 'adminCIA')) ?>
  </tbody>
</table>
