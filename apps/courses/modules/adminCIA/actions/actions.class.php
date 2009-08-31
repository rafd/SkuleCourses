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
    $this->course_instructor_association_list = CourseInstructorAssociationPeer::doSelect(new Criteria());
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new CourseInstructorAssociationForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new CourseInstructorAssociationForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($course_instructor_association = CourseInstructorAssociationPeer::retrieveByPk($request->getParameter('id')), sprintf('Object course_instructor_association does not exist (%s).', $request->getParameter('id')));
    $this->form = new CourseInstructorAssociationForm($course_instructor_association);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($course_instructor_association = CourseInstructorAssociationPeer::retrieveByPk($request->getParameter('id')), sprintf('Object course_instructor_association does not exist (%s).', $request->getParameter('id')));
    $this->form = new CourseInstructorAssociationForm($course_instructor_association);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
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
      $course_instructor_association = $form->save();

      $this->redirect('adminCIA/edit?id='.$course_instructor_association->getId());
    }
  }
  
  public function executeList(sfWebRequest $request)
  {
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
  	$this->course_instructor_association_list = CourseInstructorAssociationPeer::doSelect($c);
  }
}
