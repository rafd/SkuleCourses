<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * InstructorDetail filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseInstructorDetailFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'descr'         => new sfWidgetFormFilterInput(),
      'instructor_id' => new sfWidgetFormPropelChoice(array('model' => 'Instructor', 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'descr'         => new sfValidatorPass(array('required' => false)),
      'instructor_id' => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Instructor', 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('instructor_detail_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'InstructorDetail';
  }

  public function getFields()
  {
    return array(
      'id'            => 'Number',
      'descr'         => 'Text',
      'instructor_id' => 'ForeignKey',
    );
  }
}
