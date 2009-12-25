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
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
    
    $submenu = new subMenu(subMenuOptions::MAINTENANCE_EXAM);
    $this->submenu = $submenu->get();
    $this->earliestYear = skuleadminConst::EARLIEST_YEAR;
    $this->date = getdate();
  }
  
  public function executeIndex(sfWebRequest $request)
  {
  }
  
  public function executeCustom(sfWebRequest $request)
  {
    $this->form = new ExamForm();
    
    if ($request->hasParameter("course") && $request->hasParameter("year") && $request->hasParameter("term")){
      // find the course and the semester in question
      $courseId = $request->getParameter("course");
      $fuzSearch = new fuzzySearch();
      try {
        $fuzSearch->query($courseId);
        $_res = $fuzSearch->getCourseList();
      if ($_res === null || count($_res)!=1) return sfView::SUCCESS;
      } catch (Exception $e){
        return sfView::SUCCESS;
      }
      
      $this->courseId = $_res[0]->getId();
      $rawyear = $request->getParameter("year");
      $term = $request->getParameter("term");
      $this->year = $request->getParameter("year").$request->getParameter("term");
      
      if ($request->hasParameter("id")){
        $this->redirect("adminexam/edit?id=".$request->getParameter("id")."&course=".$this->courseId."&year=".$year."&term=".$term);
      }
      
      $this->examList = $this->getExamList($this->courseId, $this->year);
    }
  }
  
  public function executeBulk(sfWebRequest $request)
  {
    
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new ExamForm(new Exam());
    $this->processForm($request, $this->form);
    
    $this->examList = $this->getExamList();
    $this->setTemplate('custom');
  }

  public function executeEdit(sfWebRequest $request)
  {
    if (!$request->hasParameter("course") || !$request->hasParameter("year") || !$request->hasParameter("term")) $this->forward404("parameters incomplete");
    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    
    $this->courseId = $request->getParameter("course");
    $this->year = $request->getParameter("year").$request->getParameter("term");
    
    if ($exam->getCourseId() != $this->courseId) $this->forward404("course does not match");
    
    $this->examList = $this->getExamList($this->courseId, $this->year);
    
    $values=array('edit'=>'true','courseid'=>$exam->getCourseId());
    $this->form = new ExamForm($exam,$values);
    
    $this->uploadpath = skuleadminConst::INDIVIDUALEXAMFOLDER.$exam->getYear().'/'; 
    $this->setTemplate('custom');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($request->hasParameter("course") && $request->hasParameter("year") && $request->hasParameter("term"));
    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    
    $this->courseId = $request->getParameter("course");
    $this->year = $request->getParameter("year").$request->getParameter("term"); 
    $this->forward404Unless($exam->getCourseId() == $this->courseId);
    
    $values=array('edit'=>'true','courseid'=>$exam->getCourseId());
    $this->form = new ExamForm($exam,$values);
    
    $this->processForm($request, $this->form);
    
    // if we have reached this point, save has failed
    $this->examList = $this->getExamList($this->courseId, $this->year);
    
    $this->uploadpath = skuleadminConst::INDIVIDUALEXAMFOLDER.$year.'/'; 
    $this->setTemplate('custom');
  }
  
  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    $myfile = $exam->getFilePath();
    $this->delExam($myfile);
    $exam->delete();

    $this->redirect('adminexam/custom');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));

      $file=$request->getFiles($form->getName()."[file_path]");
      if(isset($file) && $file["name"] != '' ){
        die("HERE");
        // check the file is pdf
        $file=$form->getValue('file_path');
        if (strtoupper(substr($file, -3, 3)) != "PDF") {
          $this->globalerrors = "File must be PDF";
          return;
        }
        
        $myfile = $this->form->getObject()->getFilePath();
        
        if($myfile !== null || $myfile != ''){
          //previously there was something there, delete it!
    	  $this->delExam($myfile);
        }
        
        switch ($form->getObject()->getType()){
          case EnumItemPeer::EXAM:
            $examTypeAbbr = "exam";
            break;
          case EnumItemPeer::TEST:
            $examTypeAbbr = "ts";
            break;
          case EnumItemPeer::QUIZ:
            $examTypeAbbr = "qs";
            break;
          case EnumItemPeer::PROBLEM_SET:
            $examTypeAbbr = "ps";
            break;
        }

        $fileName = substr($this->courseId,0,6).'_'.substr($this->year,0,4).'_'.$examTypeAbbr.'_'.time().".pdf";
        
        $extension = $file->getOriginalExtension();
        $path = sfConfig::get('sf_web_dir').skuleadminConst::INDIVIDUALEXAMFOLDER.$year.'/';
        
        try {
	      if($file->save($path.$filename.$extension)){
	   	    $exam = $form->save();
	      	$this->redirect('adminexam/edit?id='.$exam->getId()."&course=".$this->courseId."&year=".substr($this->year,0,4)."&term=".substr($this->year,4,1));
	      }else{
	      	$this->globalerrors = "Unable to save file";
	      }
        } catch (Exception $e){
          $this->globalerrors = $e->getMessage();
        }
      }else{
        die("SDFSDFSD");
        try {
      	  $exam = $form->save();
      	  $this->redirect('adminexam/edit?id='.$exam->getId()."&course=".$this->courseId."&year=".substr($this->year,0,4)."&term=".substr($this->year,4,1));
        } catch (Exception $e){
          $this->globalerrors = $e->getMessage();
        }
      }
      
  }
  
  protected function getExamList($courseId, $year){
  	$c = new Criteria();
  	$crit1 = $c->getNewCriterion(ExamPeer::COURSE_ID, $courseId);
  	$crit2 = $c->getNewCriterion(ExamPeer::YEAR, $year);
  	$c->addAnd($crit1);
  	$c->addAnd($crit2);
  	$c->addAscendingOrderByColumn(ExamPeer::TYPE);
  	$c->addAscendingOrderByColumn(ExamPeer::DESCR);
  	
  	return ExamPeer::doSelectJoinEnumItem($c);
  }
  
  protected function delExam($myfile){
  	if(!unlink($myfile)){
      $this->redirect('adminexam/failederr?msg=unlink');
  	}
  }
}
