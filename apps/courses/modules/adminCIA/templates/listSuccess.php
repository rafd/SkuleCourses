<table>
  <thead>
    <tr>
      <th>Id</th>
      <?php if(!isset($instruct_id)): ?>
      <th>Instructor</th>
      <?php endif; ?>
      <?php if(!isset($course_id)): ?>
      <th>Course</th>
      <?php endif; ?>
      <th>Year</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($course_instructor_association_list as $course_instructor_association): ?>
    <tr>
      <td><a href="<?php echo url_for('adminCIA/edit?id='.$course_instructor_association->getId()) ?>"><?php echo $course_instructor_association->getId() ?></a></td>
       <?php if(!isset($instruct_id)): ?>
      <td>
            <a href="<?php echo url_for('instructor/edit?id='.$course_instructor_association->getInstructorId()) ?>"><?php echo $course_instructor_association->getInstructorId() ?></a>
      </td>
      <?php endif; ?>
      <?php if(!isset($course_id)): ?>
      <td>
      <a href="<?php echo url_for('course/editlink?id='.$course_instructor_association->getCourseId()) ?>"><?php echo $course_instructor_association->getCourseId() ?></a>
      </td>
      <?php endif; ?>
      <td><?php echo $course_instructor_association->getYear() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('adminCIA/new') ?>">New</a>
