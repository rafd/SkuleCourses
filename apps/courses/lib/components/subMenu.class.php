<?php

class subMenu
{
  private $_courseId;
  private $_menuOption;
  private $_examYearArray;
  private $_ratingYearArray;
  private $_subOrderSelection;
  
  public function __construct($subMenuOption, $subOrderSelection=null)
  {
    // load helpers for url
    sfProjectConfiguration::getActive()->loadHelpers(array("Url"));
    sfProjectConfiguration::getActive()->loadHelpers(array("Tag"));
    
    $this->_menuOption=$subMenuOption;
    $this->_subOrderSelection = $subOrderSelection;
  }
  
  public function setCourseId($id)
  {
    $this->_courseId = $id;
    
    $conn = Propel::getConnection();
    //$courseObj = CoursePeer::retrieveByPK($id, $conn);
    
    // get rating data
    $this->_ratingYearArray = AutoCourseRatingPeer::getAvailableYearsForCourseId($id, $conn);
    
    // get exam data
    $this->_examYearArray = ExamPeer::getAvailableYearsForCourseId($id, $conn);
  }
  
  public function get()
  {
    $returnStr = "<div id='submenu'>";
    
    switch ($this->_menuOption)
    {
      case subMenuOptions::BLANK:
        $returnStr .= $this->getMenuStud();
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
        $returnStr .= $this->getMenuStud();
        break;
      case subMenuOptions::SEARCH_RESULT:
        //TODO
        $returnStr .= $this->getMenuStud();
        break;
      case subMenuOptions::MAINTENANCE:
        $returnStr .= $this->getMenuStud();
        foreach (subMenuOptions::getMaintenanceSections() as $key => $value)
        {
          $returnStr .= "<li>".link_to($key, $value)."</li>";
        }
        $returnStr.="<br/>";
        break;
    }
    
    $returnStr .= "</div>";
    
    return $returnStr;
  }
  
  private function getMenuStud()
  {
    return "<li>".link_to("Search","search/index")."</li><br/>
    <li>".link_to("Maintenance","maintenance/index")."</li>";
  }
}

class subMenuOptions
{
  const BLANK = 1;
  const SINGLE_COURSE = 2;
  const SEARCH_RESULT = 3;
  const MAINTENANCE = 4;
  
  public static function getMaintenanceSections()
  {
    return array("Courses"=>"maintenance/courses", 
    "Instructors"=>"maintenance/instructors",
    "Departments"=>"maintenance/departments",
    "Disciplines"=>"maintenance/disciplines",
    "Rating Criteria"=>"maintenance/ratingfields",
    "Import History"=>"maintenance/importhistory",
    "Import Ratings"=>"maintenance/importratings");
  }
}