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
  protected static $credits = array(H1 => 'H1', Y1 => 'Y1');
  
  public function configure()
  {
    $this->unset['id'];
  	if($this->getOption('edit')!==null){
  	//edit form
  	$this->setWidgets(array(
      //'id'      => new sfWidgetFormInputHidden(),
      'descr'   => new sfWidgetFormInput(),
      'is_eng'  => new sfWidgetFormInputCheckbox(),
    ));

    $this->setValidators(array(
      //'id'      => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id', 'required' => false)),
      'descr'   => new sfValidatorString(array('max_length' => 255)),
      'is_eng'  => new sfValidatorBoolean(),
    ));
  	}else{
  	$this->setWidgets(array(
      //'id'      => new sfWidgetFormInput(),
      'dept_id' => new sfWidgetFormPropelChoice(array('model' => 'Department', 'add_empty' => false)),
  	  'code'    => new sfWidgetFormInput(),
  	  'credit'  => new sfWidgetFormChoice(array('choices' =>  self::$credits)),
      'descr'   => new sfWidgetFormInput(),
      'is_eng'  => new sfWidgetFormInputCheckbox(),
      
    ));

    $this->setValidators(array(
      //'id'      => new sfValidatorString(array('max_length' => 8)),
      'dept_id' => new sfValidatorPropelChoice(array('model' => 'Department', 'column' => 'id')),
      'code'    => new sfValidatorAnd(array(
                     new sfValidatorString(array('max_length' => 3)),
                     new sfValidatorInteger(),
                     )),
      'credit'  => new sfValidatorChoice(array('choices' =>  array_keys(self::$credits))),
      'descr'   => new sfValidatorString(array('max_length' => 255)),
      'is_eng'  => new sfValidatorBoolean(),
      
    ));	
  	}

    $this->widgetSchema->setNameFormat('course[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}

