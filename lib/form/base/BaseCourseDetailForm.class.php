<?php

/**
 * CourseDetail form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseDetailForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'detail_descr'  => new sfWidgetFormTextarea(),
      'first_offered' => new sfWidgetFormDate(),
      'last_offered'  => new sfWidgetFormDate(),
      'course_id'     => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false)),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'CourseDetail', 'column' => 'id', 'required' => false)),
      'detail_descr'  => new sfValidatorString(),
      'first_offered' => new sfValidatorDate(array('required' => false)),
      'last_offered'  => new sfValidatorDate(array('required' => false)),
      'course_id'     => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('course_detail[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseDetail';
  }


}
