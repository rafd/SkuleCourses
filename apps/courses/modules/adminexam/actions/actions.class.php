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
    
    $year = $this->form->getObject()->getYear();
    $semester = substr($year, -1, 1);
    $year = substr($year, 0, 4);
    $values=array(
      'edit'=>'true',
      'courseid'=>$exam->getCourseId(), 
      'semester'=>$semester,
      'examyear'=>$year,
    );
    $this->form = new ExamForm($exam,$values);
    
    
    $this->uploadpath = skuleadminConst::INDIVIDUALEXAMFOLDER.$year.'/'; 
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    
    $values=array('edit'=>'true','courseid'=>$exam->getCourseId());
    $this->form = new ExamForm($exam,$values);
    
    $year = $this->form->getObject()->getYear();
    $semester = substr($year, -1, 1);
    $year = substr($year, 0, 4);
    $values=array(
      'edit'=>'true',
      'courseid'=>$exam->getCourseId(), 
      'semester'=>$semester, 
      'examyear'=>$year,
    );
    $this->form = new ExamForm($exam,$values);
    
    $this->processForm($request, $this->form);
    
    $this->exam_list = $this->getExamList();
    $this->uploadpath = skuleadminConst::INDIVIDUALEXAMFOLDER.$year.'/'; 
    $this->setTemplate('index');
  }
  
  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    $myfile = $exam->getFilePath();
    $this->delExam($myfile);
    $exam->delete();

    $this->redirect('adminexam/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $file='';
      $year = $form->getValue('years');
      $semester = $form->getValue('semester');
      $year = substr($year, 0, 4);
        
      $form->getObject()->setYear($year.$semester);
      if($form->getValue('file_path')!==null || $form->getValue('file_path')!='' ){
        $myfile = $this->form->getObject()->getFilePath();
        
        if($myfile !== null || $myfile != ''){
        	//previously there was something there
    	  $this->delExam($myfile);
        }
    	
      	$file=$form->getValue('file_path');
        
        $dateTime = new DateTime('now');
        $filename = ''.$dateTime->format(skuleadminConst::EXAM_FILE_DATEFORMAT).'';
        
        $extension = $file->getOriginalExtension();
        $path = sfConfig::get('sf_web_dir').skuleadminConst::INDIVIDUALEXAMFOLDER.$year.'/';
        
        if($file->save($path.$filename.$extension)){
      	  $exam = $form->save();
      	  $this->redirect('adminexam/edit?id='.$exam->getId());
        }else{
      	  $this->redirect('adminexam/failederr?msg=save');
        }
      }else{
      	$exam = $form->save();
      	$this->redirect('adminexam/edit?id='.$exam->getId());
      }
      
    }
  }
  
  public function executeFailederr(sfWebRequest $request){
  	$this->msg = $request->getParameter('msg');
  }
  
  protected function getExamList(Criteria $c = null){
    if(isset($c)){
      return ExamPeer::doSelect($c); 	
    }else{
      return ExamPeer::doSelect(new Criteria());
    }
  }
  
  protected function delExam($myfile){
  	if(!unlink($myfile)){
      $this->redirect('adminexam/failederr?msg=unlink');
  	}
  }
 
}
