<?php

/**
 * Course form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'      => new sfWidgetFormInputHidden(),
      'dept_id' => new sfWidgetFormPropelChoice(array('model' => 'Department', 'add_empty' => false)),
      'descr'   => new sfWidgetFormInput(),
      'is_eng'  => new sfWidgetFormInputCheckbox(),
    ));

    $this->setValidators(array(
      'id'      => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id', 'required' => false)),
      'dept_id' => new sfValidatorPropelChoice(array('model' => 'Department', 'column' => 'id')),
      'descr'   => new sfValidatorString(array('max_length' => 255)),
      'is_eng'  => new sfValidatorBoolean(),
    ));

    $this->widgetSchema->setNameFormat('course[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'Course';
  }


}
