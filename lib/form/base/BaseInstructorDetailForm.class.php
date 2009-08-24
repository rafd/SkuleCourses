<?php

/**
 * InstructorDetail form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseInstructorDetailForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'descr'         => new sfWidgetFormTextarea(),
      'instructor_id' => new sfWidgetFormPropelChoice(array('model' => 'Instructor', 'add_empty' => false)),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'InstructorDetail', 'column' => 'id', 'required' => false)),
      'descr'         => new sfValidatorString(),
      'instructor_id' => new sfValidatorPropelChoice(array('model' => 'Instructor', 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('instructor_detail[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'InstructorDetail';
  }


}
