<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * ImportMapping filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseImportMappingFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'mapping'          => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => true)),
      'rating_field_id'  => new sfWidgetFormPropelChoice(array('model' => 'RatingField', 'add_empty' => true)),
      'question_rating'  => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'mapping'          => new sfValidatorPropelChoice(array('required' => false, 'model' => 'EnumItem', 'column' => 'id')),
      'rating_field_id'  => new sfValidatorPropelChoice(array('required' => false, 'model' => 'RatingField', 'column' => 'id')),
      'question_rating'  => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('import_mapping_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'ImportMapping';
  }

  public function getFields()
  {
    return array(
      'column'           => 'Number',
      'import_file_type' => 'ForeignKey',
      'mapping'          => 'ForeignKey',
      'rating_field_id'  => 'ForeignKey',
      'question_rating'  => 'Number',
    );
  }
}
