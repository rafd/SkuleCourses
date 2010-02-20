<?php

/**
 * admincourse actions.
 *
 * @package    SkuleCourses
 * @subpackage adminuser
 * @author     Jimmy Lu
 */
class adminuserActions extends sfActions
{  
  public function executeIndex(sfWebRequest $request)
  {
  	if(isset($_SESSION['update'])){
  	  $this->successUpdate = $_SESSION['update'];
  	  $_SESSION['update']=null;
  	}
    $this->user_list = $this->getUserList();
    
    $this->form = new UserForm();    
  }
  
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->form = new UserForm();
    $this->submitForm($request, $this->form);
    
    $this->user_list = $this->getUserList();
    $this->setTemplate('index');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($user = UserPeer::retrieveByPk($request->getParameter('id')), sprintf('Object user does not exist (%s).', $request->getParameter('id')));
    
    $this->user_list = $this->getUserList();
    $values=array('edit'=>'true');
    $this->form = new UserForm($user,$values);
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $id = $request->getParameter('id');
    $this->forward404Unless($user = UserPeer::retrieveByPk($id), sprintf('Object user does not exist (%s).', $id));
    $values=array('edit'=>'true');
    $this->form = new UserForm($user,$values);
    
    // redirect address
    $this->redirectAddress = "adminuser/edit?id=".$id;
    
    $this->submitForm($request, $this->form);
    
    //at this point the save has failed
    $this->user_list = $this->getUserList();
    $this->setTemplate('index');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();
    $this->forward404Unless($user = UserPeer::retrieveByPk($request->getParameter('id')), sprintf('Object user does not exist (%s).', $request->getParameter('id')));
    
    try {
      $user->delete();
      
      $par = "";
      if ($request->hasParameter("page")){
        $par = "?page=".$request->getParameter("page");
      }

      $this->redirect('adminuser/index'.$par);
    } catch (Exception $e) {
      $this->globalErrors = $e->getMessage();
      $this->user_list = $this->getUserList();
      $values=array('edit'=>'true');
      $this->form = new UserForm($user,$values);
      $this->setTemplate("index");
    }
  }

  protected function getUserList(Criteria $c = null){
  	$pagenumber = 1;
    if($this->getRequestParameter('page')!==null){
      $pagenumber = $this->getRequestParameter('page');
    }
    
    $pager = new sfPropelPager('User', skuleadminConst::COURSE_RECORDNUMBER);
    if(!isset($c)){
  	 $c = new Criteria();
  	 $c->addAscendingOrderByColumn(UserPeer::USER_NAME);
  	}
  	$pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
  
  protected function submitForm(sfWebRequest $request, sfForm $userform)
  {
  	  $noerror = true;
      $userform->bind($request->getParameter($userform->getName()), $request->getFiles($userform->getName()));
      
      if ($userform->getObject()->isNew()){
        $userform->getObject()->setRegisteredOn(date("Y-m-d H:i:s"));
      }
      
      if ($userform->isValid()){
      	try {
      	  $user = $userform->save();
      	  
      	  // send out an email to the newly created user
      	  $msg = "Dear ".$user->getUserName().",\n\nYou have been registered with SkuleCourses (http://courses.skule.ca). Please note the following information:\n\n";
      	  $msg .= "Credential Level: ".helperFunctions::getUserType($user->getTypeId());
      	  $msg .= "\nPassword: ".$user->getPassword()."\n\nSkuleCourses Webmaster";
      	  helperFunctions::sendEmail(array($user->getEmail()),"SkuleCourses User Registration", $msg);
      	} catch (Exception $e) {
      	  $this->globalErrors = $e->getMessage();
      	  $noerror = false;
      	}

      }else{
      	$noerror = false;
      }
      
     if($noerror){
       $par="";
       if ($request->hasParameter("page")){
         $par = "page=".$request->getParameter("page");
       }
       $this->redirect('adminuser/edit?'.$par."&id=".$userform->getObject()->getUserName());
     }
  }
  
}
