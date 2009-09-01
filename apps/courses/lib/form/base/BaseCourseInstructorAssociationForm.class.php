<?php

/**
 * CourseInstructorAssociation form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseInstructorAssociationForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'instructor_id' => new sfWidgetFormPropelChoice(array('model' => 'Instructor', 'add_empty' => false)),
      'course_id'     => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false)),
      'year'          => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'CourseInstructorAssociation', 'column' => 'id', 'required' => false)),
      'instructor_id' => new sfValidatorPropelChoice(array('model' => 'Instructor', 'column' => 'id')),
      'course_id'     => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'year'          => new sfValidatorInteger(),
    ));

    $this->widgetSchema->setNameFormat('course_instructor_association[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseInstructorAssociation';
  }


}
