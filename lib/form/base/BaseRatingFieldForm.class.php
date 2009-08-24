<?php

/**
 * RatingField form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseRatingFieldForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'descr'       => new sfWidgetFormInput(),
      'type_id'     => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false)),
      'is_reserved' => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorPropelChoice(array('model' => 'RatingField', 'column' => 'id', 'required' => false)),
      'descr'       => new sfValidatorString(array('max_length' => 255)),
      'type_id'     => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'is_reserved' => new sfValidatorInteger(),
    ));

    $this->widgetSchema->setNameFormat('rating_field[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'RatingField';
  }


}
