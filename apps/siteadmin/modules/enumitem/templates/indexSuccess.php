<h1>Enumitem List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Parent</th>
      <th>Descr</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($enum_item_list as $enum_item): ?>
    <tr>
    <?php if($enum_item->getId()!=1):?>
      <td><a href="<?php echo url_for('enumitem/edit?id='.$enum_item->getId()) ?>"><?php echo $enum_item->getId() ?></a></td>
      <td><?php echo $enum_item->getParentId() ?></td>
      <td><?php echo $enum_item->getDescr() ?></td>
    </tr>
    <?php endif;?>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('enumitem/new') ?>">New</a>
