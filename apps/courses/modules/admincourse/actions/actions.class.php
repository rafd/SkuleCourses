<?php

/**
 * admincourse actions.
 *
 * @package    sf_sandbox
 * @subpackage admincourse
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class admincourseActions extends sfActions
{
  protected $noerrDetails = false;
  //protected $noerrDisAssoc = false;
  
  public function executeIndex(sfWebRequest $request)
  {
  	if(isset($_SESSION['update'])){
  	  $this->successUpdate = $_SESSION['update'];
  	  $_SESSION['update']=null;
  	}
  	$c = new Criteria();
  	//$c->addSelectColumn(CoursePeer::ID);
    $this->course_list = $this->getCourselist($c);
    
    $this->form = new CourseForm();
    $this->form2 = new CourseDetailForm();
    //$this->form3 = new CourseDisciplineAssociationForm();
    
  }
  
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
    
    $submenu = new subMenu(subMenuOptions::MAINTENANCE_COURSE);
    $this->submenu = $submenu->get();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->form = new CourseForm();
    //beyond default
    $this->form2 = new CourseDetailForm(new CourseDetail());
    //$this->form3 = new CourseDisciplineAssociationForm(new CourseDisciplineAssociation());
    //$this->submitForm($request, $this->form, $this->form2, $this->form3);
    $this->submitForm($request, $this->form, $this->form2);
    
    //$this->omitdetailerror = $this->noerrDetails;
    //$this->omitAssocerror = $this->noerrDisAssoc;
    
    $c = new Criteria();
  	//$c->addSelectColumn(CoursePeer::ID);
    $this->course_list = $this->getCourselist($c);
    $this->setTemplate('index');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($course = CoursePeer::retrieveByPk($request->getParameter('id')), sprintf('Object course does not exist (%s).', $request->getParameter('id')));
    
    $cr = new Criteria();
  	//$c->addSelectColumn(CoursePeer::ID);
    $this->course_list = $this->getCourselist($cr);
    $this->courseDetail = CourseDetailPeer::getObjectForCourseId($request->getParameter('id'));

    /*$c2 = new Criteria();
  	$c2->add(CourseDisciplineAssociationPeer::COURSE_ID,$request->getParameter('id'));
    $courseDisAssoc = CourseDisciplineAssociationPeer::doSelectOne($c2);*/
    $values=array('edit'=>'true');
    $this->form = new CourseForm($course,$values);
    
    if($this->courseDetail!==null){
      $this->form2 = new CourseDetailForm($this->courseDetail);
    }else{
      $this->form2 = new CourseDetailForm(new CourseDetail());
    }
    /*if($courseDisAssoc!==null){
      $this->form3 = new CourseDisciplineAssociationForm($courseDisAssoc);
    }else{
      $this->form3 = new CourseDisciplineAssociationForm(new CourseDisciplineAssociation());
    }*/
    
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $id = $request->getParameter('id');
    $this->forward404Unless($course = CoursePeer::retrieveByPk($id), sprintf('Object course does not exist (%s).', $id));
    $values=array('edit'=>'true');
    $this->form = new CourseForm($course,$values);
    
    // redirect address
    $this->redirectAddress = "admincourse/edit?id=".$id;
    
    $c = new Criteria();
  	$c->add(CourseDetailPeer::COURSE_ID,$id);
    $this->courseDetail = CourseDetailPeer::doSelectOne($c);
    
    if($this->courseDetail!==null){
      $this->form2 = new CourseDetailForm($this->courseDetail);
    }else{
      $this->form2 = new CourseDetailForm(new CourseDetail());
    }
    
    /*$c2 = new Criteria();
  	$c2->add(CourseDisciplineAssociationPeer::COURSE_ID,$request->getParameter('id'));
    $courseDisAssoc = CourseDisciplineAssociationPeer::doSelectOne($c2);
    
    if($courseDisAssoc!==null){
      $this->form3 = new CourseDisciplineAssociationForm($courseDisAssoc);
    }else{
      $this->form3 = new CourseDisciplineAssociationForm(new CourseDisciplineAssociation());
    }*/
    $this->submitForm($request, $this->form, $this->form2);
    
    //at this point the save has failed
    $c = new Criteria();
  	//$c->addSelectColumn(CoursePeer::ID);
    $this->course_list = $this->getCourselist($c);
    $this->setTemplate('index');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();
    $this->forward404Unless($course = CoursePeer::retrieveByPk($request->getParameter('id')), sprintf('Object course does not exist (%s).', $request->getParameter('id')));
    
    try {
      $discipline = $course->getCourseDisciplineAssociations();
      if ($discipline !== null)
      {
        //deleting discipline dependency
        foreach ($discipline as $dis)
          $dis->delete();
      }
      $instructorassoc = null;
      $instructorassoc = $course->getCourseInstructorAssociations();
      if ($instructorassoc !== null)
      {
        //deleting instructor dependency
        foreach ($instructorassoc as $instruct)
          $instruct->delete();
      }
      // finally, delete the course obj
      $course->delete();
      
      if ($request->hasParameter("page")){
        $par = "?page=".$request->getParameter("page");
      }

      $this->redirect('admincourse/index'.$par);
    } catch (Exception $e) {
      $this->globalErrors = $e->getMessage();
      
      $this->course_list = $this->getCourselist(new Criteria());
      $this->courseDetail = CourseDetailPeer::getObjectForCourseId($course->getId());

      $values=array('edit'=>'true');
      $this->form = new CourseForm($course,$values);
    
      if($this->courseDetail!==null){
        $this->form2 = new CourseDetailForm($this->courseDetail);
      }else{
        $this->form2 = new CourseDetailForm(new CourseDetail());
      }
    }
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $course = $form->save();

      $this->redirect('admincourse/edit?id='.$course->getId());
    }
  }

  protected function getCourselist(Criteria $c = null){
  	$pagenumber = 1;
    if($this->getRequestParameter('page')!==null){
      $pagenumber = $this->getRequestParameter('page');
    }
    
    $pager = new sfPropelPager('Course', skuleadminConst::COURSE_RECORDNUMBER);
    if(!isset($c)){
  	 $c = new Criteria();
  	 $c->addAscendingOrderByColumn(CoursePeer::ID);
  	}
  	$pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
  
  protected function submitForm(sfWebRequest $request, sfForm $courseform, sfForm $courseDetailform)
  {
  	$noerror = true;
      $courseform->bind($request->getParameter($courseform->getName()), $request->getFiles($courseform->getName()));
      
      //grab the course id
        if($courseform->getObject()->getId()===null || $courseform->getObject()->getId()=='')
        {
          $courseid= $courseform->getValue('dept_id').$courseform->getValue('code').$courseform->getValue('credit');
          $courseform->getObject()->setId($courseid);
        }else{
          $courseid=$courseform->getObject()->getId();
        }
      
      $courseDetailform->bind($request->getParameter($courseDetailform->getName()), $request->getFiles($courseDetailform->getName()));
      //$courseDisAssocform->bind($request->getParameter($courseDisAssocform->getName()), $request->getFiles($courseDisAssocform->getName()));
      
      $courseDetailObj = $courseDetailform->getObject()->setCourseId($courseid);
      //$courseDisAssocObj = $courseDisAssocform->getObject()->setCourseId($courseid);
      
      if ($courseform->isValid()){
      	try {
      	  $courseresult = $courseform->save();
      	  $noerror = $this->parseDetails($courseDetailform, $courseform->getObject());
      	} catch (Exception $e) {
      	  $this->globalErrors = $e->getMessage();
      	  $noerror = false;
      	}

      	//$noerror = $this->noerrDetails;
        /*$this->noerrDisAssoc = $this->parseDisAssoc($courseDisAssocform, $courseform->getObject());
        if($this->noerrDetails ==false || $this->noerrDisAssoc ==false){
        	$noerror = false;
        }*/
      }else{
      	$noerror = false;
      }
      
     if($noerror){
       $this->redirect('admincourse/edit?id='.$courseresult->getId());
     }
  }
  
  protected function parseDetails(sfForm $courseDetailform, Course $course){
    if ($courseDetailform['hasDetail']->getValue() == '1'){
      if ($courseDetailform->isValid()){
        // save the course_detail object
        $detailDescr = $courseDetailform['detail_descr']->getValue();
        $firstOffered = $courseDetailform["first_offered"]->getValue();
        $lastOffered = $courseDetailform["last_offered"]->getValue();
        
        $arr = $course->getCourseDetails();
        if ($arr != null && count($arr)==1){
          // replace the existing object with the new one
          $detailObj = $arr[0];
        } elseif ($arr !== null && count($arr)>1){
          //TODO: multiple courseDetail objects.
          throw new Exception("Multiple course detail objects found.");
        } else {
          // insert a new object
          $detailObj = new CourseDetail();
          $detailObj->setCourseId($course->getId());
        }
        
        $detailObj->setDetailDescr($detailDescr);
        $detailObj->setFirstOffered($firstOffered);
        $detailObj->setLastOffered($lastOffered);
        $detailObj->save();
        
        return true;
        
      } else {
        return false;
      }
    } else {
      $this->omitdetailerr = true;
      // delete the course_detail object if it exists
      $arr = $course->getCourseDetails();
	  if($arr !== null){
	    foreach ($arr as $detailObj) $detailObj->delete();
	  }
      return true;
    }
  }
}
