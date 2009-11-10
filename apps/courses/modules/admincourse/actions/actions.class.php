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
  protected $noerrDisAssoc = false;
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
    $this->form3 = new CourseDisciplineAssociationForm();
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
    $this->form3 = new CourseDisciplineAssociationForm(new CourseDisciplineAssociation());
    $this->submitForm($request, $this->form, $this->form2, $this->form3);
    
    $this->omitdetailerror = $this->noerrDetails;
    $this->omitAssocerror = $this->noerrDetails;
    
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
    
    $c = new Criteria();
  	$c->add(CourseDetailPeer::COURSE_ID,$request->getParameter('id'));
    $courseDetail = CourseDetailPeer::doSelectOne($c);
    $c2 = new Criteria();
  	$c2->add(CourseDisciplineAssociationPeer::COURSE_ID,$request->getParameter('id'));
    $courseDisAssoc = CourseDisciplineAssociationPeer::doSelectOne($c2);
    $values=array('edit'=>'true');
    $this->form = new CourseForm($course,$values);
    if($courseDetail!==null){
      $this->form2 = new CourseDetailForm($courseDetail);
    }else{
      $this->form2 = new CourseDetailForm(new CourseDetail());
    }
    if($courseDisAssoc!==null){
      $this->form3 = new CourseDisciplineAssociationForm($courseDisAssoc);
    }else{
      $this->form3 = new CourseDisciplineAssociationForm(new CourseDisciplineAssociation());
    }
    
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($course = CoursePeer::retrieveByPk($request->getParameter('id')), sprintf('Object course does not exist (%s).', $request->getParameter('id')));
    $values=array('edit'=>'true');
    $this->form = new CourseForm($course,$values);
   
    $c = new Criteria();
  	$c->add(CourseDetailPeer::COURSE_ID,$request->getParameter('id'));
    $courseDetail = CourseDetailPeer::doSelectOne($c);
    
    if($courseDetail!==null){
      $this->form2 = new CourseDetailForm($courseDetail);
    }else{
      $this->form2 = new CourseDetailForm(new CourseDetail());
    }
    
    $c2 = new Criteria();
  	$c2->add(CourseDisciplineAssociationPeer::COURSE_ID,$request->getParameter('id'));
    $courseDisAssoc = CourseDisciplineAssociationPeer::doSelectOne($c2);
    
    if($courseDisAssoc!==null){
      $this->form3 = new CourseDisciplineAssociationForm($courseDisAssoc);
    }else{
      $this->form3 = new CourseDisciplineAssociationForm(new CourseDisciplineAssociation());
    }
    $this->submitForm($request, $this->form, $this->form2, $this->form3);
    
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
    $discipline = null;
    $discipline = $course->getCourseDisciplineAssociations();
    if ($discipline !== null)
    {
      //deleting discipline dependency
      foreach ($discipline as $dis):
        $dis->delete();
      endforeach;
    }
    $instructorassoc = null;
    $instructorassoc = $course->getCourseInstructorAssociations();
    if ($instructorassoc !== null)
    {
      //deleting instructor dependency
      foreach ($instructorassoc as $instruct):
        $instruct->delete();
      endforeach;
    }
    $course->delete();
    
    if ($request->hasParameter("page")){
      $par = "?page=".$request->getParameter("page");
    }

    $this->redirect('admincourse/index'.$par);
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
  
  protected function submitForm(sfWebRequest $request, sfForm $courseform, sfForm $courseDetailform, sfForm $courseDisAssocform)
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
      $courseDisAssocform->bind($request->getParameter($courseDisAssocform->getName()), $request->getFiles($courseDisAssocform->getName()));
      
      $courseDetailObj = $courseDetailform->getObject()->setCourseId($courseid);
      $courseDisAssocObj = $courseDisAssocform->getObject()->setCourseId($courseid);
      
      if ($courseform->isValid()){
      	//****need to check that the id doesn't exist in database or redirect to the object
      	$courseresult = $courseform->save();
      	
      	$this->noerrDetails = $this->parseDetails($courseDetailform, $courseform->getObject());
        $this->noerrDisAssoc = $this->parseDisAssoc($courseDisAssocform, $courseform->getObject());
        if($this->noerrDetails ==false || $this->noerrDisAssoc ==false){
        	$noerror = false;
        }
      }else{
      	$noerror = false;
      }
      
     if($noerror){
          $this->redirect('admincourse/edit?id='.$courseresult->getId());
     }
  }
  
  protected function parseDetails(sfForm $courseDetailform, Course $course){
        if($courseDetailform->isValid()){
        	$courseDetailformres = $courseDetailform->save();
        	return true;
        }else{
          //not a valid form why?
          if($courseDetailform->getValue('detail_descr')==''||$courseDetailform->getValue('detail_descr')===null){
          //check to delete
	          $coursedetailobj = $course->getCourseDetails();
	          if($coursedetailobj !== null){
	          	foreach ($coursedetailobj as $detail):
                  $detail->delete();
               endforeach;
               return true;
	          
	          }
	      }
          //return false;
        }
        return false;
  }
  
  protected function parseDisAssoc(sfForm $courseDisAssocform, Course $course){
        if(!$courseDisAssocform->isValid()){
          if($courseDisAssocform->getValue('year_of_study')==0 || $courseDisAssocform->getValue('year_of_study')=== null 
        || $courseDisAssocform->getValue('year_of_study')==''){
            //check for deletion
            $courseDisobj = $course->getCourseDisciplineAssociations();
            if ($courseDisobj !== null)
            {
               //deleting discipline dependency
               foreach ($courseDisobj as $dis):
                  $dis->delete();
               endforeach;
               return true;
            }
          }
          
        }else{
           $courseDisAssocres = $courseDisAssocform->save();
            return true;	
        }
        return false;
  }
}
