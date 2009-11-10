<?php

/**
 * admininstructor actions.
 *
 * @package    SkuleCourses
 * @subpackage admininstructor
 * @author     Jason Ko, Jimmy Lu
 */
class admininstructorActions extends sfActions
{
   
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
    
    $submenu = new subMenu(subMenuOptions::MAINTENANCE_INSTRUCTOR);
    $this->submenu = $submenu->get();
  }
	
  public function executeIndex(sfWebRequest $request)
  {
    $this->instructor_list = $this->getInstructorList();
    
    $this->form = new InstructorForm();
    $this->form2 = new InstructorDetailForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));
    
    $this->form = new InstructorForm();
    //default
    $this->form2 = new InstructorDetailForm(new InstructorDetail());
    
    //$this->processForm($request, $this->form);
    $this->submitForm($request, $this->form, $this->form2);
   
    	$this->omiterror = true;		
    
    $this->instructor_list = $this->getInstructorList();
    $this->setTemplate('index');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
    $this->form = new InstructorForm($instructor);
    $c = new Criteria();
  	$c->add(InstructorDetailPeer::INSTRUCTOR_ID,$request->getParameter('id'));
  	$instructDetail = InstructorDetailPeer::doSelectOne($c);
  	
  	$this->form2 = new InstructorDetailForm($instructDetail);
  	$this->instructor_list = $this->getInstructorList();
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
    $this->form = new InstructorForm($instructor);

    $this->form = new InstructorForm($instructor);
    
    $c = new Criteria();
  	$c->add(InstructorDetailPeer::INSTRUCTOR_ID,$request->getParameter('id'));
  	$instructDetail = InstructorDetailPeer::doSelectOne($c);
    
    if($instructDetail!==null){
      $this->form2 = new InstructorDetailForm($instructDetail);
    }else{
      $this->form2 = new InstructorDetailForm(new InstructorDetail());
    }
    //$this->processForm($request, $this->form);
    $this->submitForm($request, $this->form, $this->form2);
    $this->instructor_list = $this->getInstructorList();
    $this->setTemplate('index');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
    $instructor->delete();
    
    if ($request->hasParameter("page")){
      $par = "?page=".$request->getParameter("page");
    }

    $this->redirect('admininstructor/index'.$par);
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $instructor = $form->save();

      $this->redirect('admininstructor/edit?id='.$instructor->getId());
    }
  }
  
  protected function submitForm(sfWebRequest $request, sfForm $form, sfForm $form2){
  //processform logic
      $submit = true;
      $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
      //FIXME form2
      //$form2->bind($request->getParameter($form2->getName()), $request->getFiles($form2->getName()));
      
      if ($form->isValid()){
      	$instructresult = $form->save();
        /*$form2->getObject()->setInstructorId($instructresult->getId());
        
        if($form2->getValue('descr') !== null && $form2->getValue('descr')!='' ){
        	if($form2->isValid()){
        	  $instructdetailresult = $form2->save();
        	}else{
        	  $submit = false;
        	}
        }else{
        	//its form DESCR null or empty, if previous exists then delete it
        	$c_detail = new Criteria();
        	$c_detail->add(InstructorDetailPeer::INSTRUCTOR_ID,$instructresult->getId());
        	$detail = InstructorDetailPeer::doSelectOne($c_detail);
        	if($detail!=null){
        	  $detail->delete();
        	}
        	
        }*/
      }else{
      	$submit = false;
      }
      
      if($submit){
        $page = ($request->hasParameter("page")? "&page=".$request->getParameter("page"):"");
      	$this->redirect('admininstructor/edit?id='.$instructresult->getId().$page);
      }
    
  }
  
  protected function getInstructorList(Criteria $c = null){
  	$pagenumber = 1;
    if($this->hasRequestParameter('page')){
      $pagenumber = $this->getRequestParameter('page');
    }
  	$pager = new sfPropelPager('Instructor', skuleadminConst::INSTRUCTOR_RECORDNUMBER);
  	if(!isset($c)){
  	  $c = new Criteria();
  	  $c->addAscendingOrderByColumn(InstructorPeer::LAST_NAME);
  	}
    $pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
}
