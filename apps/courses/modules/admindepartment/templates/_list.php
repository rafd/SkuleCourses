<fieldset>
<table>
 <tr class="t_header">
   <th>Abbreviations</th>
   
   
 </tr>
 
    
    
    <?php foreach ($department_list->getResults() as $department): ?>
    <tr class="t_body">  
      <td><a href="<?php echo url_for('admindepartment/edit?id='.$department->getId()) ?>"><?php echo $department->getId() ?></a>

      <?php echo link_to('Delete', 'admindepartment/delete?id='.$department->getId(), array('method' => 'delete', 'confirm' => 'Are you sure?')) ?></td>
    </tr>
    <?php endforeach; ?>
    <tr><td>
    <?php echo $department_list->getNbResults() ?> results found.<br />
    Displaying results <?php echo $department_list->getFirstIndice() ?> to  <?php echo $department_list->getLastIndice() ?>.
    </td></tr>
    <tr><td>
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
</table>
</fieldset>