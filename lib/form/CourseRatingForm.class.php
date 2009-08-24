<?php

/**
 * CourseRating form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class CourseRatingForm extends BaseCourseRatingForm
{
  public function configure()
  { 
  	unset($this['input_dt']);
  	$this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'user_id'       => new sfWidgetFormPropelChoice(array('model' => 'User', 'add_empty' => false)),
      'field_id'      => new sfWidgetFormPropelChoice(array('model' => 'RatingField', 'add_empty' => false)),
      'course_ins_id' => new sfWidgetFormPropelChoice(array('model' => 'CourseInstructorAssociation', 'add_empty' => false,)),
      'rating'        => new sfWidgetFormInput(),
      
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'CourseRating', 'column' => 'id', 'required' => false)),
      'user_id'       => new sfValidatorPropelChoice(array('model' => 'User', 'column' => 'id')),
      'field_id'      => new sfValidatorPropelChoice(array('model' => 'RatingField', 'column' => 'id')),
      'course_ins_id' => new sfValidatorPropelChoice(array('model' => 'CourseInstructorAssociation', 'column' => 'id', 'required' => false)),
      'rating'        => new sfValidatorInteger(),
      
    ));

    $this->widgetSchema->setNameFormat('course_rating[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
