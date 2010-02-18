<?php

/**
 * User form.
 *
 * @package    sf_sandbox
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfPropelFormTemplate.php 10377 2008-07-21 07:10:32Z dwhittle $
 */
class UserForm extends BaseUserForm
{
  public function configure()
  {
  	$c= new Criteria();
    $c->add(EnumItemPeer::PARENT_ID, skuleadminConst::USERTYPE_PARENT_ID);
    
    if($this->getOption('edit')!==null){
        $this->setWidgets(array(
	      'user_name'     => new sfWidgetFormInputHidden(),
	      'password'      => new sfWidgetFormInput(),
	      'type_id'       => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false, 'criteria' => $c)),
	      'email'         => new sfWidgetFormInput(),
	    ));
    } else {
	    $this->setWidgets(array(
	      'user_name'     => new sfWidgetFormInput(),
	      'password'      => new sfWidgetFormInput(),
	      'type_id'       => new sfWidgetFormPropelChoice(array('model' => 'EnumItem', 'add_empty' => false, 'criteria' => $c)),
	      'email'         => new sfWidgetFormInput(),
	    ));
    }
    
    $this->setValidators(array(
	   'user_name'     => new sfValidatorString(array('max_length' => 50)),
	   'password'      => new sfValidatorString(array('max_length' => 50)),
	   'type_id'       => new sfValidatorPropelChoice(array('model' => 'EnumItem', 'column' => 'id')),
	   'email'         => new sfValidatorEmail(array(), array('invalid' => 'The email address is invalid.')),
	));
    
    $this->widgetSchema->setNameFormat('user[%s]');
    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);
  }
}
