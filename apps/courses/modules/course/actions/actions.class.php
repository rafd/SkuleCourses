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
      $year = $request->getParameter("year");
      
      // check if the year exists
      $yearArray = AutoCourseRatingPeer::getAvailableYearsForCourseId($id, $conn);
      $err = true;
      foreach ($yearArray as $y){
        if ($year==$y) {
          $err = false;
          break;
        }
      }
      if ($err) $this->forward404();
      
      $this->year = $year;
      $this->instructorArr = CourseInstructorAssociationPeer::getInstructorsForCourseAndYear($id, $year, $conn);
      
      if ($request->hasParameter("instructor"))
        $insId = $request->getParameter("instructor");
      else
        $insId = $this->instructorArr[0]->getId();
      $this->currInstructor = InstructorPeer::retrieveByPK($insId, $conn);
      
      $dataObjArr = AutoCourseRatingPeer::getCourseDataArrayForInstructorAndYear($id, $insId, $year, $conn);
      
      $this->dataArr = array();
      $arr = array();
      foreach ($dataObjArr as $obj)
      {
        if ($obj->getFieldId() == RatingFieldPeer::NUMBER_ENROLLED)
        {
          $this->numberEnrolled = $obj->getNumber();
        }
        else if ($obj->getFieldId() == RatingFieldPeer::NUMBER_RESPONDED)
        {
          $this->numberResponded = $obj->getNumber();
        }
        else
        {
          if (!isset($currentNode)) {
            $currentNode = $obj->getFieldId();
            $arr["type"] = $obj->getRatingField()->getRatingTypeString();
            $arr["field"] = $obj->getRatingField()->getDescr();
            $arr["instructor"] = $obj->getCourseInstructorAssociation($conn)->getInstructor()->getLastName();
          }
          
          if ($currentNode!=$obj->getFieldId()){
            $this->dataArr[] = $arr;
            unset($arr);
            $currentNode = $obj->getFieldId();
            $arr["type"] = $obj->getRatingField()->getRatingTypeString();
            $arr["field"] = $obj->getRatingField()->getDescr();
            $arr["instructor"] = $obj->getCourseInstructorAssociation($conn)->getInstructor()->getLastName();
          }
          $arr[$obj->getRating()] = $obj->getNumber();
        }
      }
      $this->dataArr[] = $arr;
    }
    else
    {
      $this->forward404();
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
      $year = $request->getParameter("year");
      //TODO
    }
    else
    {
      $this->forward404();
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
