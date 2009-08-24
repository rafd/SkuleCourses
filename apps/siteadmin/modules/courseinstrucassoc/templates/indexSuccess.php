<h1>Courseinstrucassoc List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Instructor</th>
      <th>Course</th>
      <th>Year</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($course_instructor_association_list as $course_instructor_association): ?>
    <tr>
      <td><a href="<?php echo url_for('courseinstrucassoc/edit?id='.$course_instructor_association->getId()) ?>"><?php echo $course_instructor_association->getId() ?></a></td>
      <td><?php echo $course_instructor_association->getInstructorId() ?></td>
      <td><?php echo $course_instructor_association->getCourseId() ?></td>
      <td><?php echo $course_instructor_association->getYear() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('courseinstrucassoc/new') ?>">New</a>
