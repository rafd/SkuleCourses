<?php

/**
 * ImportMapping form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseImportMappingForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'column'           => new sfWidgetFormInputHidden(),
      'import_file_type' => new sfWidgetFormInputHidden(),
      'mapping'          => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false)),
      'rating_field_id'  => new sfWidgetFormPropelChoice(array('model' => 'RatingField', 'add_empty' => true)),
      'question_rating'  => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'column'           => new sfValidatorPropelChoice(array('model' => 'ImportMapping', 'column' => 'column', 'required' => false)),
      'import_file_type' => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id', 'required' => false)),
      'mapping'          => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'rating_field_id'  => new sfValidatorPropelChoice(array('model' => 'RatingField', 'column' => 'id', 'required' => false)),
      'question_rating'  => new sfValidatorInteger(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('import_mapping[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'ImportMapping';
  }


}
