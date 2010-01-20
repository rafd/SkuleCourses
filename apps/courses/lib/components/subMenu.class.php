<?php

//TODO: convert this class into a symfony partial and place it in the templates folder

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
    $returnStr = "<div id='left'>";
    $returnStr .= $this->getMenuStud();
    
    if ($this->_menuOption < subMenuOptions::MAINTENANCE)
    {
        // courses and search menu styling
      
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
	        
		    if ($this->_menuOption == subMenuOptions::COURSE)
		      $returnStr .= "<dl><dt>".$this->_courseId."</dt>";
		    else
	          $returnStr .= "<dl><dt>".link_to($this->_courseId, "course/index?id=".$this->_courseId)."</dt>";
	        
	        // critique
	        $returnStr .= "<div class='popupmenu' id='subCritique' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>";
	        if (count($this->_ratingYearArray)==0){
	          $returnStr .= "<a>None Available</a>";
	        } else {
	          foreach ($this->_ratingYearArray as $year){
	            $returnStr .= link_to(helperFunctions::translateTerm($year), "course/critique?id=".$this->_courseId."&year=".$year);
	          }
	        }
	        if ($this->_menuOption == subMenuOptions::COURSE_CRITIQUE)
	          $returnStr .= "</div><dd onmouseover='mopen(\"subCritique\")' onmouseout='mclosetime()' class='pointer'>Course Critiques</dd>";
	        else
	          $returnStr .= "</div><dd onmouseover='mopen(\"subCritique\")' onmouseout='mclosetime()' class='pointer'><a>Course Critiques</a></dd>";
	        
	        // commenting
	        if ($this->_menuOption == subMenuOptions::COURSE_COMMENTING)
	          $returnStr .= "<dd>Course Commenting</dd>";
	        else
	          $returnStr .= "<dd>".link_to("Course Commenting", "course/commenting?id=".$this->_courseId)."</dd>";
	          
	        // exams
	        $returnStr .= "<div class='popupmenu' id='subExam' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>";
	        if (count($this->_examYearArray)==0){
	          $returnStr .= "<a>None Available</a>";
	        } else {
	          foreach ($this->_examYearArray as $year){
	            $returnStr .= link_to(helperFunctions::translateTerm($year), "course/exam?id=".$this->_courseId."&year=".$year);
	          }
	        }
	        $returnStr .= "<a onclick='grayout(\"submitExam\");'>Submit Exams</a>";
	        if ($this->_menuOption == subMenuOptions::COURSE_EXAM)
	          $returnStr .= "</div><dd class='pointer' onmouseover='mopen(\"subExam\")' onmouseout='mclosetime()'>Exams Repository</dd></dl>";
	        else
	          $returnStr .= "</div><dd class='pointer' onmouseover='mopen(\"subExam\")' onmouseout='mclosetime()'><a>Exams Repository</a></dd></dl>";
	    }
    } 
    elseif ($this->_menuOption >= subMenuOptions::MAINTENANCE && $this->_menuOption < subMenuOptions::ERROR)
    {
        
        if ($this->_menuOption == subMenuOptions::MAINTENANCE || $this->_menuOption == subMenuOptions::MAINTENANCE_LOGIN)
          $returnStr .= "<dl><dt>Maintenance</dt>";
        else
          $returnStr .= "<dl><dt>".link_to("Maintenance","siteadmin/index")."</dt>";
        
        if ($this->_menuOption != subMenuOptions::MAINTENANCE_LOGIN) {
	        foreach (subMenuOptions::getMaintenanceSections() as $key => $value)
	        {
	          $names = subMenuOptions::getMaintenanceSectionNames();
	          if ($this->_menuOption == $key){
	            $returnStr .= "<dd>".$names[$key]."</dd>";
	          } else {
	            $returnStr .= "<dd>".link_to($names[$key], $value)."</dd>";
	          }
	        }
	        $returnStr .= "<dd>".link_to("Sign Out", "siteadmin/logout")."</dd>";
        }
    } 
    elseif ($this->_menuOption == subMenuOptions::ERROR)
    {
        $returnStr .= "<dl><dt>Error</dt></dl>";
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
    		if (trim(document.exam_submission.descr.value) == ''){
    			dispStatus('You must type in the display title.');
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
    		
    		dispStatus('Please wait...');

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
    	
    	function reloadAction(){
    		document.getElementById('statusSpan').style.display = 'none';
    		document.getElementById('inputButtons').style.display = 'block';
    		document.getElementById('successButtons').style.display = 'none';
    		document.getElementById('exam_descr').value = '';
    		document.getElementById('exam_file').value = '';
    	}
    </script>
    <div class='title_bar'>Submit Exam</div>
    <form name='exam_submission' method='post' enctype='multipart/form-data' action='".url_for("invisible/submitExam")."' target='hidSecurityFrame'>
	    <table>
		    <tr><td width='100'>Course:</td><td align='left'>{$this->_courseId}
		    <input type='hidden' name='course' value='{$this->_courseId}'/></td></tr>
		    <tr><td>Type:</td><td align='left'><select name='type' style='width:100px'>";
    
    foreach ($arr as $enum){
      $str .= "<option value='{$enum->getId()}'>{$enum->getDescr()}</option>";
    }

    $str .= "</select></td></tr>
		    <tr><td>Year:</td><td align='left'><select name='year' style='width:100px'>";
    
    $date = getdate();
    for ($i=$date["year"]+1; $i>=skuleadminConst::EARLIEST_YEAR; $i--){
      $str .= ($i == $date["year"])?"<option value='$i' selected>$i</option>":"<option value='$i'>$i</option>";
    }
    
    $str .= "</select></td></tr>
		    <tr><td>Term:</td><td>
		    	<input type='radio' name='term' id='radioFall' value='9' CHECKED><label for='radioFall'>Fall</label>
		    	<input type='radio' name='term' id='radioWinter' value='1'><label for='radioWinter'>Winter</label>
		    	<input type='radio' name='term' id='radioSummer' value='5'><label for='radioSummer'>Summer</label>
		    </td></tr>
		    <tr><td>Display Title:</td><td align='left'><input type='text' name='descr' id='exam_descr' /></td></tr>
		    <tr><td>File:</td><td align='left'><input type='file' name='file' id='exam_file' /></td></tr>
		    <tr><td>&nbsp;</td></tr>
		    <tr><td></td><td align='left'><img src='".url_for('invisible/securityImage')."'/></td></tr>
		    <tr><td>Security String:</td><td><input type='text' name='security' /></td></tr>
	    </table>
    	<div id='inputButtons'>
    		<input type='submit' onclick='return submitExamOnSubmit();' value='Submit'/>
    		<input type='button' onclick='cancelAction()' value='Cancel'/>
    	</div>
    	<div id='successButtons' style='display:none'>
    		<input type='button' onclick='reloadAction()' value='Submit Another'/>
    		<input type='button' onclick='cancelAction()' value='Close'/>
    	</div>
    </form>
    <iframe name='hidSecurityFrame' style='display:none' onload='securityFrameOnLoad()';></iframe>
    <br/><span style='display:none' id='statusSpan'></span>
    </div>";
    
    if ($this->_menuOption == subMenuOptions::SEARCH)
      $str .= "<dl><dt>Search</dt></dl>";
    else
      $str .= "<dl><dt>".link_to("Search","search/index")."</dt></dl>";
          
    return $str;
  }
}

