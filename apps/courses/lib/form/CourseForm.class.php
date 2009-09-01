<?php

/**
 * Course form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class CourseForm extends BaseCourseForm
{
  public function configure()
  {
  	if($this->getOption('edit')!==null){
  	$this->setWidgets(array(
      'id'      => new sfWidgetFormInputHidden(),
      'dept_id' => new sfWidgetFormPropelChoice(array('model' => 'Department', 'add_empty' => false)),
      'descr'   => new sfWidgetFormInput(),
      'is_eng'  => new sfWidgetFormInputCheckbox(),
    ));

    $this->setValidators(array(
      'id'      => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id', 'required' => false)),
      'dept_id' => new sfValidatorPropelChoice(array('model' => 'Department', 'column' => 'id')),
      'descr'   => new sfValidatorString(array('max_length' => 255)),
      'is_eng'  => new sfValidatorBoolean(),
    ));
  	}else{
  	$this->setWidgets(array(
      'id'                      => new sfWidgetFormInput(),
      'dept_id'                 => new sfWidgetFormPropelChoice(array('model' => 'Department', 'add_empty' => false)),
      'descr'                   => new sfWidgetFormInput(),
      'is_eng'                  => new sfWidgetFormInputCheckbox(),
      
    ));

    $this->setValidators(array(
      'id'                      => new sfValidatorString(array('max_length' => 8)),
      'dept_id'                 => new sfValidatorPropelChoice(array('model' => 'Department', 'column' => 'id')),
      'descr'                   => new sfValidatorString(array('max_length' => 255)),
      'is_eng'                  => new sfValidatorBoolean(),
      
    ));	
  	}

    $this->widgetSchema->setNameFormat('course[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}

