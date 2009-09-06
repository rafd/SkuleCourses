
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
      <a href="<?php echo url_for('admindepartment/edit?id='.$department->getId()) ?>"><?php echo image_tag('edit.gif', array('size' => '15x15')) ?></a>
      <?php echo link_to(image_tag('delete.gif', array('size' => '15x15')), 'admindepartment/delete?id='.$department->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?>  
      </td>
      <td>
      
      <?php echo $department->getId() ?></td>

      
    </tr>
    <?php endforeach; ?>
    <tr><td style="text-align: center" colspan="2">
    <?php echo $department_list->getNbResults() ?> results found.<br />
    Displaying results <?php echo $department_list->getFirstIndice() ?> to  <?php echo $department_list->getLastIndice() ?>.
    </td></tr>
   
    <tr><td colspan="2"style="text-align: center">
    <?php if ($department_list->haveToPaginate()): ?>
  <?php echo link_to('&laquo;', 'admindepartment/index?page='.$department_list->getFirstPage()) ?>
  <?php echo link_to('&lt;', 'admindepartment/index?page='.$department_list->getPreviousPage()) ?>
  <?php $links = $department_list->getLinks(); foreach ($links as $page): ?>
    <?php echo ($page == $department_list->getPage()) ? $page : link_to($page, 'admindepartment/index?page='.$page) ?>
    <?php if ($page != $department_list->getCurrentMaxLink()): ?> - <?php endif ?>
  <?php endforeach ?>
  <?php echo link_to('&gt;', 'admindepartment/index?page='.$department_list->getNextPage()) ?>
  <?php echo link_to('&raquo;', 'admindepartment/index?page='.$department_list->getLastPage()) ?>
<?php endif ?>
    </td>
    </tr>
    </tbody>
</table>
