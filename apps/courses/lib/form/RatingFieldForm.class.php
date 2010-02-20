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
 
  	$c->add(EnumItemPeer::PARENT_ID, skuleadminConst::RATING_META_TYPES_PID);
  	$c2 = new Criteria();
  	$c2->add(EnumItemPeer::PARENT_ID, skuleadminConst::RATING_SCALE_TYPES_PID);
  	
  	//need to add a extra field for SCALE TYPES
  	//$this->unset['is_reserved'];
  	//$this->unset['type_id'];
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'descr'       => new sfWidgetFormTextarea(array(),array("rows"=>"2")),
      //'is_reserved' => new sfWidgetFormChoice(array('choices' =>  self::$tf)),
      'type_scale'       => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false, 'criteria' => $c)
                          , array('onchange' => 'changeType(this)')),
      'scale'       => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false, 'criteria' => $c2)),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorPropelChoice(array('model' => 'RatingField', 'column' => 'id', 'required' => false)),
      'descr'       => new sfValidatorString(array('max_length' => 255)),
      //'type_id'     => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      //'is_reserved' => new sfValidatorChoice(array('choices' =>  array_keys(self::$tf))),
      'type_scale'     => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'scale'       => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
    ));

    $this->widgetSchema->setNameFormat('rating_field[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
  
  public function setValue($field,$value){
  	$this->widgetSchema[$field]->setDefault($value);
  }
  
}
