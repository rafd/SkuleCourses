<?php

/**
 * course actions.
 *
 * @package    skule_courses\
 * @subpackage course
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class courseActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
    $this->buildSubmenu($request);
    
    $id = $request->getParameter("id");
    $conn = Propel::getConnection();
    $this->courseObj = CoursePeer::retrieveByPK($id, $conn);

    // courseDetail
    $detList = $this->courseObj->getCourseDetails(null, $conn);
    if (count($detList) > 0){
      $this->courseDetail = $detList[0];
    }
    
    // instructor
    $detList = CourseInstructorAssociationPeer::getLatestInstructorsForCourseId($this->courseObj->getId(), $conn);
    $newList = CourseInstructorAssociationPeer::getHistoricalInstructorsForCourseId($this->courseObj->getId(), $conn);
    if (count($detList) > 0){
      $this->currentInstructorList = $detList;
      $this->pastInstructorList = $newList;
    }
    
    // program
    $detList = CourseDisciplineAssociationPeer::getRelatedDisciplinesForCourse($this->courseObj, $conn);
    if (count($detList) > 0){
      $this->programList = $detList;
    }
  }
  
  public function executeCritique(sfWebRequest $request)
  {
    $this->buildSubmenu($request);
    
    $id = $request->getParameter("id");
    $conn = Propel::getConnection();
    $this->courseObj = CoursePeer::retrieveByPK($id, $conn);
    
    if ($request->hasParameter("year"))
    {
      
    }
    else
    {
      // use the current year
    }
  }
  
  public function executeExam(sfWebRequest $request)
  {
    $this->buildSubmenu($request);
    
    $id = $request->getParameter("id");
    $conn = Propel::getConnection();
    $this->courseObj = CoursePeer::retrieveByPK($id, $conn);
    
    if ($request->hasParameter("year"))
    {
      
    }
    else
    {
      // use the current year
      
    }
  }
  
  private function buildSubmenu(sfWebRequest $request)
  {
    if (!$request->hasParameter("id")) $this->redirect("search/index");
    
    $submenu = new subMenu(subMenuOptions::SINGLE_COURSE);
    $submenu->setCourseId($request->getParameter("id"));
    $this->submenu = $submenu->get();
  }
}
