<fieldset>
<table>
 <tr class="t_header">
   <th>Abbreviations</th>
   
   <td></td>
 </tr>
 
  
    <?php foreach ($department_list as $department): ?>
    <tr class="t_body">  
      <td><a href="<?php echo url_for('admindepartment/edit?id='.$department->getId()) ?>"><?php echo $department->getId() ?></a></td>

      <td><?php echo link_to('Delete', 'admindepartment/delete?id='.$department->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?></td>
    </tr>
    <?php endforeach; ?>
  
</table>
</fieldset>