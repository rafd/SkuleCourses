<table>
  <thead>
    <tr>
      <th></th>
      <th>Course Code</th>
      
    </tr>
  </thead>
  <tbody>
    <?php foreach ($course_list as $course): ?>
    <tr>
      <td>
      <a href="<?php echo url_for('admincourse/edit?id='.$course->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'admincourse/delete?id='.$course->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      </td>
      <td><a href="<?php echo url_for('admincourse/edit?id='.$course->getId()) ?>"><?php echo $course->getId() ?></a></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>