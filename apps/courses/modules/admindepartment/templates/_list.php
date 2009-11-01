
<table style='width:130px'>
<thead>
    <tr>
      <th><?php echo link_to(" ", 'admindepartment/index', array("class"=>"addbtn", "title"=>"Add a new department"))?></th>
      <th>Code</th>
    </tr>
  </thead>
 <tbody>
    
    <?php foreach ($department_list->getResults() as $department): ?>
    <tr>
      <td width="30">
      <?php if($sf_request->getParameter('page') ===null): ?>
      	<?php echo link_to(" ", 'admindepartment/delete?id='.$department->getId(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
        <?php echo link_to(" ", 'admindepartment/edit?id='.$department->getId(), array('class'=>'select'))?>
      <?php else: ?>
      	<?php echo link_to(" ", 'admindepartment/delete?id='.$department->getId().'&page='.$sf_request->getParameter('page'), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
        <?php echo link_to(" ", 'admindepartment/edit?id='.$department->getId().'&page='.$sf_request->getParameter('page'), array('class'=>'select'))?>
      <?php endif; ?>
      </td>
      <td width="70"><?php echo $department->getId() ?></td>
    </tr>
    <?php endforeach; ?>
    
    <?php include_partial('global/paging', array('pagelist' => $department_list, 'location' => 'admindepartment')) ?>
    
    </tbody>
</table>
