<table>
  <thead>
    <tr>
      <th>File</th>
      <th>Course</th>
      <th>Year</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($exam_list as $exam): ?>
    <tr>
      <td><a href="<?php echo url_for('adminexam/edit?id='.$exam->getId()) ?>"><?php echo $exam->getDescr() ?></a></td>
      <td><a href="<?php echo url_for('admincourse/edit?id='.$exam->getCourseId()) ?>"><?php echo $exam->getCourseId() ?></a></td>
      <td><?php echo substr($exam->getYear(),0,4) ?></td>
      <td><?php echo link_to('Delete', 'adminexam/delete?id='.$exam->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>