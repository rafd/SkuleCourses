<table>
  <thead>
    <tr>
    <th></th>
      <th>Discipline Description</th>
      
    </tr>
  </thead>
  <tbody>
  
  
  <?php foreach ($enum_item_list->getResults() as $enum_item): ?>
    <tr>
      <td>
      <?php if($sf_request->getParameter('page') ===null): ?>
      <a href="<?php echo url_for('admindiscipline/edit?id='.$enum_item->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php else: ?>
      <a href="<?php echo url_for('admindiscipline/edit?id='.$enum_item->getId().'&page='.$sf_request->getParameter('page')) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php endif; ?>

      <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'admindiscipline/delete?id='.$enum_item->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      </td>
      <td>
      
      <?php echo $enum_item->getDescr() ?></td>

      
    </tr>
    <?php endforeach; ?>
    
   
    <?php include_partial('global/paging', array('pagelist' => $enum_item_list, 'location' => 'admindiscipline')) ?>
    <tr><td colspan="2" style="text-align: center"> <a href="<?php echo url_for('admindiscipline/index') ?>">New Discipline</a> </td></tr>
  </tbody>
</table>