<table>
	<thead>
		<tr>
			<th><?php echo link_to(" ", 'adminratingCriteria/list', array("class"=>"addbtn", "title"=>"Add a new rating criterion"))?></th>
    		<th style="width:260px">Question</th>
    	</tr>
	</thead>
	<tbody>
	  <?php foreach ($rating_field_list->getResults() as $rating_field): ?>
		<tr>
			<td>
				<?php if($sf_request->getParameter('page') ===null): ?>
				  <?php if (!$rating_field->getIsReserved()):?>
		      	  <?php echo link_to(" ", 'adminratingCriteria/delete?id='.$rating_field->getId(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
		      	  <?php endif;?>
		          <?php echo link_to(" ", 'adminratingCriteria/edit?id='.$rating_field->getId(), array('class'=>'select', 'style'=>'float:left'))?>
		        <?php else: ?>
		          <?php if (!$rating_field->getIsReserved()):?>
		      	  <?php echo link_to(" ", 'adminratingCriteria/delete?id='.$rating_field->getId().'&page='.$sf_request->getParameter('page'), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
		      	  <?php endif;?>
		          <?php echo link_to(" ", 'adminratingCriteria/edit?id='.$rating_field->getId().'&page='.$sf_request->getParameter('page'), array('class'=>'select', 'style'=>'float:left'))?>
		        <?php endif; ?>
			</td>
    
			<td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$rating_field->getId()):?> style='background:#FFE87C'<?php endif;?>><?php echo $rating_field->getDescr() ?></td>
		</tr>
	    <?php endforeach; ?>
	    <?php include_partial('global/paging', array('pagelist' => $rating_field_list, 'location' => 'adminratingCriteria')) ?>
		<tr><td colspan="2" style="text-align: center"> <a href="<?php echo url_for('adminratingCriteria/list') ?>">New Rating Criteria</a> </td></tr>
	</tbody>
</table>