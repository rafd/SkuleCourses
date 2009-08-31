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
  public function configure()
  {
  	$c= new Criteria();
    $c->add(EnumItemPeer::PARENT_ID, skuleadminConst::EXAMTYPE_PARENT_ID);
    
    $c2= new Criteria();
    if($this->getOption('courseid')!==null){
    	$c2->add(CoursePeer::ID, $this->getOption('courseid'));
    }
    
    $path = sfConfig::get('sf_upload_dir');
    
    $this->setWidgets(array(
      'id'        => new sfWidgetFormInputHidden(),
      'course_id' => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false,'criteria' => $c2)),
      'type'      => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false,'criteria' => $c)),
      'year'      => new sfWidgetFormInput(),
      'descr'     => new sfWidgetFormInput(),
      'file_path' => new sfWidgetFormInputFile(),
    ));
    
    if($this->getOption('edit')!==null){
      
      $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'Exam', 'column' => 'id', 'required' => false)),
      'course_id' => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'type'      => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'year'      => new sfValidatorInteger(),
      'descr'     => new sfValidatorString(array('max_length' => 255)),
      'file_path' => new sfValidatorFile(array('path' => $path, 'required' => false)),
      ));
    }else{
      $this->setValidators(array(
      'id'        => new sfValidatorPropelChoice(array('model' => 'Exam', 'column' => 'id', 'required' => false)),
      'course_id' => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'type'      => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'year'      => new sfValidatorInteger(),
      'descr'     => new sfValidatorString(array('max_length' => 255)),
      'file_path' => new sfValidatorFile(array('path' => $path, 'required' => true)),
      ));
    }
    $this->widgetSchema->setNameFormat('exam[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
