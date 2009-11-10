<table style='width:230px'>
  <thead>
    <tr>
    	<th><?php echo link_to(" ", 'admindiscipline/index', array("class"=>"addbtn", "title"=>"Add a new discipline"))?></th>
      	<th>Engineering Discipline</th>
    </tr>
  </thead>
  <tbody>

  <?php foreach ($enum_item_list->getResults() as $enum_item): ?>
    <tr>
      <td width='30'>
      <?php if($sf_request->getParameter('page') ===null): ?>
      	<?php echo link_to(" ", 'admindiscipline/delete?id='.$enum_item->getId(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?'))?>
        <?php echo link_to(" ", 'admindiscipline/edit?id='.$enum_item->getId(), array('class'=>'select'))?>
      <?php else: ?>
      	<?php echo link_to(" ", 'admindiscipline/delete?id='.$enum_item->getId().'&page='.$sf_request->getParameter('page'), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?'))?>
      	<?php echo link_to(" ", 'admindiscipline/edit?id='.$enum_item->getId().'&page='.$sf_request->getParameter('page'), array('class'=>'select'))?>
      <?php endif; ?>
      </td>
      <td style='overflow:hidden<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$enum_item->getId()):?>;background:#FFE87C<?php endif;?>'>
        <?php echo $enum_item->getDescr() ?>
      </td>
    </tr>
    <?php endforeach; ?>
    
   
    <?php include_partial('global/paging', array('pagelist' => $enum_item_list, 'location' => skuleadminConst::decomposeURL($sf_context, $sf_request))) ?>
  </tbody>
</table>