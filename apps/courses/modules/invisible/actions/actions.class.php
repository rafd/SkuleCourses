<?php

class invisibleActions extends sfActions
{
  /**
   * 
   */
  public function executeBulkExamsHandler(sfWebRequest $request)
  {
    /*
	 * check http basic authentication
	 */
	if ( !isset($_SERVER['PHP_AUTH_USER']))
	{
	  echo 'Access denied';
	  return sfView::HEADER_ONLY;
	}
	else
	{
	  $username = $_SERVER['PHP_AUTH_USER'];
	  $password = $_SERVER['PHP_AUTH_PW'];
	
	  // get authorization info from configs
	  include(sfContext::getInstance()->getConfigCache()->checkConfig('config/skuleGlobal.yml'));
	
	  if ( $username != $appletUploaderParams['username'] or $password != $appletUploaderParams['password'] ){ 
	    echo "Authentication failed!";
	    return sfView::HEADER_ONLY;
	  }
	}
	
	/*
	 * check if something has been uploaded
	 */
	if ( !isset($_FILES) or !count ($_FILES) or !isset ( $_FILES['uploadfile'] ) )
	{
	  echo "No file data received (File might be to large).";
	  return sfView::HEADER_ONLY;
	}
	if (!isset($_POST['year'])){
	  echo "No year info received.";
	  return sfView::HEADER_ONLY;
	}
	
	/*
	 * check file size
	 */
	$maxfilesize = 10000; //kByte
	if ($_FILES['uploadfile']['size'] > $maxfilesize*1024)
	{
	  echo "File exceeds maximum filesize: $maxfilesize kByte.";
	  return sfView::HEADER_ONLY;
	}
	
	// Check if the target directory exists
	// If not, we create the directory
	
	$year = $_POST['year'];
	$tgt_path = "exams/bulk/".$year;
	
	//make directories
	if (!is_dir($tgt_path)) {
	  if (!mkdir($tgt_path)){
	    echo "Error at creating directories";
	    return sfView::HEADER_ONLY;
	  }
	}
	
	/*
	 * get file info
	 */
	$tmp_name  = $_FILES['uploadfile']['tmp_name'];
	$file_name = $_FILES['uploadfile']['name'];
	
	/*
	 * check file name for validity
	 */
	
	if ( strstr($file_name, ".." ) )
	{
	  echo "Illegal filename.";
	  return sfView::HEADER_ONLY;
	}
	
	$tgt_path = $tgt_path."/".$file_name;
	
	/*
	 * check if file exists
	 */
	if ( file_exists ( $tgt_path) )
	{
	  echo "File {$_FILES['uploadfile']['name']} exists - not uploaded.";
	  return sfView::HEADER_ONLY;
	}
	
	/*
	 * move temporary file to target location and check for errors
	 */
	if ( !move_uploaded_file( $tmp_name, $tgt_path ) )
	{
	  echo "Problem occurred during upload.";
	  return sfView::HEADER_ONLY;
	}
	
	/*
	 * report upload succes
	 */
	echo "Upload successful.";
	return sfView::HEADER_ONLY;
  }
  
  /**
   * 
   */
  public function executeBulkExamsRegistration(sfWebRequest $request)
  {
	/*
	 * check http basic authentication
	 */
	if ( !isset($_SERVER['PHP_AUTH_USER']))
	{
	  echo 'Access denied';
	  return sfView::HEADER_ONLY;
	}
	else
	{
	  $username = $_SERVER['PHP_AUTH_USER'];
	  $password = $_SERVER['PHP_AUTH_PW'];
	
	  // get authorization info from configs
	  include(sfContext::getInstance()->getConfigCache()->checkConfig('config/skuleGlobal.yml'));
	
	  if ( $username != $appletUploaderParams['username'] or $password != $appletUploaderParams['password'] ){ 
	    echo "Authentication failed!";
	    return sfView::HEADER_ONLY;
	  }
	}
	
	/*
	 * check if all necessary parameters have been posted
	 */
	if (!isset($_POST['year'])) die ("No year info received.");
	
	$logicObj = new importLogicBulkExams("exams/bulk/".$_POST['year'], $_POST['year']);
	try{
	  $nonImportArr = $logicObj->doImport();
	} catch (Exception $e){
	  echo $e->getMessage();
	  return sfView::HEADER_ONLY;
	}
	
	echo "Registration completed.\n\n";
	echo "The following files have NOT been registered:\n";
	foreach ($nonImportArr as $f){
	  echo "- ".$f."\n";
	}
	return sfView::HEADER_ONLY;
  }
  
  /**
   * Randomly generate a security string and save into session variable "securityImage"
   * Then outputs a JPEG image of the security string
   * @param sfWebRequest $request
   */
  public function executeSecurityImage(sfWebRequest $request)
  {
    $font = 'monofont.ttf';

    $characters = 6;
    $width = 120;
    $height = 40;
    
    // code
  	/* list all possible characters, similar looking characters and vowels have been removed */
    $possible = '23456789bcdfghjkmnpqrstvwxyz';
    $code = '';
    $i = 0;
    while ($i < $characters) { 
      $code .= substr($possible, mt_rand(0, strlen($possible)-1), 1);
      $i++;
    }
    
    $_SESSION['securityImage'] = $code;
    //$this->getUser()->setAttribute("securityImage", $code);
     
    $image = $this->createImage($code);
 
    //Tell the browser what kind of file is come in 
    header("Content-Type: image/jpeg"); 

    //Output the newly created image in jpeg format 
    ImageJpeg($image);
   
    //Free up resources
    ImageDestroy($image); 
	return sfView::NONE;
  }
  
