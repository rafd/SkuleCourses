<?php

/**
 * adminratingCriteria actions.
 *
 * @package    sf_sandbox
 * @subpackage adminratingCriteria
 * @author     Jimmy Lu, Jason Ko
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class adminratingCriteriaActions extends sfActions
{ 
  public function preExecute(){
    //FIXME make the admin work
    //$this->forward404();
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
  }
  
  //creating a new rating field has been deprecated to executeList
  public function executeIndex(sfWebRequest $request)
  {
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new RatingFieldForm();
    $this->form->getObject()->setIsReserved(0);
    $this->processForm($request, $this->form);
    $this->rating_field_list = $this->getRatingCriteriaList();
    $this->setTemplate('list');
  }

  public function executeEdit(sfWebRequest $request)
  {
  	$this->scale_PID = skuleadminConst::RATING_SCALE_TYPES_PID;
    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    if($rating_field->getIsReserved()){
      $this->is_reserved = true;
      $this->rating = array('descr' => $rating_field->getDescr());
      $c= new Criteria();
      $c->add(EnumItemPeer::ID, $rating_field->getTypeId());
      $type = EnumItemPeer::doSelectOne($c);
      if($rating_field->getTypeId()>30&&$rating_field->getTypeId()<40){
      	//its a scale!
      	$c2= new Criteria();
        $c2->add(EnumItemPeer::ID, $type->getParentId());
        $type_parent = EnumItemPeer::doSelectOne($c2);
        $this->rating['type_id'] = $type_parent->getDescr(); 
        $this->rating['scale'] = $type->getDescr();  	
      }else{
      	$this->rating['type_id'] = $type->getDescr();
      }      
    }else{
      $this->form = new RatingFieldForm($rating_field);
      if($rating_field->getTypeId()>30&&$rating_field->getTypeId()<40){
      	$c= new Criteria();
        $c->add(EnumItemPeer::ID, $rating_field->getTypeId());
        $type = EnumItemPeer::doSelectOne($c);
      	$this->form->setValue('type_scale',$type->getParentId());
      	$this->form->setValue('scale',$rating_field->getTypeId());
      }
    }
    $this->rating_field_list = $this->getRatingCriteriaList();
    $this->setTemplate('list');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    $this->form = new RatingFieldForm($rating_field);

    $this->processForm($request, $this->form);
    $this->rating_field_list = $this->getRatingCriteriaList();
    $this->setTemplate('list');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();
    $err = false;

    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    if ($rating_field->hasRatingData()){
      $this->globalErrors = "Cannot delete criterion that already has rating data associated with it.";
      $err = true;
    } else {
      try {
        $rating_field->delete();
        $this->redirect('adminratingCriteria/list');
      } catch (Exception $e){
        $this->globalErrors = $e->getMessage();
        $err = true;
      }
    }
    
    if ($err){
      $this->rating_field_list = $this->getRatingCriteriaList();
      $this->scale_PID = skuleadminConst::RATING_SCALE_TYPES_PID;
      $this->form = new RatingFieldForm();
      $this->setTemplate('list');
    }
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      if($form->getValue('type_scale')==skuleadminConst::RATING_SCALE_TYPES_PID){
      	$form->getObject()->setTypeId($form->getValue('scale'));
      }else{
        $form->getObject()->setTypeId($form->getValue('type_scale'));
      }
      
      try {
        $rating_field = $form->save();
        $this->redirect('adminratingCriteria/edit?id='.$rating_field->getId());
      } catch (Exception $e){
        $this->globalErrors = $e->getMessage();
      }
    }
  }
  
  protected function getRatingCriteriaList(Criteria $c = null){
  	$pagenumber = 1;
    if($this->getRequestParameter('page')!==null){
    	$pagenumber = $this->getRequestParameter('page');
    }
  	$pager = new sfPropelPager('RatingField', skuleadminConst::RATINGCRITERIA_RECORDNUMBER);
  	if(!isset($c)){
  	 $c = new Criteria();
  	}
    $pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
 
  public function executeList(sfWebRequest $request)
  {
  	$this->scale_PID = skuleadminConst::RATING_SCALE_TYPES_PID;
    $this->rating_field_list = $this->getRatingCriteriaList();
    $this->form = new RatingFieldForm();
  }
}
