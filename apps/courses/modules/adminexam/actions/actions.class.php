<?php

/**
 * exam actions.
 *
 * @package    sf_sandbox
 * @subpackage exam
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class adminexamActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->exam_list = $this->getExamList();
    $this->form = new ExamForm(new Exam());
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new ExamForm(new Exam());
    
    $this->processForm($request, $this->form);
    $this->exam_list = $this->getExamList();
    $this->setTemplate('index');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    $this->exam_list = $this->getExamList();
    
    $values=array('edit'=>'true','courseid'=>$exam->getCourseId());
    $this->form = new ExamForm($exam,$values);
    $this->uploaddir = skuleadminConst::BASE_UPLOAD_FOLDER;
    
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    
    $values=array('edit'=>'true','courseid'=>$exam->getCourseId());
    $this->form = new ExamForm($exam,$values);
    $this->uploaddir = skuleadminConst::BASE_UPLOAD_FOLDER;
    $this->processForm($request, $this->form);
    $this->exam_list = $this->getExamList();
    $this->setTemplate('index');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    $exam->delete();

    $this->redirect('adminexam/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $exam = $form->save();

      $this->redirect('adminexam/edit?id='.$exam->getId());
    }
  }
  
  protected function getExamList(Criteria $c = null){
    if(isset($c)){
      return ExamPeer::doSelect($c); 	
    }else{
      return ExamPeer::doSelect(new Criteria());
    }
  }
}