  /**
   * Reuse the code from session variable "securityImage"
   * Outputs a JPEG image of the security string
   * @param sfWebRequest $request
   */
  public function executeCurrentSecurityImage(sfWebRequest $request)
  {
    $image = $this->createImage($_SESSION['securityImage']);
 
    //Tell the browser what kind of file is come in 
    header("Content-Type: image/jpeg"); 

    //Output the newly created image in jpeg format 
    ImageJpeg($image);
   
    //Free up resources
    ImageDestroy($image); 
	return sfView::NONE;
  }
  
  /**
   * Take the exam submission request and save it into database
   * @param sfWebRequest $request
   */
  public function executeSubmitExam(sfWebRequest $request)
  {
    //TODO: set up uniform display name for each exam/test uploaded so things don't get messy.
    //i.e. instead of letting the user choose the display name, we'll appropriate it
    //requested by David
    set_time_limit(0);
    if ($request->isMethod(sfRequest::POST) && $request->hasParameter('security') 
      && $request->hasParameter('year') && $request->hasParameter('descr'))
    {
      
      $files = $request->getFiles();
      $file = $files['file'];
      $descr = $request->getParameter('descr');
     
      if (isset($file) && strtoupper(substr($file['name'], -3, 3)) == 'PDF' && !helperFunctions::isMaliciousString($descr)) {
        
        if ($request->getParameter("security") != $_SESSION['securityImage']){
          echo "<input type='text' id='status' value='Security'/>";
          return sfView::NONE;
        }
        
        $year = $request->getParameter("year").$request->getParameter("term");
        
        // make directories if not exist
        if (!is_dir("exams/custom")) {
          if (!mkdir("exams/custom")) {
            echo "<input type='text' id='status' value='Moving'/>";
            return sfView::NONE;
          }
        }
        $tgt_path = "exams/custom/".$year;
        if (!is_dir($tgt_path)) {
          if (!mkdir($tgt_path)) {
            echo "<input type='text' id='status' value='Moving'/>";
            return sfView::NONE;
          }
        }

        // unique filename
        $courseId = $request->getParameter("course");
        $examType = $request->getParameter("type");
        $examTypeAbbr = HelperFunctions::getExamTypeAbbr($examType);
        $fileName = substr($courseId,0,6).'_'.substr($year,0,4).'_'.$examTypeAbbr.'_'.time().".pdf";

	    if (move_uploaded_file($file['tmp_name'], $tgt_path."/".$fileName))
	    {
	      try {
	        // register in db
	        $conn = Propel::getConnection();
	      
	        $exam = new Exam();
	        $exam->setCourseId($courseId);
	        $exam->setFilePath($tgt_path."/".$fileName);
	        $exam->setYear($year);
	        $exam->setType($examType);
	        $exam->setDescr($descr);
	        $exam->save($conn);
	      
	        // send notification email
	        $ip = $_SERVER['REMOTE_ADDR'];
            $msg = "A new exam on [title=".$exam->getDescr()."; course=".$exam->getCourseId()."; year=".$exam->getYear()."; id=".$exam->getId()."] has been submitted by ".$ip.
              " on ".date('Y-m-d H:i:s').".";
	        helperFunctions::sendEmailNotice("Exam Submission", $msg);
	      
	        echo "<input type='text' id='status' value='Success'/>";
	      } catch (Exception $e){
	        echo "<input type='text' id='status' value='Saving'/>";
	        
	        // send error email
	        helperFunctions::sendEmailNotice("Exam Submission Error", $e->getMessage());
	      }
	    }
	    else echo "<input type='text' id='status' value='Moving'/>";
      } else echo "<input type='text' id='status' value='PDF'/>";
      
      return sfView::NONE;
    } else {
      $this->forward404();
    }
  }
  
  private function createImage($code){
    //Set the image width and height
    $width = 100;
    $height = 20; 

    //Create the image resource 
    $image = ImageCreate($width, $height);  

    //We are making three colors, white, black and gray
    $white = ImageColorAllocate($image, 255, 255, 255);
    $black = ImageColorAllocate($image, 0, 0, 0);
    $grey = ImageColorAllocate($image, 204, 204, 204);

    //Make the background black 
    ImageFill($image, 0, 0, $black); 

    //Add randomly generated string in white to the image
    ImageString($image, 5, 20, 2, $code, $white); 

    //Throw in some lines to make it a little bit harder for any bots to break 
    ImageRectangle($image,0,0,$width-1,$height-1,$grey); 
    //imageline($image, 0, $height/2, $width, $height/5, $grey); 
    imageline($image, $width/3, 0, $width/6, $height, $grey);
    imageline($image, $width/3, $height/2, $width/2, $height, $grey);
    imageline($image, $width/2, $height/2, $width, $height, $grey);
    
    return $image;
  }
}