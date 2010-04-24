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

    $this->earliestYear = skuleadminConst::EARLIEST_YEAR;
    $this->date = getdate();
  }
  
  public function executeIndex(sfWebRequest $request)
  {
  }
  
  public function executeCustom(sfWebRequest $request)
  {
    $this->form = new ExamForm(new Exam() );
    
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
      $year = $request->getParameter("year");
      $term = $request->getParameter("term");
      $this->year = $year.$term;
      
      if ($request->hasParameter("id")){
        $this->redirect("adminexam/edit?id=".$request->getParameter("id")."&course=".$this->courseId."&year=".$year."&term=".$term);
      }
      
      $this->examList = $this->getExamList($this->courseId, $this->year);
      $this->form->setDefault("year", $year);
      $this->form->setDefault("term", $term);
    }
  }
  
  public function executeBulk(sfWebRequest $request)
  {
  }
  
  public function executeBulkTwo(sfWebRequest $request)
  {
    if (!$request->isMethod(sfWebRequest::POST) || !$request->hasParameter('bulk_year') || !$request->hasParameter('bulk_term'))
      $this->forward404("Not valid way to access this page");
    
    $this->bulkYear = $request->getParameter('bulk_year').$request->getParameter('bulk_term');
    $tgtPath = "exams/bulk/".$this->bulkYear;
    if (is_dir($tgtPath)){
      // if this directory exists, caution user
      $this->caution = true;
    }
    
  }
  
  public function executeBulkThree(sfWebRequest $request)
  {
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));
    $this->forward404Unless($request->hasParameter("course") && $request->hasParameter("year") && $request->hasParameter("term"));
    $this->courseId = $request->getParameter("course");
    $this->year = $request->getParameter("year").$request->getParameter("term"); 
    $this->forward404Unless($course = CoursePeer::retrieveByPk($this->courseId), sprintf("Object course does not exist"));

    $this->form = new ExamForm(new Exam());
    $this->processForm($request, $this->form);
    
    // at this point, save has failed
    $this->examList = $this->getExamList($this->courseId, $this->year);
    $this->setTemplate('custom');
  }

  public function executeEdit(sfWebRequest $request)
  {
    if (!$request->hasParameter("course") || !$request->hasParameter("year") || !$request->hasParameter("term")) $this->forward404("parameters incomplete");
    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    $this->courseId = $request->getParameter("course");
    $this->year = $request->getParameter("year").$request->getParameter("term");
    $this->forward404Unless($exam->getCourseId() == $this->courseId, "course does not match");
    
    $this->examList = $this->getExamList($this->courseId, $this->year);
    $this->form = new ExamForm($exam);
    $this->form->setDefault("year", substr($this->form->getObject()->getYear(),0,4));
    $this->form->setDefault("term", substr($this->form->getObject()->getYear(),4,1));
    $this->setTemplate('custom');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($request->hasParameter("course") && $request->hasParameter("year") && $request->hasParameter("term"), "missing parameters");
    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    $this->courseId = $request->getParameter("course");
    $this->year = $request->getParameter("year").$request->getParameter("term"); 
    $this->forward404Unless($exam->getCourseId() == $this->courseId);
    
    $this->form = new ExamForm($exam);
    $this->processForm($request, $this->form);
    
    // if we have reached this point, save has failed
    $this->examList = $this->getExamList($this->courseId, $this->year);
    $this->setTemplate('custom');
  }
  
  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();
    
    $this->forward404Unless($request->hasParameter("course") && $request->hasParameter("year") && $request->hasParameter("term"), "missing parameters");
    $this->forward404Unless($exam = ExamPeer::retrieveByPk($request->getParameter('id')), sprintf('Object exam does not exist (%s).', $request->getParameter('id')));
    $this->courseId = $request->getParameter("course");
    $this->year = $request->getParameter("year").$request->getParameter("term"); 
    $this->forward404Unless($exam->getCourseId() == $this->courseId);
    
    try {
      $myfile = $exam->getFilePath();
      if (!$this->delExam($myfile)) throw new Exception ("Unable to physically remove file");
      $exam->delete();
    } catch (Exception $e){
      $this->globalerrors = $e->getMessage();
      
      $this->examList = $this->getExamList($this->courseId, $this->year);
      $this->form = new ExamForm($exam);
      $this->setTemplate('custom');
    }

    $this->redirect("adminexam/custom?course=$this->courseId&year=".substr($this->year,0,4)."&term=".substr($this->year,4,1));
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    $prefix = $form->getName();
    
    // get year
    $year = $form->getValue("year").$form->getValue("term");
    
    $file = $_FILES["file_path"];
      if(isset($file) && $file["name"] != '' ){
        // check the file is pdf
        $_fpath = $file["name"];
        if (strtoupper(substr($_fpath, -3, 3)) != "PDF") {
          $this->globalerrors = "File must be PDF";
          return;
        }
        
        $oldfile = $this->form->getObject()->getFilePath();
        if($oldfile !== null || $oldfile != ''){
          //previously there was something there, delete it!
    	  if (!$this->delExam($oldfile)){
    	    $this->globalerrors = "Unable to physically remove file";
    	    return;
    	  }
        }
        
        // determine what type of exam it is
        switch ($request->getParameter($prefix."[type]")){
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
        $path = skuleadminConst::INDIVIDUALEXAMFOLDER.$this->year.'/';
        $filePath = $path.$fileName;
        
        try {
          // make sure the directories are set up properly
          if (!is_dir($path)) {
            if (!mkdir($path)) {
              $globalerrors = "Unable to create directory";
              return;
            }
          }
          
          if (move_uploaded_file($file['tmp_name'], $filePath)){
            //die($form->getValue("descr"));
            
            // now save the exam object
            // TODO we have to do a manual save until we can figure out how to work the form with file upload
            $exam = $form->getObject();
            $exam->setCourseId($this->courseId);
            $exam->setType($request->getParameter($prefix."[type]"));
            $exam->setYear($request->getParameter($prefix."[year]").$request->getParameter($prefix."[term]"));
            $exam->setDescr($request->getParameter($prefix."[descr]"));
            $exam->setFilePath($filePath);
            $exam->save();
            
            $this->redirect('adminexam/edit?id='.$exam->getId()."&course=".$this->courseId."&year=".substr($this->year,0,4)."&term=".substr($this->year,4,1));
          } else {
            $this->globalerrors = "Unable to save file";
            return;
          }
        } catch (Exception $e){
          $this->globalerrors = $e->getMessage();
          return;
        }
      }else{
        
        if ($form->getObject()->isNew()){
          $this->globalerrors = "A file must be uploaded";
          return;
        }
        
        try {
          $exam = $form->getObject();
          $exam->setYear($year);
      	  $exam->setType($form->getValue("type"));
      	  $exam->setDescr($form->getValue("descr"));
      	  $exam->save();
      	  $this->redirect('adminexam/edit?id='.$form->getObject()->getId()."&course=".$this->courseId."&year=".substr($this->year,0,4)."&term=".substr($this->year,4,1));
        } catch (Exception $e){
          $this->globalerrors = $e->getMessage();
          return;
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
    if (!file_exists($myfile)) return true;
  	return unlink($myfile);
  }
}
