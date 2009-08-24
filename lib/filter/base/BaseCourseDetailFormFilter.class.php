<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * CourseDetail filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseDetailFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'detail_descr'  => new sfWidgetFormFilterInput(),
      'first_offered' => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => true)),
      'last_offered'  => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => true)),
      'course_id'     => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'detail_descr'  => new sfValidatorPass(array('required' => false)),
      'first_offered' => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDate(array('required' => false)))),
      'last_offered'  => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDate(array('required' => false)))),
      'course_id'     => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Course', 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('course_detail_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseDetail';
  }

  public function getFields()
  {
    return array(
      'id'            => 'Number',
      'detail_descr'  => 'Text',
      'first_offered' => 'Date',
      'last_offered'  => 'Date',
      'course_id'     => 'ForeignKey',
    );
  }
}
