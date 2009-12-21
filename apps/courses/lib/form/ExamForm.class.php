<?php

/**
 * Exam form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class ExamForm extends BaseExamForm
{
  protected static $choices = array(1 => 'spring', 9 => 'winter', 5 => 'summer');
	
  public function configure()
  {
  	$c= new Criteria();
    $c->add(EnumItemPeer::PARENT_ID, skuleadminConst::EXAMTYPE_PARENT_ID);
    
    $c2= new Criteria();
    if($this->getOption('courseid')!==null){
    	$c2->add(CoursePeer::ID, $this->getOption('courseid'));
    }
    unset($this->year);
    //$this->unset['year'];
    
    $this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'course_id' => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false,'criteria' => $c2)),
      'type'      => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false,'criteria' => $c)),
      'years'      => new sfWidgetFormInput(),
      'semester'  => new sfWidgetFormSelectRadio(array('choices' =>  self::$choices)),
      'descr'     => new sfWidgetFormInput(),
      'file_path' => new sfWidgetFormInputFile(),
    ));
    
    if($this->getOption('edit')!==null){
      
      $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'Exam', 'column' => 'id', 'required' => false)),
      'course_id' => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'type'      => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'years'      => new sfValidatorAnd(array(
                              new sfValidatorString(array('max_length' => 4)),
                              new sfValidatorInteger(),
                     )),
      'semester'  => new sfValidatorChoice(array('choices' =>  array_keys(self::$choices))),
      'descr'     => new sfValidatorString(array('max_length' => 255)),
      'file_path' => new sfValidatorFile(array('required' => false)),
      ));
    }else{
      $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'Exam', 'column' => 'id', 'required' => false)),
      'course_id' => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'type'      => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'years'      => new sfValidatorAnd(array(
                              new sfValidatorString(array('max_length' => 4)),
                              new sfValidatorInteger(),
                     )),
      //'year'      => new sfValidatorInteger(),
      'semester'  => new sfValidatorChoice(array('choices' => array_keys(self::$choices))),
      'descr'     => new sfValidatorString(array('max_length' => 255)),
      'file_path' => new sfValidatorFile(array('required' => true)),
      ));
    }
   
    if($this->getOption('examyear')!==null){
      $this->setDefault('years',$this->getOption('examyear'));
    }
    if($this->getOption('semester')!==null){
      $this->setDefault('semester',$this->getOption('semester')); 
    }else{
      $this->setDefault('semester',1);	
    }
    
    $this->widgetSchema->setNameFormat('exam[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
