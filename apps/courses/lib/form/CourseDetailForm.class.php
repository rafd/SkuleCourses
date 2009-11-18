<?php

/**
 * CourseDetail form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class CourseDetailForm extends BaseCourseDetailForm
{
  public function configure()
  {
  	unset($this['course_id']);
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'detail_descr'  => new sfWidgetFormInputHidden(),
      'first_offered' => new sfWidgetFormInput(),
      'last_offered'  => new sfWidgetFormInput(),
      'hasDetail'     => new sfWidgetFormInputHidden()
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'CourseDetail', 'column' => 'id', 'required' => false)),
      'detail_descr'  => new sfValidatorString(),
      'first_offered' => new sfValidatorDate(array('required' => false)),
      'last_offered'  => new sfValidatorDate(array('required' => false)),
      'hasDetail'     => new sfValidatorString()
    ));

    $this->widgetSchema->setNameFormat('course_detail[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
    
  }
}
