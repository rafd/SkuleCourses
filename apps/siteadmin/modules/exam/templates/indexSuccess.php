<h1>Exam List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Course</th>
      <th>Type</th>
      <th>Year</th>
      <th>Descr</th>
      <th>File path</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($exam_list as $exam): ?>
    <tr>
      <td><a href="<?php echo url_for('exam/edit?id='.$exam->getId()) ?>"><?php echo $exam->getId() ?></a></td>
      <td><?php echo $exam->getCourseId() ?></td>
      <td><?php echo $exam->getType() ?></td>
      <td><?php echo $exam->getYear() ?></td>
      <td><?php echo $exam->getDescr() ?></td>
      <td><?php echo $exam->getFilePath() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('exam/new') ?>">New</a>
