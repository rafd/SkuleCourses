<?php

/**
 * CourseDisciplineAssociation form base class.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseDisciplineAssociationForm extends BaseFormPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'            => new sfWidgetFormInputHidden(),
      'course_id'     => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => false)),
      'discipline_id' => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false)),
      'year_of_study' => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'            => new sfValidatorPropelChoice(array('model' => 'CourseDisciplineAssociation', 'column' => 'id', 'required' => false)),
      'course_id'     => new sfValidatorPropelChoice(array('model' => 'Course', 'column' => 'id')),
      'discipline_id' => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'year_of_study' => new sfValidatorInteger(),
    ));

    $this->widgetSchema->setNameFormat('course_discipline_association[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseDisciplineAssociation';
  }


}
