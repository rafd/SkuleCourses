<table>
  <thead>
    <tr>
    <th></th>
      <th>Discipline Description</th>
      
    </tr>
  </thead>
  <tbody>
    <?php foreach ($enum_item_list as $enum_item): ?>
    <tr>
    
      <td>
      <a href="<?php echo url_for('admindiscipline/edit?id='.$enum_item->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
    <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'admindiscipline/delete?id='.$enum_item->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      
      </td>
      <td><?php echo $enum_item->getDescr() ?></td>
      
      
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>