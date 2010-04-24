<?php

require_once(sfConfig::get('sf_lib_dir').'/filter/base/BaseFormFilterPropel.class.php');

/**
 * CourseDisciplineAssociation filter form base class.
 *
 * @package    sf_sandbox
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormFilterGeneratedTemplate.php 16976 2009-04-04 12:47:44Z fabien $
 */
class BaseCourseDisciplineAssociationFormFilter extends BaseFormFilterPropel
{
  public function setup()
  {
    $this->setWidgets(array(
      'course_id'     => new sfWidgetFormPropelChoice(array('model' => 'Course', 'add_empty' => true)),
      'discipline_id' => new sfWidgetFormPropelChoice(array('model' => 'Discipline', 'add_empty' => true)),
      'year_of_study' => new sfWidgetFormFilterInput(),
    ));

    $this->setValidators(array(
      'course_id'     => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Course', 'column' => 'id')),
      'discipline_id' => new sfValidatorPropelChoice(array('required' => false, 'model' => 'Discipline', 'column' => 'id')),
      'year_of_study' => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
    ));

    $this->widgetSchema->setNameFormat('course_discipline_association_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    parent::setup();
  }

  public function getModelName()
  {
    return 'CourseDisciplineAssociation';
  }

  public function getFields()
  {
    return array(
      'id'            => 'Number',
      'course_id'     => 'ForeignKey',
      'discipline_id' => 'ForeignKey',
      'year_of_study' => 'Number',
    );
  }
}
