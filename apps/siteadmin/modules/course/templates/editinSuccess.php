<?php echo use_helper('Javascript') ?>
<div><h1>Course List</h1><noscript><a href="<?php echo url_for('course/new') ?>">New</a></noscript>
<?php echo link_to_remote('NEW', array(
    'update' => '_feedback_',
    'url'    => 'course/new',
    )) ?>
    </div>
<table>
  
  <tbody>
    <tr><td valign="top"><ul>
    <?php foreach ($course_list as $course): ?>
      <li>
      <?php echo link_to_remote($course->getId(), array(
      'update' => '_feedback_',
      'url'    => $sf_request->getRelativeUrlRoot().'/course/edit?id='.$course->getId(),
      'script' => 'true',
      )) ?>
      <noscript>
      <a href="<?php echo url_for('course/edit?id='.$course->getId()) ?>"><?php echo $course->getId() ?></a>
      </noscript>
      <?php echo link_to('Delete', 'course/delete?id='.$course->getId(), array('method' => 'delete', 'confirm' => 'Delete '.$course->getId().'?')) ?>
      </li>
    <?php endforeach; ?>
    </ul></td>
    <td>
    <div id="_feedback_">
   
    <?php include_partial('form', array('form' => $form, 'form2' => $form2, 'form3' => $form3)) ?>
  
    </div>
    </td>
    </tr>
  </tbody>
</table>        

    <?php echo javascript_tag("
  function more(num)
  {
    var n1='_expand'+num;
    document.getElementById(n1).style.display = 'none';
    var n2='_expand'+num+'_';
    document.getElementById(n2).style.display = 'block';
    var n3='_collapse'+num;
    document.getElementById(n3).style.display = 'block';
    
  }
  function less(num)
  {
    var n1='_expand'+num;
    document.getElementById(n1).style.display = 'block';
    var n2='_expand'+num+'_';
    document.getElementById(n2).style.display = 'none';
    var n3='_collapse'+num;
    document.getElementById(n3).style.display = 'none';
    
  }
") ?>
