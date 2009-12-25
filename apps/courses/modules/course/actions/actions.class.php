<?php

/**
 * course actions.
 *
 * @package    skule_courses
 * @subpackage course
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class courseActions extends sfActions
{
  
  public function executeIndex(sfWebRequest $request)
  {
    $this->buildSubmenu($request);
    
    $id = $request->getParameter("id");
    $conn = Propel::getConnection();
    $this->courseObj = CoursePeer::retrieveByPK($id, $conn);
    
    if (!is_object($this->courseObj)) $this->forward404();

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
    $this->buildSubmenu($request, subMenuOptions::COURSE_CRITIQUE);
    
    $id = $request->getParameter("id");
    $conn = Propel::getConnection();
    $this->courseObj = CoursePeer::retrieveByPK($id, $conn);
    
    if (!is_object($this->courseObj)) $this->forward404();
    
    if ($request->hasParameter("year") && trim($request->getParameter("year"))!="")
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
      $this->instructorArr = AutoCourseRatingPeer::getAvailableInstructorsForCourseIdAndYear($id, $year, $conn);
                  
      if ($request->hasParameter("instructor")){
        $insId = $request->getParameter("instructor");
        $found = false;
        foreach ($this->instructorArr as $ins){
          if ($ins->getId() == $insId){
            $found = true;
            break;
          }
        }
        if (!$found) $this->forward404("ins not found");
      } else {
        $insId = $this->instructorArr[0]->getId();
      }
      $this->currInstructor = InstructorPeer::retrieveByPK($insId, $conn);
      
      // note that the below logic is predicated on getCourseDataArrayForCourseAndInstructorAndYear
      // sorting by Field, Id, Rating, in the respective order
      $dataObjArr = AutoCourseRatingPeer::getCourseDataArrayForCourseAndInstructorAndYear($id, $insId, $year, $conn);
      
      // $dataArr is an array of dictionaries (arr) that contain ratings/info
      $this->dataArr = array();
      // $arr = dictionary
      $arr = array();
      $_prv = false;
      foreach ($dataObjArr as $obj)
      {
        // this sytem does not differentiate between different sections
        // when multiple sections with the SAME instructor is encountered, the data are aggregated
        switch ($obj->getFieldId())
        {
          case RatingFieldPeer::NUMBER_ENROLLED:
            // number enrolled, special field
            if (isset($this->numberEnrolled)) $this->numberEnrolled += $obj->getNumber();
            else $this->numberEnrolled = $obj->getNumber();
            break;
          case RatingFieldPeer::NUMBER_RESPONDED:
            // number responded, special field
            if (isset($this->numberResponded)) $this->numberResponded += $obj->getNumber();
            else $this->numberResponded = $obj->getNumber();
            break;
          case RatingFieldPeer::RETAKE:
            // percent retake
            if (isset($this->retake)) $this->retake += $obj->getNumber();
            else $this->retake = $obj->getNumber();
            break;
          default:
            // ordinary rating data
            $_prv = true;
            if (!isset($currentNode)) {
              $currentNode = $obj->getFieldId();
              $arr["type"] = $obj->getRatingField()->getRatingTypeString($conn);
              $arr["field"] = $obj->getRatingField()->getDescr();
              $arr["instructor"] = $obj->getCourseInstructorAssociation($conn)->getInstructor()->getLastName();
              $arr["typeObj"] = $obj->getRatingField()->getEnumItem($conn);
            }
          
            if ($currentNode!=$obj->getFieldId()){
              $arr = $this->setMeanAndMedian($arr);
              $arr["chart"] = $this->getFusionChartFromDataArr($arr);
              $this->dataArr[] = $arr;
            
              unset($arr);
              $currentNode = $obj->getFieldId();
              $arr["type"] = $obj->getRatingField()->getRatingTypeString($conn);
              $arr["field"] = $obj->getRatingField()->getDescr();
              $arr["instructor"] = $obj->getCourseInstructorAssociation($conn)->getInstructor()->getLastName();
              $arr["typeObj"] = $obj->getRatingField()->getEnumItem($conn);
            }
            
            if (isset($arr[$obj->getRating()])) $arr[$obj->getRating()] += $obj->getNumber();
            else $arr[$obj->getRating()] = $obj->getNumber();
            break;
        }
      }
      
      // for the last critique field
      if ($_prv){
        $arr = $this->setMeanAndMedian($arr);
        // $arr["NA"] = number who did not respond to this question
        $arr["chart"] = $this->getFusionChartFromDataArr($arr);
        $this->dataArr[] = $arr;
      }
      
      $this->aggregatedRating = $this->calcAggregatedRating($this->dataArr);
    }
    else
    {
      $this->forward404();
    }
  }
  
  public function executeCommenting(sfWebRequest $request)
  {
    $this->buildSubmenu($request, subMenuOptions::COURSE_COMMENTING);
    
    $id = $request->getParameter("id");
    $conn = Propel::getConnection();
    $this->courseObj = CoursePeer::retrieveByPK($id, $conn);
    
    if (!is_object($this->courseObj)) $this->forward404("course object not found");
    
    $this->commentList = $this->getCommentList($this->courseObj->getId());
    //$this->commentList = $this->courseObj->getCourseComments(null, $conn);
  }
  
  /**
   * Ajax request to comment submission
   * @param sfWebRequest $request
   */
  public function executeAjaxCommentSubmission(sfWebRequest $request)
  {
    if ($request->isMethod(sfRequest::POST)){
      if (!$request->hasParameter("my_comment") || trim($request->getParameter("my_comment"))=="") {
        echo "Comment cannot be empty.";
      } elseif (!$request->hasParameter("term")) {
        echo "Must choose a term.";
      } elseif (!$request->hasParameter("year")) {
        echo "Must choose a year.";
      } elseif (!$request->hasParameter("security") || trim($request->getParameter("security"))==""){
        echo "Must type in the security string.";
      } else {
        
        // first, check for security string
        $code = $_SESSION['securityImage'];
        if (trim($request->getParameter("security")) != $code){
          echo "Security string does not match.";
          return sfView::SUCCESS;
        }
        
        // second, get the course object
        $id = $request->getParameter("id");
        $conn = Propel::getConnection();
        $courseObj = CoursePeer::retrieveByPK($id, $conn);
        if (!is_object($courseObj)) {
          echo "Error with comment submission. Please try again later.";
          return sfView::SUCCESS;
        }
        
        // third, check for spam
        
        $c = new Criteria();
        $year = $request->getParameter("year");
        $term = $request->getParameter("term");
        $crit = $c->getNewCriterion(CourseCommentPeer::APPLIES_TO, $year.$term);
        $c->addAnd($crit);
        $_list = $courseObj->getCourseComments($c, $conn, true);
        
        $ip = $_SERVER['REMOTE_ADDR'];
        $isSpam = false;
        foreach ($_list as $commentObj){
          if ($commentObj->getIp() == $ip){
            $isSpam = true;
            break;
          }
        }
        if ($isSpam){
          echo "You cannot comment on the same semester twice!";
          return sfView::SUCCESS;
        }
        
        // now we can save
        try {
          $_comment = trim($request->getParameter("my_comment"));
          $date = date('Y-m-d H:i:s');
          
          $newComment = new CourseComment();
          $newComment->setComment($_comment);
          $newComment->setAppliesTo($year.$term);
          $newComment->setApproved(0);
          $newComment->setCourse($courseObj);
          $newComment->setIp($ip);
          $newComment->setInputDt($date);
          $newComment->save($conn);
          
          // send notification
          $msg = "A new comment on [course=".$courseObj->getId()."; term=".$year.$term."] has been submitted by ".
            $ip." on ".$date.".\n\n";
          $msg .= "Below is the main body of the comment:\n\n".$_comment;
          $msg .= "\n\nPlease access the siteadmin module: http://courses.skule.ca/siteadmin to approve the submission.";
          helperFunctions::sendEmailNotice("Comment Submission", $msg);
          echo "Submission successful. Pending moderator review.
          <script type='text/javascript'>eval(\"document.getElementById('commentInputBtns').style.display='none'; document.getElementById('commentSuccessBtns').style.display='block';\")</script>";
          return sfView::SUCCESS;
          
        } catch (Exception $e){
          echo "Error with comment submission. Please try again later.";
          helperFunctions::sendEmailNotice("Comment Submission Error", $e->getMessage());
          return sfView::SUCCESS;
        }
      }
    }
  }
  
  public function executeExam(sfWebRequest $request)
  {
    $this->buildSubmenu($request, subMenuOptions::COURSE_EXAM);
    
    $id = $request->getParameter("id");
    $conn = Propel::getConnection();
    $this->courseObj = CoursePeer::retrieveByPK($id, $conn);
    
    if (!is_object($this->courseObj)) $this->forward404();
    
    if ($request->hasParameter("year") && trim($request->getParameter("year"))!="")
    {
      $this->year = $request->getParameter("year");
      
      $results = ExamPeer::getExamsForYearAndCourseId($id, $this->year, $conn);
      
      if (count($results)==0) $this->forward404();
      
      $examArr = array();
      $testArr = array();
      $quizArr = array();
      $psetArr = array();
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
          case EnumItemPeer::PROBLEM_SET:
            $psetArr[] = array("descr"=>$exam->getDescr(), "path"=>$exam->getFilePath());
            break;
        }
      }
      
      if (count($examArr)!=0) $this->examArr=$examArr;
      if (count($testArr)!=0) $this->testArr=$testArr;
      if (count($quizArr)!=0) $this->quizArr=$quizArr;
      if (count($psetArr)!=0) $this->psetArr=$psetArr;
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
      $arr["mean"] = helperFunctions::findMean(1, $item->getDescr(), $arr);
      $arr["median"] = helperFunctions::findMedian(1, $item->getDescr(), $arr);
    } else {
      // FIXME type not supported
      throw new Exception ("type not supported");
    }

    return $arr;
  }
  
  private function getFusionChartFromDataArr($arr){
    $FC = new FusionCharts("Column2D","500","350",null,true);
	$FC->setSWFPath("/fusionCharts_swf/");
	
	$strParam="xAxisName=Rating;yAxisName=Number;decimalPrecision=0;formatNumberScale=1";
	$FC->setChartParams($strParam);
	
	if (isset($arr["NA"])) {
	  $FC->addChartData($arr["NA"], "name=N/R");
	}
	
	$item = $arr["typeObj"];
    if ($item->getId() == EnumItemPeer::RATING_BOOLEAN){
      for ($i=0; $i<2; $i++) $FC->addChartData($arr[$i], "name=$i");
    } elseif ($item->getParentId() == EnumItemPeer::RATING_SCALE){
      for ($i=0; $i<$item->getDescr(); $i++) $FC->addChartData($arr[$i], "name=$i");
    } else {
      // FIXME type not supported
      throw new Exception ("type not supported");
    }

	return $FC;
  }
  
  private function getCommentList($courseId)
  {
    $pagenumber = 1;
    if($this->hasRequestParameter('page')){
      $pagenumber = $this->getRequestParameter('page');
    }
  	$pager = new sfPropelPager('CourseComment', 15);
  	$c = new Criteria();
  	$crit1 = $c->getNewCriterion(CourseCommentPeer::COURSE_ID, $courseId);
  	$crit2 = $c->getNewCriterion(CourseCommentPeer::APPROVED, 1);
  	$c->addAnd($crit1);
  	$c->addAnd($crit2);
  	$c->addAscendingOrderByColumn(CourseCommentPeer::INPUT_DT);
  	
    $pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
  
  private function buildSubmenu(sfWebRequest $request, $option=subMenuOptions::COURSE)
  {
    if (!$request->hasParameter("id") || trim($request->getParameter("id"))=="") $this->forward404();
    
    // set cookie to remember
    $id = $request->getParameter("id");
    $this->getResponse()->setCookie('courseId', $id);
    
    $conn = Propel::getConnection();
    
    $submenu = new subMenu($option);
    $submenu->setCourseId($id);
    
    // get rating data
    $this->ratingYearArray = AutoCourseRatingPeer::getAvailableYearsForCourseId($id, $conn);
    $submenu->setRatingYearArray($this->ratingYearArray);
    // get exam data
    $this->examYearArray = ExamPeer::getAvailableYearsForCourseId($id, $conn);
    $submenu->setExamYearArray($this->examYearArray);
    
    $this->submenu = $submenu->get();
  }

}
