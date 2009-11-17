<?php

/**
 * Instructor form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class InstructorForm extends BaseInstructorForm
{
  public function configure()
  {
    $this->setWidgets(array(
      'id'         => new sfWidgetFormInputHidden(),
      'last_name'  => new sfWidgetFormInput(),
      'first_name' => new sfWidgetFormInput(),
      'dept_id'    => new sfWidgetFormPropelChoice(array('model' => 'Department', 'add_empty' => true, 'order_by'=>array('Id','asc'))),
    ));

    $this->setValidators(array(
      'id'         => new sfValidatorPropelChoice(array('model' => 'Instructor', 'column' => 'id', 'required' => false)),
      'last_name'  => new sfValidatorString(array('max_length' => 30)),
      'first_name' => new sfValidatorString(array('max_length' => 30)),
      'dept_id'    => new sfValidatorPropelChoice(array('model' => 'Department', 'column' => 'id')),
    ));
    
    $this->widgetSchema->setNameFormat('instructor[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
