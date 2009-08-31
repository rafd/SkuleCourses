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
  public function configure()
  {
  	$c= new Criteria();
    $c->add(EnumItemPeer::PARENT_ID, skuleadminConst::RATING_FIELD_PID);
    $this->setWidgets(array(
      'id'          => new sfWidgetFormInputHidden(),
      'descr'       => new sfWidgetFormInput(),
      'type_id'     => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false, 'criteria' => $c)),
      'is_reserved' => new sfWidgetFormInput(),
    ));

    $this->setValidators(array(
      'id'          => new sfValidatorPropelChoice(array('model' => 'RatingField', 'column' => 'id', 'required' => false)),
      'descr'       => new sfValidatorString(array('max_length' => 255)),
      'type_id'     => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
      'is_reserved' => new sfValidatorInteger(),
    ));

    $this->widgetSchema->setNameFormat('rating_field[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
