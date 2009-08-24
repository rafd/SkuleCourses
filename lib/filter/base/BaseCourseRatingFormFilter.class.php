<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * CourseRating filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseRatingFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'user_id'       => new sfWidgetFormPropelChoice(array('model' => 'User', 'add_empty' => true)),
      'field_id'      => new sfWidgetFormPropelChoice(array('model' => 'RatingField', 'add_empty' => true)),
      'rating'        => new sfWidgetFormFilterInput(),
      'input_dt'      => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
    ));

    $this->setValidators(array(
      'user_id'       => new sfValidatorPropelChoice(array('required' => false, 'model' => 'User', 'column' => 'id')),
      'field_id'      => new sfValidatorPropelChoice(array('required' => false, 'model' => 'RatingField', 'column' => 'id')),
      'rating'        => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'input_dt'      => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDate(array('required' => false)))),
    ));

    $this->widgetSchema->setNameFormat('course_rating_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseRating';
  }

  public function getFields()
  {
    return array(
      'id'            => 'Number',
      'user_id'       => 'ForeignKey',
      'field_id'      => 'ForeignKey',
      'course_ins_id' => 'ForeignKey',
      'rating'        => 'Number',
      'input_dt'      => 'Date',
    );
  }
}
