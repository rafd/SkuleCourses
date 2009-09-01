<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * Exam filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseExamFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'course_id' => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => true)),
      'type'      => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => true)),
      'year'      => new sfWidgetFormFilterInput(),
      'descr'     => new sfWidgetFormFilterInput(),
      'file_path' => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'course_id' => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Course', 'column' => 'id')),
      'type'      => new sfValidatorPropelChoice(array('required' => false, 'model' => 'EnumItem', 'column' => 'id')),
      'year'      => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'descr'     => new sfValidatorPass(array('required' => false)),
      'file_path' => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('exam_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'Exam';
  }

  public function getFields()
  {
    return array(
      'id'        => 'Number',
      'course_id' => 'ForeignKey',
      'type'      => 'ForeignKey',
      'year'      => 'Number',
      'descr'     => 'Text',
      'file_path' => 'Text',
    );
  }
}
