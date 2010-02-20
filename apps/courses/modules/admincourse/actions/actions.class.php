<?php

/**
 * admincourse actions.
 *
 * @package    SkuleCourses
 * @subpackage admincourse
 * @author     Jimmy Lu, Jason Ko
 */
class admincourseActions extends sfActions
{
  protected $noerrDetails = false;
  
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
    
  }
  
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->form = new CourseForm();
    $this->form2 = new CourseDetailForm(new CourseDetail());
    $this->submitForm($request, $this->form, $this->form2);
    
    //$this->omitdetailerror = $this->noerrDetails;
    
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

    $values=array('edit'=>'true');
    $this->form = new CourseForm($course,$values);
    
    if($this->courseDetail!==null){
      $this->form2 = new CourseDetailForm($this->courseDetail);
    }else{
      $this->form2 = new CourseDetailForm(new CourseDetail());
    }
    
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
      
      $par = "";
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
      
      $this->setTemplate('index');
    }
  }
  
  /**
   * Return a list of courses in <li></li> format
   * Must be called in an Ajax request
   * Requires the existence of addToSelected javascript method on client
   */
  public function executeAjaxSearch(sfWebRequest $request)
  {
    if (!$request->isXmlHttpRequest()) $this->forward404();
    if (!$request->hasParameter("ajax_query")) throw new Exception("ajax_query does not exist");
    
    // use fuzzySearch class to get a list of courses matching the query
    $query = $request->getParameter("ajax_query");
    $fuzzySearch = new fuzzySearch();
    try {
      $fuzzySearch->query($query);
      $courseList = $fuzzySearch->getCourseList();
    } catch (Exception $e){
      echo "<li>No match found</li>";
      exit();
    }
    
    if (!isset($courseList) || count($courseList) == 0) {
      echo "<li>No match found</li>";
    } else {
      foreach ($courseList as $course){
        echo "<li><a style='cursor:pointer' onclick='addToSelected(\"".$course->getId()." (".$course->getDescr().")"."\")'>".$course->getId()." (".$course->getDescr().")</a></li>";
      }
    }
    
    return sfView::NONE;
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
      
      $courseDetailObj = $courseDetailform->getObject()->setCourseId($courseid);
      
      if ($courseform->isValid()){
      	try {
      	  $courseresult = $courseform->save();
      	  $noerror = $this->parseDetails($courseDetailform, $courseform->getObject());
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
       $this->redirect('admincourse/edit?'.$par."&id=".$courseform->getObject()->getId());
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
          //FIXME: multiple courseDetail objects.
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
