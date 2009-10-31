<?php

class invisibleActions extends sfActions
{
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
 
    //Tell the browser what kind of file is come in 
    header("Content-Type: image/jpeg"); 

    //Output the newly created image in jpeg format 
    ImageJpeg($image);
   
    //Free up resources
    ImageDestroy($image); 
	exit();
  }
  
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
          exit();
        }
        
        $year = $request->getParameter("year").$request->getParameter("term");
        
        // make directories if not exist
        if (!is_dir("exams/custom")) {
          if (!mkdir("exams/custom")) {
            echo "<input type='text' id='status' value='Moving'/>";
            exit();
          }
        }
        $tgt_path = "exams/custom/".$year;
        if (!is_dir($tgt_path)) {
          if (!mkdir($tgt_path)) {
            echo "<input type='text' id='status' value='Moving'/>";
            exit();
          }
        }

        // unique filename
        $courseId = $request->getParameter("course");
        $examType = $request->getParameter("type");
        $examTypeAbbr = HelperFunctions::getExamTypeAbbr($examType);
        $fileName = substr($courseId,0,6).'_'.substr($year,0,4).'_'.$examTypeAbbr.'_'.time().".pdf";

	    if (move_uploaded_file($file['tmp_name'], $tgt_path."/".$fileName))
	    {
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
          $msg = "Submitted by ".$ip." [title=".$exam->getDescr()."; course=".$exam->getCourseId()."; year=".$exam->getYear()."; id=".$exam->getId()."]";
	      helperFunctions::sendEmailNotice("Exam Submission", $msg);
	      
	      echo "<input type='text' id='status' value='Success'/>";
	    }
	    else echo "<input type='text' id='status' value='Moving'/>";
      } else echo "<input type='text' id='status' value='PDF'/>";
    }
    
    exit();
  }
}