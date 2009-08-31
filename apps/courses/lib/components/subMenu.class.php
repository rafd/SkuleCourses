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
      case subMenuOptions::ERROR:
        // go straight to next case
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
	            $returnStr .= link_to(helperFunctions::translateTerm($year), "course/critique?id=".$this->_courseId."&year=".$year);
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
	            $returnStr .= link_to(helperFunctions::translateTerm($year), "course/exam?id=".$this->_courseId."&year=".$year);
	          }
	        }
	        $returnStr .= "<a onclick='grayout(\"submitExam\");'>Submit Exams</a>";
	        $returnStr .= "</div>
	        	<a onmouseover='mopen(\"subExam\")' onmouseout='mclosetime()'>Exams Repository</a>
	        </li><br/>";
	    }
	    
	    if ($this->_menuOption == subMenuOptions::ERROR){
	      $returnStr .= "<li>Error</li>";
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
    $conn = Propel::getConnection();
    $arr = EnumItemPeer::getAllForParentNodeId(EnumItemPeer::EXAM_TYPES_NODE_ID);
    
    $str = "<div class='grayout_dialog' id='submitExam'>
    <script type='text/javascript'>
    	function securityFrameOnLoad(){
    		if (hidSecurityFrame.document.getElementById('status')) {
    			var status = hidSecurityFrame.document.getElementById('status').value; 
    			if (status == 'Success'){
    				document.getElementById('inputButtons').style.display = 'none';
    				document.getElementById('successButtons').style.display = 'block';
    				dispStatus('Submission Successful');
    			} else if (status == 'Security'){
    				dispStatus('Security string does not match.');
    			} else {
    				dispStatus('An error occurred. Please try again later.');
    			}
    		}
    	}
    	
    	function submitExamOnSubmit(){
    		// check that everything has been filled in before submission
    		var year = trim(document.exam_submission.year.value);
    		if (year == ''){
    			dispStatus('You must specify a year.');
    			return false;
    		}
    		if (isNaN(year) || year < 1990 || year > 2020){
    			dispStatus('Year must be bigger than 1990 and smaller than 2020.');
    			return false;
    		}
    		if (trim(document.exam_submission.security.value) == ''){
    			dispStatus('You must type in the security string.');
    			return false;
    		}
    		var fileName = trim(document.exam_submission.file.value);
    		if (fileName == ''){
    			dispStatus('No file has been selected.');
    			return false;
    		}
    		if (fileName.lastIndexOf('pdf')==-1 && fileName.lastIndexOf('PDF')==-1){
    			dispStatus('Only a PDF file can be submitted.');
    			return false;
    		}

    		return true;
    	}
    	
    	function dispStatus(msg){
    		document.getElementById('statusSpan').style.display = 'block';
    		document.getElementById('statusSpan').innerHTML = msg;
    	}
    	
    	function cancelAction(){
    		grayout('submitExam');
    		document.getElementById('statusSpan').style.display = 'none';
    		document.getElementById('inputButtons').style.display = 'block';
    		document.getElementById('successButtons').style.display = 'none';
    		document.exam_submission.security.value='';
    	}
    </script>
    <h3>Submit Exam</h3>
    <form name='exam_submission' method='post' enctype='multipart/form-data' action='".url_for("invisible/submitExam")."' target='hidSecurityFrame'>
	    <table>
		    <tr><td width='100'>Course:</td><td align='left'>{$this->_courseId}
		    <input type='hidden' name='course' value='{$this->_courseId}'/></td></tr>
		    <tr><td>Type:</td><td align='left'><select name='type' style='width:100px'>";
    
    foreach ($arr as $enum){
      $str .= "<option value='{$enum->getId()}'>{$enum->getDescr()}</option>";
    }

    $str .= "</select></td></tr>
		    <tr><td>Year:</td><td align='left'><input type='text' name='year' style='width:100px'/></td></tr>
		    <tr><td>Term:</td><td>
		    	<input type='radio' name='term' id='radioFall' value='9' CHECKED><label for='radioFall'>Fall</label>
		    	<input type='radio' name='term' id='radioSummer' value='5'><label for='radioSummer'>Summer</label>
		    	<input type='radio' name='term' id='radioWinter' value='1'><label for='radioWinter'>Winter</label>
		    </td></tr>
		    <tr><td>File:</td><td align='left'><input type='file' name='file' /></td></tr>
		    <tr><td>&nbsp;</td></tr>
		    <tr><td></td><td align='left'><img src='".url_for('invisible/securityImage')."'/></td></tr>
		    <tr><td>Security String:</td><td><input type='text' name='security' /></td></tr>
	    </table><br/>
    	<div id='inputButtons'><input type='submit' onclick='return submitExamOnSubmit();' value='Submit'/><input type='button' onclick='cancelAction()' value='Cancel'/></div>
    	<div id='successButtons' style='display:none'><input type='button' onclick='cancelAction()' value='Close'/></div>
    </form>
    <iframe name='hidSecurityFrame' style='display:none' onload='securityFrameOnLoad()';></iframe>
    <br/><span style='display:none' id='statusSpan'>Please wait...</span>
    </div>
    <li>".link_to("Search","search/index")."</li><br/>";
    
    return $str;
  }
}

class subMenuOptions
{
  const TYPICAL = 1;
  const MAINTENANCE = 2;
  const BLANK = 3;
  const ERROR = 4;
  
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