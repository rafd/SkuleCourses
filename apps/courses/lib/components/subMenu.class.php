<?php

class subMenu
{
  private $_courseId;
  private $_menuOption;
  private $_examYearArray;
  private $_ratingYearArray;
  
  public function __construct($subMenuOption)
  {
    // load helpers for url
    sfProjectConfiguration::getActive()->loadHelpers(array("Url"));
    sfProjectConfiguration::getActive()->loadHelpers(array("Tag"));
    
    $this->_menuOption=$subMenuOption;
  }
  
  public function setCourseId($id)
  {
    $this->_courseId = $id;
    
    $conn = Propel::getConnection();
    //$courseObj = CoursePeer::retrieveByPK($id, $conn);
    
    // get rating data
    $this->_ratingYearArray = CourseRatingPeer::getAvailableYearsForCourseId($id, $conn);
    
    // get exam data
    $this->_examYearArray = ExamPeer::getAvailableYearsForCourseId($id, $conn);
  }
  
  public function get()
  {
    $returnStr = "<div id='submenu'>";
    
    switch ($this->_menuOption)
    {
      case subMenuOptions::BLANK:
        break;
      case subMenuOptions::SINGLE_COURSE:
        $returnStr .= "<li>".link_to($this->_courseId, "course/index?id=".$this->_courseId)."</li>";
        
        // critique
        $returnStr .= "<li><div class='popupmenu' id='subCritique' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>";
        if (count($this->_ratingYearArray)==0){
          $returnStr .= "<a>None Available</a>";
        } else {
          foreach ($this->_ratingYearArray as $year){
            $returnStr .= link_to($year, "course/critique?id=".$this->_courseId."&year=".$year);
          }
        }
        $returnStr .= "</div>
        	<a onmouseover='mopen(\"subCritique\")' onmouseout='mclosetime()'>Course Critique</a>
        </li>";
        
        // exams
        $returnStr .= "<li><div class='popupmenu' id='subExam' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>";
        if (count($this->_examYearArray)==0){
          $returnStr .= "<a>None Available</a>";
        } else {
          foreach ($this->_examYearArray as $year){
            $returnStr .= link_to($year, "course/exam?id=".$this->_courseId."&year=".$year);
          }
        }
        $returnStr .= "</div>
        	<a onmouseover='mopen(\"subExam\")' onmouseout='mclosetime()'>Tests/Exams</a>
        </li>";
        $returnStr .= "<br/>";
        break;
      case subMenuOptions::SEARCH_RESULT:
        //TODO
        break;
    }
    
    $returnStr .= "<li>".link_to("Search","search/index")."</li>
    <li>".link_to("Maintenance","maintenance/index")."</li></div>";
    
    return $returnStr;
  }
}

class subMenuOptions
{
  const BLANK = 1;
  const SINGLE_COURSE = 2;
  const SEARCH_RESULT = 3;
}