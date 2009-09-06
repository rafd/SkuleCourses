<table>
  <thead>
    <tr>
      <th></th>
      <th>Full Name</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($instructor_list as $instructor): ?>
    <tr>
    
    <td>
    <a href="<?php echo url_for('admininstructor/edit?id='.$instructor->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
    <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'admininstructor/delete?id='.$instructor->getId(), array('method' => 'delete', 'confirm' => 'Delete '.$instructor->getFirstName().' '.$instructor->getLastName().'?')) ?></td>
    <td><a href="<?php echo url_for('admininstructor/edit?id='.$instructor->getId()) ?>"><?php echo $instructor->getFirstName() ?> <?php echo $instructor->getLastName() ?></a></td>
    
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>