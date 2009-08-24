<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * AutoCourseRating filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseAutoCourseRatingFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'field_id'      => new sfWidgetFormPropelChoice(array('model' => 'RatingField', 'add_empty' => true)),
      'rating'        => new sfWidgetFormFilterInput(),
      'import_dt'     => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'course_ins_id' => new sfWidgetFormPropelChoice(array('model' => 'CourseInstructorAssociation', 'add_empty' => true)),
      'number'        => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'field_id'      => new sfValidatorPropelChoice(array('required' => false, 'model' => 'RatingField', 'column' => 'id')),
      'rating'        => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'import_dt'     => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDate(array('required' => false)))),
      'course_ins_id' => new sfValidatorPropelChoice(array('required' => false, 'model' => 'CourseInstructorAssociation', 'column' => 'id')),
      'number'        => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('auto_course_rating_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'AutoCourseRating';
  }

  public function getFields()
  {
    return array(
      'id'            => 'Number',
      'field_id'      => 'ForeignKey',
      'rating'        => 'Number',
      'import_dt'     => 'Date',
      'course_ins_id' => 'ForeignKey',
      'number'        => 'Number',
    );
  }
}
