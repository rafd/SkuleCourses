<?php

/**
 * search actions.
 *
 * @package    skule_courses\
 * @subpackage search
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class searchActions extends sfActions
{
  const SEARCH_BY_DEPARTMENT = 1;
  const SEARCH_BY_INSTRUCTOR = 2;
  const SEARCH_BY_PROGRAM = 3;
  
  public function executeIndex(sfWebRequest $request)
  {
    if ($request->hasParameter("selSearchType")){
      $param = $request->getParameter("selSearchType");
      
	  switch ($param){
	    case searchActions::SEARCH_BY_DEPARTMENT:
	      $this->forward("search", "searchByDepartment");
	      break;
	    case searchActions::SEARCH_BY_INSTRUCTOR:
	      $this->forward("search", "searchByInstructor");
	      break;
	    case searchActions::SEARCH_BY_PROGRAM:
	      $this->forward("search", "searchByProgram");
	      break;
	    default:
	      $this->forward404();
	      break;
	  }
      
    } else {
      $this->forward("search", "searchByDepartment");
    }
  }
  
  public function executeSearchByInstructor(sfWebRequest $request)
  {
    $conn = Propel::getConnection();
    $today = getdate();
    
    $this->searchType = searchActions::SEARCH_BY_INSTRUCTOR;
    $this->instructorList = array();
    $this->categoryList = array();
    for ($i='A';$i!='AA';$i++){
      $this->categoryList[$i]=$i;
    }
    
    if ($request->hasParameter("instructor")){
      // we're searching for a specific instructor
      
      $this->instructorId = $request->getParameter("instructor");
      if (helperFunctions::isMaliciousString($this->instructorId)) $this->forward404();
      
      // get result set
      $instrObj = InstructorPeer::retrieveByPK($this->instructorId, $conn);
      $lastname = $instrObj->getLastName();
      $this->category = strtoupper(substr($lastname,0,1));
      $this->resultTitle = "Results for ".$lastname.", ".$instrObj->getFirstName();
      $this->results = CoursePeer::findCoursesByInstructorId($this->instructorId, $conn);
      
    } elseif ($request->hasParameter("category")){
      // we're searching for the initial of last name of an instructor
      
      $this->category = strtoupper($request->getParameter("category"));
      if (helperFunctions::isMaliciousString($this->category)) $this->forward404();
            
    } else {
      // no constraint specified, display category='A'
      
      $this->category = 'A';
    }
    
    $rawInstrList = InstructorPeer::findInstructorByLastNameInitial($this->category, $conn);
    foreach ($rawInstrList as $obj){
      $this->instructorList[$obj->getId()] = $obj->getLastName().", ".$obj->getFirstName();
    }
    if (!isset($this->instructorId)){
      if (isset($rawInstrList[0])) $this->instructorId = $rawInstrList[0]->getId();
      else $this->instructorId = "";
    }
  }
  
  public function executeSearchByDepartment(sfWebRequest $request)
  {
    $conn = Propel::getConnection();
    
    $this->searchType = searchActions::SEARCH_BY_DEPARTMENT;
    
    $rawDeptList = DepartmentPeer::getAll($conn);
    $deptList = array();
    foreach ($rawDeptList as $obj){
      $deptList[$obj->getId()] = $obj->getId();
    }
    $this->deptList = $deptList;
    
    if ($request->hasParameter("deptId")){
      $deptId = $request->getParameter("deptId");
      if (helperFunctions::isMaliciousString($deptId)) $this->forward404();
      $this->deptId = $deptId;
      
      $deptObj = DepartmentPeer::retrieveByPK($deptId, $conn);
      $this->resultTitle = "Results for ".$deptObj->getId()." (".$deptObj->getDescr().")";
      
      $this->results = $deptObj->getCourses(null, $conn);
    } else {
      $this->deptId = $rawDeptList[0]->getId();
    }
  }
  
  public function executeSearchByProgram(sfWebRequest $request)
  {
    $conn = Propel::getConnection();
    $today = getdate();
    
    $this->searchType = searchActions::SEARCH_BY_PROGRAM;
    $rawProgList = EnumItemPeer::getAllForParentNodeId(EnumItemPeer::DISCIPLINES_NODE_ID, $conn);
    $this->programList = array();
    foreach ($rawProgList as $obj){
      $this->programList[$obj->getId()] = $obj->getDescr();
    }
    $this->yearList = array("0"=>"All", "1"=>"First Year", "2"=>"Second Year", "3"=>"Third Year", "4"=>"Fourth Year");
    
    if ($request->hasParameter("year") && $request->hasParameter("program")){
      $this->programId = $request->getParameter("program");
      if (helperFunctions::isMaliciousString($this->programId)) $this->forward404();
      $this->year = $request->getParameter("year");
      if (helperFunctions::isMaliciousString($this->year)) $this->forward404();
      
      // get result set
      $enum = EnumItemPeer::retrieveByPK($this->programId, $conn);
      $this->resultTitle = "Results for ".$enum->getDescr();
      
      $this->results = CoursePeer::findCoursesByDisciplineIdAndYear($this->programId, $this->year, $conn);
      
    } else {
      $this->programId = $rawProgList[0]->getId();
      $this->year = 1;
    }
  }
  
  public function executeFuzzySearch(sfWebRequest $request)
  {
    if (!$request->hasParameter("query")) $this->forward("search", "index");
    
    $conn = Propel::getConnection();
    $query = $request->getParameter("query");
    $this->query = $query;
    
    $fuzzySearch = new fuzzySearch();
    try {
      $fuzzySearch->query($query, $conn);
    } catch (Exception $e){
      $this->error = $e->getMessage();
      return;
    }
    
    $countCourseList = count($fuzzySearch->getCourseList());
    $countInstrList = count($fuzzySearch->getInstructorList());
    $countProgList = count($fuzzySearch->getProgramList());
    if (($countCourseList+$countInstrList+$countProgList)<1){
      $this->error = "No result found.";
    } else if ($countCourseList==1){
      $list = $fuzzySearch->getCourseList();
      $this->redirect("course/index?id=".$list[0]->getId());
    } else {
      $this->courseList = $fuzzySearch->getCourseList();
      $this->instructorList = $fuzzySearch->getInstructorList();
      $this->programList = $fuzzySearch->getProgramList();
    }
  }
  
  public function preExecute()
  {
    $submenu = new subMenu(subMenuOptions::SEARCH);
    $this->submenu = $submenu->get();
    $this->searchTypeList = $this->getSearchTypeList();
    $this->searchTypeFormName = "searchTypeForm";
  }
  
  private function getSearchTypeList()
  {
    $list = array (
      searchActions::SEARCH_BY_DEPARTMENT => 'Department',
      searchActions::SEARCH_BY_PROGRAM => 'Program',
      searchActions::SEARCH_BY_INSTRUCTOR => 'Instructor' );
    return $list;
  }
}