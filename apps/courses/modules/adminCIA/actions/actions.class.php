<?php

/**
 * adminCIA actions.
 *
 * @package    sf_sandbox
 * @subpackage adminCIA
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class adminCIAActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
  	$this->course_instructor_association_list = $this->getCIAlist($request);
  	
  	$values=array('instructor'=>$request->getParameter('instructor'),'course'=>$request->getParameter('course'));
  	$this->form = new CourseInstructorAssociationForm(new CourseInstructorAssociation(),$values);
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));
    
    $values=array('instructor'=>$request->getParameter('instructor'),'course'=>$request->getParameter('course'));
    $this->form = new CourseInstructorAssociationForm(new CourseInstructorAssociation(),$values);
    
    $this->processForm($request, $this->form);
    $this->course_instructor_association_list = $this->getCIAlist($request);
    $this->setTemplate('index');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($course_instructor_association = CourseInstructorAssociationPeer::retrieveByPk($request->getParameter('id')), sprintf('Object course_instructor_association does not exist (%s).', $request->getParameter('id')));
    
    
    
    $year = $course_instructor_association->getYear();
    $semester = substr($year, -1, 1);
    $year = substr($year, 0, 4);
    $values=array(
      'edit'=>'true',
      'course'=>$course_instructor_association->getCourseId(),
      'instructor'=> $course_instructor_association->getInstructorId(),
      'semester'=>$semester, 
      'year'=>$year,
    );
    $this->form = new ExamForm($exam,$values);
    
    
    $this->form = new CourseInstructorAssociationForm($course_instructor_association, $values);
    $this->course_instructor_association_list = $this->getCIAlist($request);
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($course_instructor_association = CourseInstructorAssociationPeer::retrieveByPk($request->getParameter('id')), sprintf('Object course_instructor_association does not exist (%s).', $request->getParameter('id')));
    
    $year = $course_instructor_association->getYear();
    $semester = substr($year, -1, 1);
    $year = substr($year, 0, 4);
    $values=array(
      'edit'=>'true',
      'course'=>$course_instructor_association->getCourseId(),
      'instructor'=> $course_instructor_association->getInstructorId(),
      'semester'=>$semester, 
      'year'=>$year,
    );
    $this->form = new CourseInstructorAssociationForm($course_instructor_association, $values);
    
    $this->processForm($request, $this->form);
    $this->course_instructor_association_list = $this->getCIAlist($request);
    $this->setTemplate('index');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($course_instructor_association = CourseInstructorAssociationPeer::retrieveByPk($request->getParameter('id')), sprintf('Object course_instructor_association does not exist (%s).', $request->getParameter('id')));
    $course_instructor_association->delete();

    $this->redirect('adminCIA/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $year = $form->getValue('years');
      $semester = $form->getValue('semester');
      $year = substr($year, 0, 4);
        
      $form->getObject()->setYear($year.$semester);
      
      $course_instructor_association = $form->save();

      $this->redirect('adminCIA/edit?id='.$course_instructor_association->getId());
    }
  }
  
  protected function getCIAlist(sfWebRequest $request){
  	$c = new Criteria();
  	if($request->getParameter('course')!==null || $request->getParameter('course')!=''){
  	  $c->add(CourseInstructorAssociationPeer::COURSE_ID,$request->getParameter('course'));
  	  $this->course_id = $request->getParameter('course'); 
  	}
  	//check for instructor info
  	if($request->getParameter('instructor')!==null || $request->getParameter('instructor')!=''){
  	  $c->add(CourseInstructorAssociationPeer::INSTRUCTOR_ID,$request->getParameter('instructor'));
  	  $this->instruct_id = $request->getParameter('instructor');	
  	}
  	return CourseInstructorAssociationPeer::doSelect($c);
  }
}
