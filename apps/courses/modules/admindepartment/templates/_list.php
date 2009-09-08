
<table>
<thead>
    <tr>
      <th></th>
      <th>Abbreviations</th>
      
    </tr>
  </thead>
 <tbody>
 
    
    
    <?php foreach ($department_list->getResults() as $department): ?>
    <tr>
      <td>
      <?php if($sf_request->getParameter('page') ===null): ?>
      <a href="<?php echo url_for('admindepartment/edit?id='.$department->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'admindepartment/delete?id='.$department->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>
      <?php else: ?>
      <a href="<?php echo url_for('admindepartment/edit?id='.$department->getId().'&page='.$sf_request->getParameter('page')) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'admindepartment/delete?id='.$department->getId().'&page='.$sf_request->getParameter('page'), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>  
      <?php endif; ?>
      </td>
      <td>
      
      <?php echo $department->getId() ?></td>

      
    </tr>
    <?php endforeach; ?>
    
    <?php include_partial('global/paging', array('pagelist' => $department_list, 'location' => 'admindepartment')) ?>
   
    </tbody>
</table>
