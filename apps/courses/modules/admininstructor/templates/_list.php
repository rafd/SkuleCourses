<table style='width:230px'>
  <thead>
    <tr>
      <th><?php echo link_to(" ", 'admininstructor/index', array("class"=>"addbtn", "title"=>"Add a new instructor"))?></th>
      <th>Instructor</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($instructor_list->getResults() as $instructor): ?>
    <tr>
	    <td width="30">
	    <?php //FIXME selecting an instructor will cause paging to reorder?>
	    	<?php echo link_to(" ", 'admininstructor/delete?id='.$instructor->getId(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
            <?php echo link_to(" ", 'admininstructor/edit?id='.$instructor->getId(), array('class'=>'select'))?>
	    </td>
	    <td>
	    	<?php echo $instructor->getLastName() ?>, <?php echo $instructor->getFirstName() ?>
	    </td>
    </tr>
    <?php endforeach; ?>
    <?php include_partial('global/paging', array('pagelist' => $instructor_list, 'location' => 'admininstructor')) ?>
  </tbody>
</table>