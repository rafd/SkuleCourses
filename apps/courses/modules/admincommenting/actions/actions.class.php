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
    
    $submenu = new subMenu(subMenuOptions::MAINTENANCE_COMMENTING);
    $this->submenu = $submenu->get();
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
    
  }
  
  public function executeEditCourse(sfWebRequest $request)
  {
    
  }
  
  public function executeUpdateCourse(sfWebRequest $request)
  {
    
  }
  
  public function executeDeleteCourse(sfWebRequest $request)
  {
    
  }
  
  /**
   * Get a list of course comments for a particular course
   *
   */
  protected function getCourseList($courseId)
  {
    
  }
  
  protected function submitCourseForm(sfWebRequest $request, sfForm $form)
  {
    
  }
}