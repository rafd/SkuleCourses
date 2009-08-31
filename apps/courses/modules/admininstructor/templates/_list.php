<table>
  <thead>
    <tr>
      <th>Full Name</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($instructor_list as $instructor): ?>
    <tr>
    <td><a href="<?php echo url_for('admininstructor/edit?id='.$instructor->getId()) ?>"><?php echo $instructor->getFirstName() ?> <?php echo $instructor->getLastName() ?></a></td>
    <td><?php echo link_to('Delete', 'admininstructor/delete?id='.$instructor->getId(), array('method' => 'delete', 'confirm' => 'Delete '.$instructor->getFirstName().' '.$instructor->getLastName().'?')) ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>