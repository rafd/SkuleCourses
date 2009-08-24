<h1>Importmap List</h1>

<table>
  <thead>
    <tr>
      <th>Column</th>
      <th>Import file type</th>
      <th>Mapping</th>
      <th>Rating field</th>
      <th>Question rating</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($import_mapping_list as $import_mapping): ?>
    <tr>
      <td><a href="<?php echo url_for('importmap/edit?column='.$import_mapping->getColumn().'&import_file_type='.$import_mapping->getImportFileType()) ?>"><?php echo $import_mapping->getColumn() ?></a></td>
      <td><a href="<?php echo url_for('importmap/edit?column='.$import_mapping->getColumn().'&import_file_type='.$import_mapping->getImportFileType()) ?>"><?php echo $import_mapping->getImportFileType() ?></a></td>
      <td><?php echo $import_mapping->getMapping() ?></td>
      <td><?php echo $import_mapping->getRatingFieldId() ?></td>
      <td><?php echo $import_mapping->getQuestionRating() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('importmap/new') ?>">New</a>
