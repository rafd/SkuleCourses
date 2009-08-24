<h1>Department List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Descr</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($department_list as $department): ?>
    <tr>
      <td><a href="<?php echo url_for('department/edit?id='.$department->getId()) ?>"><?php echo $department->getId() ?></a></td>
      <td><?php echo $department->getDescr() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('department/new') ?>">New</a>