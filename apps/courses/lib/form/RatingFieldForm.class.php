<?php

/**
 * RatingField form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class RatingFieldForm extends BaseRatingFieldForm
{
  protected static $tf = array(1 => 'true', 0 => 'false');
  
  public function configure()
  {
  	$c = new Criteria();
    $cton1 = $c->getNewCriterion(EnumItemPeer::PARENT_ID, skuleadminConst::RATING_FIELD_PID);
    $cton2 = $c->getNewCriterion(EnumItemPeer::PARENT_ID, skuleadminConst::RATING_TYPES_PID);
 
    // combine them
    $cton1->addOr($cton2);
 
    // add to Criteria
    $c->add($cton1);

    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'descr'       => new sfWidgetFormInput(),
      'type_id'     => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false, 'criteria' => $c)),
      'is_reserved' => new sfWidgetFormChoice(array('choices' =>  self::$tf)),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorPropelChoice(array('model' => 'RatingField', 'column' => 'id', 'required' => false)),
      'descr'       => new sfValidatorString(array('max_length' => 255)),
      'type_id'     => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'is_reserved' => new sfValidatorChoice(array('choices' =>  array_keys(self::$tf))),
    ));

    $this->widgetSchema->setNameFormat('rating_field[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
