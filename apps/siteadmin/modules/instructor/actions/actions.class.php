<?php

/**
 * instructor actions.
 *
 * @package    sf_sandbox
 * @subpackage instructor
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class instructorActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->instructor_list = InstructorPeer::doSelect(new Criteria());
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new InstructorForm();
    //beyong default
    $this->form2 = new InstructorDetailForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new InstructorForm();
    //default
    $this->form2 = new InstructorDetailForm(new InstructorDetail());
    
    //$this->processForm($request, $this->form);
    //processform logic
    {
      $this->form->bind($request->getParameter($this->form->getName()), $request->getFiles($this->form->getName()));
      $this->form2->bind($request->getParameter($this->form2->getName()), $request->getFiles($this->form2->getName()));
      //$courseDetailObj = $this->form2->getObject()->setInstructorId($this->form->getValue('id'));
      if ($this->form2->isValid()){
        if($this->form->isValid()){
          $instructresult = $this->form->save();
          $this->form2->getObject()->setInstructorId($instructresult->getId());
          $instructdetailresult = $this->form2->save();
          $this->redirect('instructor/edit?id='.$instructresult->getId());
          //$this->redirect('course/index');
        }else{
          echo "Form failed to be submitted. There is an error in Instructor Detail that needs developers attention.";
        }
      }
    }
    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
    $this->form = new InstructorForm($instructor);
    $c = new Criteria();
  	$c->add(InstructorDetailPeer::INSTRUCTOR_ID,$request->getParameter('id'));
  	$instructDetail = InstructorDetailPeer::doSelectOne($c);
  	
  	$this->form2 = new InstructorDetailForm($instructDetail);
  	
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
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
  //processform logic
    {
      $this->form->bind($request->getParameter($this->form->getName()), $request->getFiles($this->form->getName()));
      $this->form2->bind($request->getParameter($this->form2->getName()), $request->getFiles($this->form2->getName()));
      //$courseDetailObj = $this->form2->getObject()->setInstructorId($this->form->getValue('id'));
      if ($this->form2->isValid()){
        if($this->form->isValid()){
          $instructresult = $this->form->save();
          $this->form2->getObject()->setInstructorId($instructresult->getId());
          $instructdetailresult = $this->form2->save();
          $this->redirect('instructor/edit?id='.$instructresult->getId());
          //$this->redirect('course/index');
        }else{
          echo "Form failed to be submitted. There is an error in Instructor Detail that needs developers attention.";
        }
      }
    }

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
    $instructor->delete();

    $this->redirect('instructor/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $instructor = $form->save();

      $this->redirect('instructor/edit?id='.$instructor->getId());
    }
  }
}
