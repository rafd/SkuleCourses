<?php

/**
 * ExamComment form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseExamCommentForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'       => new sfWidgetFormInputHidden(),
      'exam_id'  => new sfWidgetFormPropelChoice(array('model' => 'Exam', 'add_empty' => false)),
      'user_id'  => new sfWidgetFormPropelChoice(array('model' => 'User', 'add_empty' => false)),
      'comment'  => new sfWidgetFormTextarea(),
    ));

    $this->setValidators(array(
      'id'       => new sfValidatorPropelChoice(array('model' => 'ExamComment', 'column' => 'id', 'required' => false)),
      'exam_id'  => new sfValidatorPropelChoice(array('model' => 'Exam', 'column' => 'id')),
      'user_id'  => new sfValidatorPropelChoice(array('model' => 'User', 'column' => 'id')),
      'comment'  => new sfValidatorString(),
    ));
    
    unset($this['input_dt']);

    $this->widgetSchema->setNameFormat('exam_comment[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'ExamComment';
  }


}
