<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * RatingField filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseRatingFieldFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'descr'       => new sfWidgetFormFilterInput(),
      'type_id'     => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => true)),
      'is_reserved' => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'descr'       => new sfValidatorPass(array('required' => false)),
      'type_id'     => new sfValidatorPropelChoice(array('required' => false, 'model' => 'EnumItem', 'column' => 'id')),
      'is_reserved' => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('rating_field_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'RatingField';
  }

  public function getFields()
  {
    return array(
      'id'          => 'Number',
      'descr'       => 'Text',
      'type_id'     => 'ForeignKey',
      'is_reserved' => 'Number',
    );
  }
}
