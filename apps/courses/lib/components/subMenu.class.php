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
    
    $courseId = sfContext::getInstance()->getRequest()->getCookie('courseId');
    if ($courseId) $this->_courseId = $courseId;
  }
  
  public function setCourseId($id)
  {
    $this->_courseId = $id;
  }
  
  public function setExamYearArray($arr)
  {
    $this->_examYearArray = $arr;
  }
  
  public function setRatingYearArray($arr)
  {
    $this->_ratingYearArray = $arr;
  }
  
  public function get()
  {
    $returnStr = "<div id='submenu'>";
    $returnStr .= $this->getMenuStud();
    
    switch ($this->_menuOption)
    {
      case subMenuOptions::TYPICAL:
        
	    $conn = Propel::getConnection();
	    
	    if (isset($this->_courseId)) {
	        if (!isset($this->_ratingYearArray)) {
		      // get rating data
	          $this->_ratingYearArray = AutoCourseRatingPeer::getAvailableYearsForCourseId($this->_courseId, $conn);
		    }
		    if (!isset($this->_examYearArray)) {
		      // get exam data
		      $this->_examYearArray = ExamPeer::getAvailableYearsForCourseId($this->_courseId, $conn);
		    }
	        
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
	        	<a onmouseover='mopen(\"subCritique\")' onmouseout='mclosetime()'>Course Critiques</a>
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
	        	<a onmouseover='mopen(\"subExam\")' onmouseout='mclosetime()'>Exams Repository</a>
	        </li><br/>";
	    }
        
        break;
      case subMenuOptions::MAINTENANCE:
        
        $returnStr .= "<li>".link_to("Maintenance","maintenance/index")."</li>";
        
        foreach (subMenuOptions::getMaintenanceSections() as $key => $value)
        {
          $returnStr .= "<li>".link_to($key, $value)."</li>";
        }
        $returnStr.="<br/>";
        
        break;
      case subMenuOptions::BLANK:
        break;
    }
    
    $returnStr .= "</div>";
    
    return $returnStr;
  }
  
  private function getMenuStud()
  {
    return "<li>".link_to("Search","search/index")."</li><br/>";
  }
}

class subMenuOptions
{
  const TYPICAL = 1;
  const MAINTENANCE = 2;
  const BLANK = 3;
  
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