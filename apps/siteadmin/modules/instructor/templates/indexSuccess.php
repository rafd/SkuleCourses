<h1>Instructor List</h1>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Dept</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($instructor_list as $instructor): ?>
    <tr>
      <td><a href="<?php echo url_for('instructor/edit?id='.$instructor->getId()) ?>"><?php echo $instructor->getFirstName() ?> <?php echo $instructor->getLastName() ?></a></td>
      <td><?php echo $instructor->getDeptId() ?></td>
      <td><?php echo link_to('Delete', 'instructor/delete?id='.$instructor->getId(), array('method' => 'delete', 'confirm' => 'Delete '.$instructor->getFirstName().' '.$instructor->getLastName().'?')) ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('instructor/new') ?>">New</a>
