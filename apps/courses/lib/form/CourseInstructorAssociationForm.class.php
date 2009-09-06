<?php

/**
 * CourseInstructorAssociation form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class CourseInstructorAssociationForm extends BaseCourseInstructorAssociationForm
{
  protected static $choices = array(1 => 'spring', 9 => 'winter', 5 => 'summer');
	
  public function configure()
  {
  	$c = new Criteria();
    if($this->getOption('instructor')!==null){
  	  $c->add(InstructorPeer::ID, $this->getOption('instructor'));
    }
  	
    $c2= new Criteria();
    if($this->getOption('course')!==null){
    	$c2->add(CoursePeer::ID, $this->getOption('course'));
    }
    
    $this->unset['year'];
  	$this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'instructor_id' => new sfWidgetFormPropelChoice(array('model' => 'Instructor', 'add_empty' => false, 'criteria' => $c)),
      'course_id'     => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false, 'criteria' => $c2)),
      'years'          => new sfWidgetFormInput(),
  	  'semester'      => new sfWidgetFormSelectRadio(array('choices' =>  self::$choices)),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'CourseInstructorAssociation', 'column' => 'id', 'required' => false)),
      'instructor_id' => new sfValidatorPropelChoice(array('model' => 'Instructor', 'column' => 'id')),
      'course_id'     => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'years'         => new sfValidatorAnd(array(
                              new sfValidatorString(array('max_length' => 4)),
                              new sfValidatorInteger(),
                      )),
      'semester'      => new sfValidatorChoice(array('choices' =>  array_keys(self::$choices))),
    ));

    if($this->getOption('year')!==null){
      $this->setDefault('years',$this->getOption('year'));
    }
    if($this->getOption('semester')!==null){
      $this->setDefault('semester',$this->getOption('semester')); 
    }else{
      $this->setDefault('semester',1);	
    }
    $this->widgetSchema->setNameFormat('course_instructor_association[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
