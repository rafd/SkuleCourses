<?php

/**
 * User form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseUserForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'user_name'     => new sfWidgetFormInput(),
      'password'      => new sfWidgetFormInput(),
      'type_id'       => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false)),
      'email'         => new sfWidgetFormInput(),
      'registered_on' => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'User', 'column' => 'id', 'required' => false)),
      'user_name'     => new sfValidatorString(array('max_length' => 50)),
      'password'      => new sfValidatorString(array('max_length' => 50)),
      'type_id'       => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'email'         => new sfValidatorString(array('max_length' => 50)),
      'registered_on' => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('user[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'User';
  }


}
