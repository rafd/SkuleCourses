<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * Discipline filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseDisciplineFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'descr'     => new sfWidgetFormFilterInput(),
      'short_descr'  => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'descr'     => new sfValidatorPass(array('required' => false)),
      'short_descr'  => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('discipline_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'EnumItem';
  }

  public function getFields()
  {
    return array(
      'id'        => 'Number',
      'descr'     => 'Text',
      'short_descr' => 'Text',
    );
  }
}
