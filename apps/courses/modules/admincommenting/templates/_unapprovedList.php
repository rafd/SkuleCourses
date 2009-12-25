<table>
  <thead>
    <tr>
      <th width="30"></th>
      <th width="95">Submitter IP</th>
      <th width="65">Submit Time</th>
      <th width="50">Applies To</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($comment_list->getResults() as $comment): ?>
    <tr>
      <td>
      <?php if($sf_request->getParameter('page') ===null):?>
	      <?php echo link_to(" ", 'admincommenting/deleteUnapproved?id='.$comment->getId(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
	      <?php echo link_to(" ", 'admincommenting/editUnapproved?id='.$comment->getId(), array('class'=>'select'))?>
	  <?php else:?>
	      <?php echo link_to(" ", 'admincommenting/deleteUnapproved?id='.$comment->getId().'&page='.$sf_request->getParameter('page'), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
	      <?php echo link_to(" ", 'admincommenting/editUnapproved?id='.$comment->getId().'&page='.$sf_request->getParameter('page'), array('class'=>'select'))?>
      <?php endif;?>
      </td>
      <td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$comment->getId()):?> style='background:#FFE87C'<?php endif;?>>
        <?php echo $comment->getIp() ?>
      </td>
      <td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$comment->getId()):?> style='background:#FFE87C'<?php endif;?>>
      	<?php echo $comment->getInputDt() ?>
      </td>
      <td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$comment->getId()):?> style='background:#FFE87C'<?php endif;?>>
      	<?php echo $comment->getCourseId() ?>
      </td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

<table style="width:300px"><?php include_partial('global/paging', array('pagelist' => $comment_list, 'location' => skuleadminConst::decomposeURL($sf_context, $sf_request))) ?></table>