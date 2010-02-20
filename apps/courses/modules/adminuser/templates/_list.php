<table style='width:130px'>
  <thead>
    <tr>
      <th><?php echo link_to(" ", 'adminuser/index', array("class"=>"addbtn", "title"=>"Add a new user"))?></th>
      <th>Username</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($user_list->getResults() as $user): ?>
    <tr>
      <td width="30">
      <?php if($sf_request->getParameter('page') ===null):?>
      	<?php if ($user->getUserName() != UserPeer::ADMIN):?>
	      <?php echo link_to(" ", 'adminuser/delete?id='.$user->getUserName(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
	    <?php else:?>
	    <?php endif;?>
	      <?php echo link_to(" ", 'adminuser/edit?id='.$user->getUserName(), array('class'=>'select', 'style'=>'float:left'))?>
	  <?php else:?>
	  	<?php if ($user->getUserName() != UserPeer::ADMIN):?>
	      <?php echo link_to(" ", 'adminuser/delete?id='.$user->getUserName().'&page='.$sf_request->getParameter('page'), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
	    <?php endif;?>
	      <?php echo link_to(" ", 'adminuser/edit?id='.$user->getUserName().'&page='.$sf_request->getParameter('page'), array('class'=>'select', 'style'=>'float:left'))?>
      <?php endif;?>
      </td>
      <td<?php if ($sf_request->hasParameter('id') && $sf_request->getParameter('id')==$user->getUserName()):?> style='background:#FFE87C'<?php endif;?>>
          <?php echo $user->getUsername() ?>
      </td>
    </tr>
    <?php endforeach; ?>
    
    <?php include_partial('global/paging', array('pagelist' => $user_list, 'location' => skuleadminConst::decomposeURL($sf_context, $sf_request))) ?>
  </tbody>
</table>