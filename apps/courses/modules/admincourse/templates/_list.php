<table>
  <thead>
    <tr>
      <th></th>
      <th>Course Code</th>
      
    </tr>
  </thead>
  <tbody>
    <?php foreach ($course_list->getResults() as $course): ?>
    <tr>
      <td>
      <a href="<?php echo url_for('admincourse/edit?id='.$course->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'admincourse/delete?id='.$course->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      </td>
      <td><?php echo $course->getId() ?></td>
    </tr>
    <?php endforeach; ?>
    
    <?php include_partial('global/paging', array('pagelist' => $course_list, 'location' => 'admincourse')) ?>
    <tr><td colspan="2" style="text-align: center"> <a href="<?php echo url_for('admincourse/index') ?>">New Course</a> </td></tr>
  </tbody>
</table>