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
      <td style='width:30px'>
      <?php echo link_to(" ", 'admincourse/delete?id='.$course->getId(), array('method' => 'delete', 'class'=>'deletebtn', 'confirm' => 'Are you sure?')) ?>
      <?php echo link_to(" ", 'admincourse/edit?id='.$course->getId(), array('class'=>'select'))?>
      
      </td>
      <td><?php echo $course->getId() ?></td>
    </tr>
    <?php endforeach; ?>
    
    <?php include_partial('global/paging', array('pagelist' => $course_list, 'location' => 'admincourse')) ?>
  </tbody>
</table>