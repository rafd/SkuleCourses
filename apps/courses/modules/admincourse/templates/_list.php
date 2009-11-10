<table style='width:130px'>
  <thead>
    <tr>
      <th><?php echo link_to(" ", 'admincourse/index', array("class"=>"addbtn", "title"=>"Add a new course"))?></th>
      <th>Course</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($course_list->getResults() as $course): ?>
    <tr>
      <td width="30">
      <?php if($sf_request->getParameter('page') ===null):?>
	      <?php echo link_to(" ", 'admincourse/delete?id='.$course->getId(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
	      <?php echo link_to(" ", 'admincourse/edit?id='.$course->getId(), array('class'=>'select'))?>
	  <?php else:?>
	      <?php echo link_to(" ", 'admincourse/delete?id='.$course->getId().'&page='.$sf_request->getParameter('page'), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
	      <?php echo link_to(" ", 'admincourse/edit?id='.$course->getId().'&page='.$sf_request->getParameter('page'), array('class'=>'select'))?>
      <?php endif;?>
      </td>
      <td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$course->getId()):?> style='background:#FFE87C'<?php endif;?>>
        <?php echo $course->getId() ?>
      </td>
    </tr>
    <?php endforeach; ?>
    
    <?php include_partial('global/paging', array('pagelist' => $course_list, 'location' => skuleadminConst::decomposeURL($sf_context, $sf_request))) ?>
  </tbody>
</table>