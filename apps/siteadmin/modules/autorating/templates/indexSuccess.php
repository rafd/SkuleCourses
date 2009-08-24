<h1>Autorating List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Field</th>
      <th>Rating</th>
      <th>Import dt</th>
      <th>Course ins</th>
      <th>Number</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($auto_course_rating_list as $auto_course_rating): ?>
    <tr>
      <td><a href="<?php echo url_for('autorating/edit?id='.$auto_course_rating->getId()) ?>"><?php echo $auto_course_rating->getId() ?></a></td>
      <td><?php echo $auto_course_rating->getFieldId() ?></td>
      <td><?php echo $auto_course_rating->getRating() ?></td>
      <td><?php echo $auto_course_rating->getImportDt() ?></td>
      <td><?php echo $auto_course_rating->getCourseInsId() ?></td>
      <td><?php echo $auto_course_rating->getNumber() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('autorating/new') ?>">New</a>
