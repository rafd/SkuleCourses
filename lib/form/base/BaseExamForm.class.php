<?php

/**
 * Exam form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseExamForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'course_id' => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false)),
      'type'      => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false)),
      'year'      => new sfWidgetFormInput(),
      'descr'     => new sfWidgetFormInput(),
      'file_path' => new sfWidgetFormTextarea(),
    ));

    $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'Exam', 'column' => 'id', 'required' => false)),
      'course_id' => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'type'      => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'year'      => new sfValidatorInteger(),
      'descr'     => new sfValidatorString(array('max_length' => 255)),
      'file_path' => new sfValidatorString(),
    ));

    $this->widgetSchema->setNameFormat('exam[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'Exam';
  }


}
