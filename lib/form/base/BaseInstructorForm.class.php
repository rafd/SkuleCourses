<?php

/**
 * Instructor form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseInstructorForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'         => new sfWidgetFormInputHidden(),
      'last_name'  => new sfWidgetFormInput(),
      'first_name' => new sfWidgetFormInput(),
      'dept_id'    => new sfWidgetFormPropelChoice(array('model' => 'Department', 'add_empty' => false)),
    ));

    $this->setValidators(array(
      'id'         => new sfValidatorPropelChoice(array('model' => 'Instructor', 'column' => 'id', 'required' => false)),
      'last_name'  => new sfValidatorString(array('max_length' => 30)),
      'first_name' => new sfValidatorString(array('max_length' => 30)),
      'dept_id'    => new sfValidatorPropelChoice(array('model' => 'Department', 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('instructor[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'Instructor';
  }


}
