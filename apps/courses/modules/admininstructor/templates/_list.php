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
	    <?php if($sf_request->getParameter('page') ===null):?>
	    	<?php echo link_to(" ", 'admininstructor/delete?id='.$instructor->getId(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
            <?php echo link_to(" ", 'admininstructor/edit?id='.$instructor->getId(), array('class'=>'select'))?>
        <?php else:?>
        	<?php echo link_to(" ", 'admininstructor/delete?id='.$instructor->getId().'&page='.$sf_request->getParameter('page'), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
            <?php echo link_to(" ", 'admininstructor/edit?id='.$instructor->getId().'&page='.$sf_request->getParameter('page'), array('class'=>'select'))?>
        <?php endif;?>
	    </td>
	    <td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$instructor->getId()):?> style='background:#FFE87C'<?php endif;?>>
	    	<?php echo $instructor->getLastName() ?>, <?php echo $instructor->getFirstName() ?>
	    </td>
    </tr>
    <?php endforeach; ?>
    <?php include_partial('global/paging', array('pagelist' => $instructor_list, 'location' => skuleadminConst::decomposeURL($sf_context, $sf_request))) ?>
  </tbody>
</table>