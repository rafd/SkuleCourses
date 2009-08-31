<table>
  <thead>
    <tr>
      <th>Discipline Description</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($enum_item_list as $enum_item): ?>
    <tr>
      <td><a href="<?php echo url_for('admindiscipline/edit?id='.$enum_item->getId()) ?>"><?php echo $enum_item->getDescr() ?></a></td>
      <td><?php echo link_to('Delete', 'admindiscipline/delete?id='.$enum_item->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>