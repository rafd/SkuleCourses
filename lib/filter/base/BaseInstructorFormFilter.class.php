<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * Instructor filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseInstructorFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'last_name'  => new sfWidgetFormFilterInput(),
      'first_name' => new sfWidgetFormFilterInput(),
      'dept_id'    => new sfWidgetFormPropelChoice(array('model' => 'Department', 'add_empty' => true)),
    ));

    $this->setValidators(array(
      'last_name'  => new sfValidatorPass(array('required' => false)),
      'first_name' => new sfValidatorPass(array('required' => false)),
      'dept_id'    => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Department', 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('instructor_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'Instructor';
  }

  public function getFields()
  {
    return array(
      'id'         => 'Number',
      'last_name'  => 'Text',
      'first_name' => 'Text',
      'dept_id'    => 'ForeignKey',
    );
  }
}
