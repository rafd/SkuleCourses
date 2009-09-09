<table>
  <thead>
    <tr>
    <th></th>
      <th>Question</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($rating_field_list->getResults() as $rating_field): ?>
    <tr>
     <td>
     
     
      <a href="<?php echo url_for('adminratingCriteria/edit?id='.$rating_field->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php if($rating_field->getIsReserved() == 0): ?>
    <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'adminratingCriteria/delete?id='.$rating_field->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      <?php endif;?>
      </td>
    
      <td><?php echo $rating_field->getDescr() ?></td>
     
    </tr>
    <?php endforeach; ?>
    <?php include_partial('global/paging', array('pagelist' => $rating_field_list, 'location' => 'adminratingCriteria')) ?>
  </tbody>
</table>