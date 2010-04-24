<?php

/**
 * CourseDisciplineAssociation form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class CourseDisciplineAssociationForm extends BaseCourseDisciplineAssociationForm
{
  public function configure()
  {
  	$c= new Criteria();
    $c->addAscendingOrderByColumn(DisciplinePeer::DESCR);
    unset($this['course_id']);
    $this->setWidgets(array(
	  'id'            => new sfWidgetFormInputHidden(),
	  'discipline_id' => new sfWidgetFormPropelChoice(array('model' => 'Discipline', 'add_empty' => false, 'criteria' => $c)),
	  'year_of_study' => new sfWidgetFormInput(),
	));
	
	$this->setValidators(array(
	  'id'            => new sfValidatorPropelChoice(array('model' => 'CourseDisciplineAssociation', 'column' => 'id', 'required' => false)),
	  'discipline_id' => new sfValidatorPropelChoice(array('model' => 'Discipline', 'column' => 'id')),
	  'year_of_study' => new sfValidatorInteger(),
	));
    $this->widgetSchema->setNameFormat('course_discipline_association[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
