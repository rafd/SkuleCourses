<?php

/**
 * CourseComment form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseCommentForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'user_id'   => new sfWidgetFormPropelChoice(array('model' => 'User', 'add_empty' => false)),
      'course_id' => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false)),
      'comment'   => new sfWidgetFormTextarea(),
      'input_dt'  => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'CourseComment', 'column' => 'id', 'required' => false)),
      'user_id'   => new sfValidatorPropelChoice(array('model' => 'User', 'column' => 'id')),
      'course_id' => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'comment'   => new sfValidatorString(),
      'input_dt'  => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('course_comment[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseComment';
  }


}
