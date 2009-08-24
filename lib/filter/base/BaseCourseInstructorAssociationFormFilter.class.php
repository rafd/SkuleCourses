<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * CourseInstructorAssociation filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseInstructorAssociationFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'instructor_id' => new sfWidgetFormPropelChoice(array('model' => 'Instructor', 'add_empty' => true)),
      'course_id'     => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => true)),
      'year'          => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'instructor_id' => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Instructor', 'column' => 'id')),
      'course_id'     => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Course', 'column' => 'id')),
      'year'          => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('course_instructor_association_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseInstructorAssociation';
  }

  public function getFields()
  {
    return array(
      'id'            => 'Number',
      'instructor_id' => 'ForeignKey',
      'course_id'     => 'ForeignKey',
      'year'          => 'Number',
    );
  }
}
