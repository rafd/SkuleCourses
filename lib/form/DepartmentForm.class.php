<?php

/**
 * Department form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class DepartmentForm extends BaseDepartmentForm
{
  public function configure()
  {
  	if($this->getOption('edit')!==null){
  	$this->setWidgets(array(
      'id'    => new sfWidgetFormInputHidden(),
      'descr' => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'    => new sfValidatorPropelChoice(array('model' => 'Department', 'column' => 'id', 'required' => false)),
      'descr' => new sfValidatorString(array('max_length' => 255)),
    ));
  	}else{
  	$this->setWidgets(array(
      'id'    => new sfWidgetFormInput(),
      'descr' => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'    => new sfValidatorString(array('max_length' => 3)),
      'descr' => new sfValidatorString(array('max_length' => 255)),
    ));	
  	}

    $this->widgetSchema->setNameFormat('department[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
