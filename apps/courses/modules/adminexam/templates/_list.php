<table>
  <thead>
    <tr>
      <th></th>
      <th>Name</th>
      <th>Course</th>
      <th>Year</th>
      <th>Semester</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($exam_list as $exam): ?>
    <tr>
      <td>
      <a href="<?php echo url_for('adminexam/edit?id='.$exam->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'adminexam/delete?id='.$exam->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      </td>
      
      <td><?php echo $exam->getDescr() ?></td>
      <td><a href="<?php echo url_for('admincourse/edit?id='.$exam->getCourseId()) ?>"><?php echo $exam->getCourseId() ?></a></td>
      <td><?php echo substr($exam->getYear(),0,4) ?></td>
      <td>
      <?php if(substr($exam->getYear(),-1)==1): ?>
      Spring      
      <?php elseif(substr($exam->getYear(),-1)==9): ?>
      Winter
      <?php elseif(substr($exam->getYear(),-1)==5): ?>
      Summer
      <?php endif; ?>
      
      </td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>