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
      
      // $dataArr is an array of dictionaries (arr) that contain ratings/info
      $this->dataArr = array();
      // $arr = dictionary
      $arr = array();
      foreach ($dataObjArr as $obj)
      {
        if ($obj->getFieldId() == RatingFieldPeer::NUMBER_ENROLLED)
        {
          // number enrolled, special field
          $this->numberEnrolled = $obj->getNumber();
        }
        else if ($obj->getFieldId() == RatingFieldPeer::NUMBER_RESPONDED)
        {
          // number responded, special field
          $this->numberResponded = $obj->getNumber();
        }
        else
        {
          // ordinary rating data
          if (!isset($currentNode)) {
            $currentNode = $obj->getFieldId();
            $arr["type"] = $obj->getRatingField()->getRatingTypeString($conn);
            $arr["field"] = $obj->getRatingField()->getDescr();
            $arr["instructor"] = $obj->getCourseInstructorAssociation($conn)->getInstructor()->getLastName();
            $arr["typeObj"] = $obj->getRatingField()->getEnumItem($conn);
          }
          
          if ($currentNode!=$obj->getFieldId()){
            $arr = $this->setMeanAndMedian($arr);
            if (!isset($arr[0])) {
              // $arr[0] = number who did not respond to this question
              $arr[0] = $this->calcNR($arr, $this->numberResponded);
            }
            $arr["chart"] = $this->getFusionChartFromDataArr($arr);
            $this->dataArr[] = $arr;
            
            unset($arr);
            $currentNode = $obj->getFieldId();
            $arr["type"] = $obj->getRatingField()->getRatingTypeString($conn);
            $arr["field"] = $obj->getRatingField()->getDescr();
            $arr["instructor"] = $obj->getCourseInstructorAssociation($conn)->getInstructor()->getLastName();
            $arr["typeObj"] = $obj->getRatingField()->getEnumItem($conn);
          }
          
          $arr[$obj->getRating()] = $obj->getNumber();
        }
      }
      
      // for the last critique field
      $arr = $this->setMeanAndMedian($arr);
      if (!isset($arr[0])) {
        // $arr[0] = number who did not respond to this question
        $arr[0] = $this->calcNR($arr, $this->numberResponded);
      }
      $arr["chart"] = $this->getFusionChartFromDataArr($arr);
      $this->dataArr[] = $arr;
      
      $this->aggregatedRating = $this->calcAggregatedRating($this->dataArr);
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
      $this->year = $request->getParameter("year");
      
      $results = ExamPeer::getExamsForYearAndCourseId($id, $this->year, $conn);
      
      $examArr = array();
      $testArr = array();
      $quizArr = array();
      foreach ($results as $exam){
        switch ($exam->getType()){
          case EnumItemPeer::EXAM:
            $examArr[] = array("descr"=>$exam->getDescr(), "path"=>$exam->getFilePath());
            break;
          case EnumItemPeer::TEST:
            $testArr[] = array("descr"=>$exam->getDescr(), "path"=>$exam->getFilePath());
            break;
          case EnumItemPeer::QUIZ:
            $quizArr[] = array("descr"=>$exam->getDescr(), "path"=>$exam->getFilePath());
            break;
        }
      }
      
      if (count($examArr)!=0) $this->examArr=$examArr;
      if (count($testArr)!=0) $this->testArr=$testArr;
      if (count($quizArr)!=0) $this->quizArr=$quizArr;
    }
    else
    {
      $this->forward404();
    }
  }
  
  private function calcNR($arr, $totResponded){
    $tot = 0;
    foreach ($arr as $key=>$value){
      if (is_numeric($key)) $tot += $value;
    }
    return $totResponded - $tot;
  }
  
  private function calcAggregatedRating($dataArr)
  {
    $total = 0;
    $counter = 0;
    foreach ($dataArr as $arr)
    {
      if (isset($arr["mean"]) && is_numeric($arr["mean"])){
	    $counter++;
	    $total += $arr["mean"];
      }
    }
    
    if ($counter > 0) $result = $total/$counter;
    else $result = 0;
    
    return $result;
  }
  
  private function setMeanAndMedian($arr){
    $item = $arr["typeObj"];
    
    if ($item->getId() == EnumItemPeer::RATING_BOOLEAN){
      $arr["mean"] = "N/A";
      $arr["median"] = "N/A";
    } elseif ($item->getParentId() == EnumItemPeer::RATING_SCALE){
      $arr["mean"] = round(helperFunctions::findMean(1, $item->getDescr(), $arr),1);
      $arr["median"] = helperFunctions::findMedian(1, $item->getDescr(), $arr);
    } else {
      throw new Exception ("type not supported");
    }

    return $arr;
  }
  
  private function getFusionChartFromDataArr($arr){
    $FC = new FusionCharts("Column2D","500","350",null,true);
	$FC->setSWFPath("/fusionCharts_swf/");
	
	$strParam="caption={$arr['field']};xAxisName=Rating;yAxisName=Number;decimalPrecision=0;formatNumberScale=1";
	$FC->setChartParams($strParam);
	
	if (isset($arr[0])) {
	  $FC->addChartData($arr[0], "name=N/R");
	}
	
	$item = $arr["typeObj"];
    if ($item->getId() == EnumItemPeer::RATING_BOOLEAN){
      for ($i=1; $i<=2; $i++) $FC->addChartData($arr[$i], "name=$i");
    } elseif ($item->getParentId() == EnumItemPeer::RATING_SCALE){
      for ($i=1; $i<=$item->getDescr(); $i++) $FC->addChartData($arr[$i], "name=$i");
    } else {
      throw new Exception ("type not supported");
    }

	return $FC;
  }
  
  private function buildSubmenu(sfWebRequest $request)
  {
    if (!$request->hasParameter("id")) $this->redirect("search/index");
    
    // set cookie to remember
    $id = $request->getParameter("id");
    $this->getResponse()->setCookie('courseId', $id);
    //setcookie ('courseId', $id, 0);
    
    $conn = Propel::getConnection();
    
    $submenu = new subMenu(subMenuOptions::TYPICAL);
    $submenu->setCourseId($id);
    
    // get rating data
    //TODO: translate the raw year to something more conventional, e.g. Summer, Winter
    $this->ratingYearArray = AutoCourseRatingPeer::getAvailableYearsForCourseId($id, $conn);
    $submenu->setRatingYearArray($this->ratingYearArray);
    // get exam data
    $this->examYearArray = ExamPeer::getAvailableYearsForCourseId($id, $conn);
    $submenu->setExamYearArray($this->examYearArray);
    
    $this->submenu = $submenu->get();
  }
}
