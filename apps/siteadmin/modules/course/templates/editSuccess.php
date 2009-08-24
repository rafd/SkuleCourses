<?php include_partial('form', array('form' => $form, 'form2' => $form2, 'form3' => $form3)) ?>
              
<?php echo javascript_tag("
    document.getElementById('_expand1').style.display = 'block';
    document.getElementById('_expand1_').style.display = 'none';
    ") ?>
<?php echo javascript_tag("
    document.getElementById('_expand2').style.display = 'block';
    document.getElementById('_expand2_').style.display = 'none';
    ") ?> 