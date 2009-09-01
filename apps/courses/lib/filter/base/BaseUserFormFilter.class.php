<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * User filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseUserFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'user_name'     => new sfWidgetFormFilterInput(),
      'password'      => new sfWidgetFormFilterInput(),
      'type_id'       => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => true)),
      'email'         => new sfWidgetFormFilterInput(),
      'registered_on' => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
    ));

    $this->setValidators(array(
      'user_name'     => new sfValidatorPass(array('required' => false)),
      'password'      => new sfValidatorPass(array('required' => false)),
      'type_id'       => new sfValidatorPropelChoice(array('required' => false, 'model' => 'EnumItem', 'column' => 'id')),
      'email'         => new sfValidatorPass(array('required' => false)),
      'registered_on' => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDate(array('required' => false)), 'to_date' => new sfValidatorDate(array('required' => false)))),
    ));

    $this->widgetSchema->setNameFormat('user_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'User';
  }

  public function getFields()
  {
    return array(
      'id'            => 'Number',
      'user_name'     => 'Text',
      'password'      => 'Text',
      'type_id'       => 'ForeignKey',
      'email'         => 'Text',
      'registered_on' => 'Date',
    );
  }
}
