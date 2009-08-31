<table>
  <thead>
    <tr>
      <th>Course Code</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($course_list as $course): ?>
    <tr>
      <td><a href="<?php echo url_for('admincourse/edit?id='.$course->getId()) ?>"><?php echo $course->getId() ?></a></td>
      <td><?php echo link_to('Delete', 'admincourse/delete?id='.$course->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>