class subMenuOptions
{
  const SEARCH = 1;
  const COURSE = 2;
  const COURSE_CRITIQUE = 3;
  const COURSE_EXAM = 4;
  const COURSE_COMMENTING = 5;
  const MAINTENANCE = 10;
  const MAINTENANCE_COURSE = 11;
  const MAINTENANCE_INSTRUCTOR = 12;
  const MAINTENANCE_DEPARTMENT = 13;
  const MAINTENANCE_DISCIPLINE = 14;
  const MAINTENANCE_EXAM = 15;
  const MAINTENANCE_RATING = 16;
  const MAINTENANCE_LOGIN = 17;
  const MAINTENANCE_COMMENTING = 18;
  const ERROR = 20;
  
  public static function getMaintenanceSectionNames(){
    return array(subMenuOptions::MAINTENANCE_COURSE=>"Courses", 
    subMenuOptions::MAINTENANCE_INSTRUCTOR=>"Instructors",
    subMenuOptions::MAINTENANCE_DEPARTMENT=>"Departments",
    subMenuOptions::MAINTENANCE_DISCIPLINE=>"Disciplines",
    subMenuOptions::MAINTENANCE_EXAM=>"Exams",
    subMenuOptions::MAINTENANCE_RATING=>"Ratings",
    subMenuOptions::MAINTENANCE_COMMENTING=>"Commenting");
  }
  
  public static function getMaintenanceSections()
  {
    return array(subMenuOptions::MAINTENANCE_COURSE=>"admincourse/index", 
    subMenuOptions::MAINTENANCE_INSTRUCTOR=>"admininstructor/index",
    subMenuOptions::MAINTENANCE_DEPARTMENT=>"admindepartment/index",
    subMenuOptions::MAINTENANCE_DISCIPLINE=>"admindiscipline/index",
    subMenuOptions::MAINTENANCE_EXAM=>"adminexam/index",
    subMenuOptions::MAINTENANCE_RATING=>"adminratingCriteria/index",
    subMenuOptions::MAINTENANCE_COMMENTING=>"admincommenting/index");
  }
  
  public static function getMaintenanceSectionDetails(){
    return array(subMenuOptions::MAINTENANCE_COURSE=>"Add, modify or remove courses.", 
    subMenuOptions::MAINTENANCE_INSTRUCTOR=>"Add, modify or remove instructors.",
    subMenuOptions::MAINTENANCE_DEPARTMENT=>"Add, modify or remove departments.",
    subMenuOptions::MAINTENANCE_DISCIPLINE=>"Add, modify or remove disciplines (academic programs).",
    subMenuOptions::MAINTENANCE_EXAM=>"Add, modify or remove exams.",
    subMenuOptions::MAINTENANCE_RATING=>"Manage course ratings.",
    subMenuOptions::MAINTENANCE_COMMENTING=>"Manage course commenting.");
  }
}