<?php

/**
 * admincommenting actions
 *
 * @package    sf_sandbox
 * @subpackage courses
 * @author     Jimmy Lu
 */
class admincommentingActions extends sfActions
{
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
  }
  
  public function executeIndex(sfWebRequest $request) {}

  /**
   * The true index of unapproved commenting editor page
   * @param sfWebRequest $request
   */
  public function executeUnapproved(sfWebRequest $request)
  {
    $this->comment_list = $this->getUnapprovedList();
    $this->form = new CourseCommentForm();
    
    if ($request->hasParameter("id")){
      $this->redirect("admincommenting/editUnapproved?id=".$request->getParameter("id"));
    }
  }

  public function executeEditUnapproved(sfWebRequest $request)
  {
    $this->forward404Unless($comment = CourseCommentPeer::retrieveByPk($request->getParameter('id')), sprintf('Object comment does not exist (%s).', $request->getParameter('id')));
    
    if ($comment->getApproved()) $this->forward404("Already approved");
    
    $this->comment_list = $this->getUnapprovedList();
    $values=array('edit'=>'true');
    $this->form = new CourseCommentForm($comment, $values);
    $this->setTemplate('unapproved');
  }

  public function executeUpdateUnapproved(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $id = $request->getParameter('id');
    $this->forward404Unless($comment = CourseCommentPeer::retrieveByPk($id), sprintf('Object comment does not exist (%s).', $id));
    
    if ($comment->getApproved()) $this->forward404("Already approved");
    
    $values=array('edit'=>'true');
    $this->form = new CourseCommentForm($comment,$values);
    
    // redirect address
    $par="";
    if ($request->hasParameter("page")){
      $par = "?page=".$request->getParameter("page");
    }
    $this->redirectAddress = "admincommenting/unapproved".$par;
    
    $this->submitUnapprovedForm($request, $this->form);
    
    //at this point the save has failed
    $this->comment_list = $this->getUnapprovedList();
    $this->setTemplate('unapproved');
  }

  public function executeDeleteUnapproved(sfWebRequest $request)
  {
    $request->checkCSRFProtection();
    $this->forward404Unless($comment = CourseCommentPeer::retrieveByPk($request->getParameter('id')), sprintf('Object comment does not exist (%s).', $request->getParameter('id')));
    if ($comment->getApproved()) $this->forward404("Already approved");
    
    try {
      $comment->delete();
      
      $par = "";
      if ($request->hasParameter("page")){
        $par = "?page=".$request->getParameter("page");
      }
      $this->redirect('admincommenting/unapproved'.$par);
    } catch (Exception $e) {
      $this->globalErrors = $e->getMessage();
      
      $this->comment_list = $this->getUnapprovedList();

      $values=array('edit'=>'true');
      $this->form = new CourseForm($comment,$values);
    }
  }
  
  protected function getUnapprovedList(){
  	$pagenumber = 1;
    if($this->getRequestParameter('page')!==null){
      $pagenumber = $this->getRequestParameter('page');
    }
    
    $pager = new sfPropelPager('CourseComment', skuleadminConst::COURSE_RECORDNUMBER);
    
  	$c = new Criteria();
  	$crit = $c->getNewCriterion(CourseCommentPeer::APPROVED, 0);
  	$c->addAnd($crit);
  	$c->addAscendingOrderByColumn(CourseCommentPeer::INPUT_DT);
  	
  	$pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
  
  protected function submitUnapprovedForm(sfWebRequest $request, sfForm $commentform)
  {
  	  $noerror = true;
      $commentform->bind($request->getParameter($commentform->getName()), $request->getFiles($commentform->getName()));

      if ($commentform->isValid()){
      	try {
      	  $commentform->save();
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
          $par = "?page=".$request->getParameter("page");
        }
        $this->redirect('admincommenting/unapproved'.$par);
      }
  }
  
  /**
   * The true index of course commenting editor page
   * @param sfWebRequest $request
   */
  public function executeCoursecommenting(sfWebRequest $request)
  {
    $this->form = new CourseCommentForm();
    
    if ($request->hasParameter("course")){
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
      
      if ($request->hasParameter("id")){
        $this->redirect("admincommenting/editCourse?id=".$request->getParameter("id")."&course=".$this->courseId);
      }
      
      $this->commentList = $this->getCourseList($this->courseId);
    }
  }
  
  public function executeCreateCourse(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($request->hasParameter("course"));
    $this->courseId = $request->getParameter("course");
    $this->forward404Unless($_course = CoursePeer::retrieveByPk($this->courseId), sprintf('Object course does not exist (%s).', $this->courseId));
    
    $comment = new CourseComment();
    $values=array('courseid'=>$this->courseId);
    $this->form = new CourseCommentForm($comment,$values);
    
    $this->submitCourseForm($request, $this->form);
    
    // if we have reached this point, save has failed
    $this->commentList = $this->getCourseList($this->courseId);
    $this->setTemplate('coursecommenting');
  }
  
  public function executeEditCourse(sfWebRequest $request)
  {
    if (!$request->hasParameter("course")) $this->forward404("parameters incomplete");
    $this->forward404Unless($comment = CourseCommentPeer::retrieveByPk($request->getParameter('id')), sprintf('Object comment does not exist (%s).', $request->getParameter('id')));
    
    $this->courseId = $request->getParameter("course");
    
    if ($comment->getCourseId() != $this->courseId) $this->forward404("course does not match");
    
    $this->commentList = $this->getCourseList($this->courseId);
    
    $values=array('courseid'=>$comment->getCourseId());
    $this->form = new CourseCommentForm($comment,$values);
    
    $this->setTemplate('coursecommenting');
  }
  
  public function executeUpdateCourse(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($request->hasParameter("course"));
    $this->forward404Unless($comment = CourseCommentPeer::retrieveByPk($request->getParameter('id')), sprintf('Object comment does not exist (%s).', $request->getParameter('id')));
    
    $this->courseId = $request->getParameter("course");
    $this->forward404Unless($comment->getCourseId() == $this->courseId);
    
    $values=array('courseid'=>$comment->getCourseId());
    $this->form = new CourseCommentForm($comment,$values);
    
    $this->submitCourseForm($request, $this->form);
    
    // if we have reached this point, save has failed
    // redirect address
    $par="";
    if ($request->hasParameter("page")){
      $par = "&page=".$request->getParameter("page");
    }
    $this->redirectAddress = "admincommenting/coursecommenting?course=".$this->courseId.$par;
    $this->commentList = $this->getCourseList($this->courseId);
    $this->setTemplate('coursecommenting');
  }
  
  public function executeDeleteCourse(sfWebRequest $request)
  {
    $request->checkCSRFProtection();
    $this->forward404Unless($request->hasParameter("course"), "parameters missing");
    $this->forward404Unless($comment = CourseCommentPeer::retrieveByPk($request->getParameter('id')), sprintf('Object comment does not exist (%s).', $request->getParameter('id')));
    $this->courseId = $request->getParameter("course");
    $this->forward404Unless($comment->getCourseId() == $this->courseId);
    
    try {
      $comment->delete();
      
      $par = "";
      if ($request->hasParameter("page")){
        $par = "&page=".$request->getParameter("page");
      }
      $this->redirect('admincommenting/coursecommenting?course='.$this->courseId.$par);
    } catch (Exception $e) {
      $this->globalErrors = $e->getMessage();
      
      $this->commentList = $this->getCourseList($this->courseId);

      $this->form = new CourseForm($comment,array());
    }
  }
  
  /**
   * Get a list of course comments for a particular course
   *
   */
  protected function getCourseList($courseId)
  {
    $pagenumber = 1;
    if($this->hasRequestParameter('page')){
      $pagenumber = $this->getRequestParameter('page');
    }
  	$pager = new sfPropelPager('CourseComment', skuleadminConst::EXAM_RECORDNUMBER);
  	$c = new Criteria();
  	$crit1 = $c->getNewCriterion(CourseCommentPeer::COURSE_ID, $courseId);
  	$c->addAnd($crit1);
  	$c->addAscendingOrderByColumn(CourseCommentPeer::INPUT_DT);
  	
    $pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
  
  protected function submitCourseForm(sfWebRequest $request, sfForm $commentform)
  {
    $noerror = true;
    $commentform->bind($request->getParameter($commentform->getName()), $request->getFiles($commentform->getName()));

    try {
      $commentform->save();
      
      $par="";
      if ($request->hasParameter("page")){
        $par = "&page=".$request->getParameter("page");
      }
      $this->redirect('admincommenting/editCourse?id='.$commentform->getObject()->getId()."&course=".$this->courseId.$par);
    } catch (Exception $e) {
      $this->globalErrors = $e->getMessage();
      return;
    }
  }
}