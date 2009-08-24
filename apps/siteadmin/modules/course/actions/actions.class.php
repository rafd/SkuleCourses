<?php

/**
 * course actions.
 *
 * @package    sf_sandbox
 * @subpackage course
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class courseActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
  	if(isset($_SESSION['update'])){
  		$this->successUpdate = $_SESSION['update'];
  		$_SESSION['update']=null;
  	}
  	$c = new Criteria();
  	$c->addSelectColumn(CoursePeer::ID);
    $this->course_list = CoursePeer::doSelect($c);
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new CourseForm();
    //beyond default
    $this->form2 = new CourseDetailForm();
    $this->form3 = new CourseDisciplineAssociationForm();
    
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new CourseForm();
    //beyond default
    $this->form2 = new CourseDetailForm(new CourseDetail());
    $this->form3 = new CourseDisciplineAssociationForm(new CourseDisciplineAssociation());
    $this->submitForm($request, $this->form, $this->form2, $this->form3);
    
    /*
    //processform logic
    {
      $this->form->bind($request->getParameter($this->form->getName()), $request->getFiles($this->form->getName()));
      $this->form2->bind($request->getParameter($this->form2->getName()), $request->getFiles($this->form2->getName()));
      $this->form3->bind($request->getParameter($this->form3->getName()), $request->getFiles($this->form3->getName()));
      $courseDetailObj = $this->form2->getObject()->setCourseId($this->form->getValue('id'));
      $courseDisAssocObj = $this->form3->getObject()->setCourseId($this->form->getValue('id'));
      
      if ($this->form->isValid()){
        if($this->form2->isValid()&&$this->form3->isValid()){
          $courseresult = $this->form->save();
          $courseDetailresult = $this->form2->save();
          $courseDisAssocres = $this->form3->save();
          $this->redirect('course/edit?id='.$courseresult->getId());
          //$this->redirect('course/index');
        }else{
          echo "Form failed to be submitted. There is an error in Course Detail that needs developers attention.";
        }
      }
    }
    */
    
    $this->setTemplate('new');
  }
  
  public function executeEdit(sfWebRequest $request)
  {
  	
    $this->forward404Unless($course = CoursePeer::retrieveByPk($request->getParameter('id')), sprintf('Object course does not exist (%s).', $request->getParameter('id')));
    $c = new Criteria();
  	$c->add(CourseDetailPeer::COURSE_ID,$request->getParameter('id'));
    $courseDetail = CourseDetailPeer::doSelectOne($c);
    $c2 = new Criteria();
  	$c2->add(CourseDetailPeer::COURSE_ID,$request->getParameter('id'));
    $courseDisAssoc = CourseDisciplineAssociationPeer::doSelectOne($c2);
    $values=array('edit'=>'true');
    $this->form = new CourseForm($course,$values);
    $this->form2 = new CourseDetailForm($courseDetail);
    $this->form3 = new CourseDisciplineAssociationForm($courseDisAssoc);
    
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
  	$c2->add(CourseDetailPeer::COURSE_ID,$request->getParameter('id'));
    $courseDisAssoc = CourseDisciplineAssociationPeer::doSelectOne($c2);
    
    if($courseDisAssoc!==null){
      $this->form3 = new CourseDisciplineAssociationForm($courseDisAssoc);
    }else{
      $this->form3 = new CourseDisciplineAssociationForm(new CourseDisciplineAssociation());
    }
    $this->submitForm($request, $this->form, $this->form2, $this->form3);
    
    /*
    //processform logic
    {
      $this->form->bind($request->getParameter($this->form->getName()), $request->getFiles($this->form->getName()));
      $this->form2->bind($request->getParameter($this->form2->getName()), $request->getFiles($this->form2->getName()));
      $this->form3->bind($request->getParameter($this->form3->getName()), $request->getFiles($this->form3->getName()));
      $courseDetailObj = $this->form2->getObject()->setCourseId($this->form->getValue('id'));
      $courseDisAssocObj = $this->form3->getObject()->setCourseId($this->form->getValue('id'));
      
      if ($this->form->isValid()){
        if($this->form2->isValid()&&$this->form3->isValid()){
          $courseresult = $this->form->save();
          $courseDetailresult = $this->form2->save();
          $courseDisAssocres = $this->form3->save();
          $this->redirect('course/edit?id='.$courseresult->getId());
          //$this->redirect('course/index');
        }else{
          echo "Form failed to be submitted. There is an error in Course Detail that needs developers attention.";
        }
      }
    }
    */
    //at this point the save has failed
    $c = new Criteria();
  	$c->addSelectColumn(CoursePeer::ID);
    $this->course_list = CoursePeer::doSelect($c);
    
    $this->setTemplate('editin');
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
    $this->redirect('course/index');
  }

  public function executeCancel(sfWebRequest $request){}
  
  public function executeEditin(sfWebRequest $request){
  	$c = new Criteria();
  	$c->addSelectColumn(CoursePeer::ID);
    $this->course_list = CoursePeer::doSelect($c);
  }
  
  public function executeEditlink(sfWebRequest $request){
  	$c = new Criteria();
  	$c->addSelectColumn(CoursePeer::ID);
    $this->course_list = CoursePeer::doSelect($c);
    
    $this->forward404Unless($course = CoursePeer::retrieveByPk($request->getParameter('id')), sprintf('Object course does not exist (%s).', $request->getParameter('id')));
    $c = new Criteria();
  	$c->add(CourseDetailPeer::COURSE_ID,$request->getParameter('id'));
    $courseDetail = CourseDetailPeer::doSelectOne($c);
    $c2 = new Criteria();
  	$c2->add(CourseDetailPeer::COURSE_ID,$request->getParameter('id'));
    $courseDisAssoc = CourseDisciplineAssociationPeer::doSelectOne($c2);
    $values=array('edit'=>'true');
    $this->form = new CourseForm($course,$values);
    $this->form2 = new CourseDetailForm($courseDetail);
    $this->form3 = new CourseDisciplineAssociationForm($courseDisAssoc);
  }
  //not in use
  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $course = $form->save();

      $this->redirect('course/edit?id='.$course->getId());
    }
  }
  
  protected function submitForm(sfWebRequest $request, sfForm $courseform, sfForm $courseDetailform, sfForm $courseDisAssocform)
  {
      $courseform->bind($request->getParameter($courseform->getName()), $request->getFiles($courseform->getName()));
      $courseDetailform->bind($request->getParameter($courseDetailform->getName()), $request->getFiles($courseDetailform->getName()));
      $courseDisAssocform->bind($request->getParameter($courseDisAssocform->getName()), $request->getFiles($courseDisAssocform->getName()));
      $courseDetailObj = $courseDetailform->getObject()->setCourseId($courseform->getValue('id'));
      $courseDisAssocObj = $courseDisAssocform->getObject()->setCourseId($courseform->getValue('id'));
      
      if ($courseform->isValid()){
        if($courseDetailform->isValid()&&$courseDisAssocform->isValid()){
          $courseresult = $courseform->save();
          $courseDetailresult = $courseDetailform->save();
          $courseDisAssocres = $courseDisAssocform->save();
          $_SESSION['update']= $courseresult->getId();
          $this->redirect('course/index');
          //$this->redirect('course/index');
        }
      }
  }
  
}
