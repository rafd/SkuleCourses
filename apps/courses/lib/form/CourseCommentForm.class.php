<?php

/**
 * CourseComment form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class CourseCommentForm extends BaseCourseCommentForm
{
  
  public function configure()
  {
  	$c = new Criteria();
  	if($this->getOption('course_id')!==null){
  		$c->add(CoursePeer::ID,$this->getOption('course_id'));
  		//$c->add(CourseCommentPeer::COURSE_ID,$this->getOption('course_id'));
  	}
    $this->setWidgets(array(
      'id'         => new sfWidgetFormInputHidden(),
      'ip'         => new sfWidgetFormInputHidden(),
      'course_id'  => (($this->getOption('edit')!==null)?
        new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false, 'criteria'=>$c), array("style"=>"width:100px")) :
        new sfWidgetFormInput(array(), array("style"=>"width:100px"))),
      'comment'    => new sfWidgetFormInputHidden(),
      'input_dt'   => new sfWidgetFormInputHidden(),
      'applies_to' => new sfWidgetFormInputHidden(),
      'approved'   => new sfWidgetFormInputCheckbox(),
    ));

    $this->setValidators(array(
      'id'         => new sfValidatorPropelChoice(array('model' => 'CourseComment', 'column' => 'id', 'required' => false)),
      'ip'         => new sfValidatorString(),
      'course_id'  => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'comment'    => new sfValidatorString(),
      'input_dt'   => new sfValidatorDate(),
      'applies_to' => new sfValidatorInteger(),
      'approved'   => new sfValidatorBoolean(),
    ));
    
    unset($this['input_dt']);
    /*if($this->getOption('edit')==null){
      unset($this['course_id']);
    }*/

    $this->widgetSchema->setNameFormat('course_comment[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
