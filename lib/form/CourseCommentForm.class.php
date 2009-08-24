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
      'id'        => new sfWidgetFormInputHidden(),
      'user_id'   => new sfWidgetFormPropelChoice(array('model' => 'User', 'add_empty' => false)),
      'course_id' => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false, 'criteria'=>$c)),
      'comment'   => new sfWidgetFormTextarea(),
      
    ));

    $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'CourseComment', 'column' => 'id', 'required' => false)),
      'user_id'   => new sfValidatorPropelChoice(array('model' => 'User', 'column' => 'id')),
      'course_id' => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'comment'   => new sfValidatorString(),
      
    ));
    
    unset($this['input_dt']);
    if($this->getOption('edit')!==null){
    	unset($this['course_id']);
    }

    $this->widgetSchema->setNameFormat('course_comment[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
