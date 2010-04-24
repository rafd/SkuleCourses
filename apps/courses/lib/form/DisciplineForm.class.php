<?php

/**
 * EnumItem form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class DisciplineForm extends BaseDisciplineForm
{
  public function configure()
  {
  	$c= new Criteria();
  	//$c->add(EnumItemPeer::DESCR, '',Criteria::NOT_EQUAL);
    $this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'descr'     => new sfWidgetFormInput(),
      'short_descr' => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'Discipline', 'column' => 'id', 'required' => false)),
      'descr'     => new sfValidatorString(array('max_length' => 255)),
      'short_descr' => new sfValidatorString(array('max_length' => 255)),
    ));
    
    $this->widgetSchema->setNameFormat('discipline[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
