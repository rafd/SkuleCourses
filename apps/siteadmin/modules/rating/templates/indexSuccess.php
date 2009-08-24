<h1>Rating List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Descr</th>
      <th>Type</th>
      <th>Is reserved</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($rating_field_list as $rating_field): ?>
    <tr>
      <td><a href="<?php echo url_for('rating/edit?id='.$rating_field->getId()) ?>"><?php echo $rating_field->getId() ?></a></td>
      <td><?php echo $rating_field->getDescr() ?></td>
      <td><?php echo $rating_field->getTypeId() ?></td>
      <td><?php echo $rating_field->getIsReserved() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('rating/new') ?>">New</a>
