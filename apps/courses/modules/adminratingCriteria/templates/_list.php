<table>
  <thead>
    <tr>
    <th></th>
      <th>Question</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($rating_field_list as $rating_field): ?>
    <tr>
     <td>
      <a href="<?php echo url_for('adminratingCriteria/edit?id='.$rating_field->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
    <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'adminratingCriteria/edit?id='.$rating_field->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      
      </td>
    
      <td><?php echo $rating_field->getDescr() ?></td>
     
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>