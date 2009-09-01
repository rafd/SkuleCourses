<?php

/**
 * EnumItem form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class EnumItemForm extends BaseEnumItemForm
{
  public function configure()
  {
  	$c= new Criteria();
  	//$c->add(EnumItemPeer::DESCR, '',Criteria::NOT_EQUAL);
  	if($this->getOption('discipline')!==null){
    $this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'descr'     => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id', 'required' => false)),
      'descr'     => new sfValidatorString(array('max_length' => 255)),
    ));
  	}else{ 
  	$this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'parent_id' => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false, 'criteria'=>$c)),
      'descr'     => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id', 'required' => false)),
      'parent_id' => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'descr'     => new sfValidatorString(array('max_length' => 255)),
    ));
  	}
    $this->widgetSchema->setNameFormat('enum_item[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
