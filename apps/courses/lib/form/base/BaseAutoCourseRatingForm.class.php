<?php

/**
 * AutoCourseRating form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseAutoCourseRatingForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'field_id'      => new sfWidgetFormPropelChoice(array('model' => 'RatingField', 'add_empty' => false)),
      'rating'        => new sfWidgetFormInput(),
      'import_dt'     => new sfWidgetFormDateTime(),
      'course_ins_id' => new sfWidgetFormPropelChoice(array('model' => 'CourseInstructorAssociation', 'add_empty' => false)),
      'number'        => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'AutoCourseRating', 'column' => 'id', 'required' => false)),
      'field_id'      => new sfValidatorPropelChoice(array('model' => 'RatingField', 'column' => 'id')),
      'rating'        => new sfValidatorInteger(),
      'import_dt'     => new sfValidatorDateTime(),
      'course_ins_id' => new sfValidatorPropelChoice(array('model' => 'CourseInstructorAssociation', 'column' => 'id')),
      'number'        => new sfValidatorInteger(),
    ));

    $this->widgetSchema->setNameFormat('auto_course_rating[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'AutoCourseRating';
  }


}
