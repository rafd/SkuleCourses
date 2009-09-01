<?php

/**
 * CourseRating form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseRatingForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'user_id'       => new sfWidgetFormPropelChoice(array('model' => 'User', 'add_empty' => false)),
      'field_id'      => new sfWidgetFormPropelChoice(array('model' => 'RatingField', 'add_empty' => false)),
      'course_ins_id' => new sfWidgetFormInputHidden(),
      'rating'        => new sfWidgetFormInput(),
      'input_dt'      => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'CourseRating', 'column' => 'id', 'required' => false)),
      'user_id'       => new sfValidatorPropelChoice(array('model' => 'User', 'column' => 'id')),
      'field_id'      => new sfValidatorPropelChoice(array('model' => 'RatingField', 'column' => 'id')),
      'course_ins_id' => new sfValidatorPropelChoice(array('model' => 'CourseInstructorAssociation', 'column' => 'id', 'required' => false)),
      'rating'        => new sfValidatorInteger(),
      'input_dt'      => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('course_rating[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseRating';
  }


}
