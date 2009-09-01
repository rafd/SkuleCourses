<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * Course filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'dept_id' => new sfWidgetFormPropelChoice(array('model' => 'Department', 'add_empty' => true)),
      'descr'   => new sfWidgetFormFilterInput(),
      'is_eng'  => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
    ));

    $this->setValidators(array(
      'dept_id' => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Department', 'column' => 'id')),
      'descr'   => new sfValidatorPass(array('required' => false)),
      'is_eng'  => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
    ));

    $this->widgetSchema->setNameFormat('course_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'Course';
  }

  public function getFields()
  {
    return array(
      'id'      => 'Text',
      'dept_id' => 'ForeignKey',
      'descr'   => 'Text',
      'is_eng'  => 'Boolean',
    );
  }
}
