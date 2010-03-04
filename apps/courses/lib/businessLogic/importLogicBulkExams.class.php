<?php

/**
 * Automatically browses through a designated directory and look through all files
 * that satisfies the naming convention: courseName_year_exam
 * e.g. aer205f_2009_exam.pdf
 *
 *
 * @author     Jimmy Lu
 */
class importLogicBulkExams
{
  private $_dir;
  private $_year;

  public function __construct($dir, $year)
  {
    if (substr($dir, -1)!='/') $dir .= '/';
    $this->_dir = $dir;
    $this->_year = $year;
  }

  /**
   * Start browsing the directory and register files
   *
   * @return       Exception code = 400 if directory non-existent
   *               An array containing list of non-imported files if successful
   */
  public function doImport()
  {
    if (!file_exists($this->_dir)) throw new Exception("Directory Non-Existent", 400);

    $errArr = array();
    $handler = opendir($this->_dir);

    // TODO: does not do recrusive listing, do we need that?
    while (false !== ($file = readdir($handler))) {

      if (isset($count)) unset($count);

      if ($file != '.' && $file != '..') {
        $err = false;

        $pos = strrpos($file, '.');
        $fileName = strtoupper(substr($file, 0, $pos));

        $token = strtok($fileName, '_');
        $counter = 0;

        while (false !== $token)
        {
          switch ($counter){
            case 0:
              if (strlen($token) != 7) $err = true;
              $rawCourseCode = $token;
              break;
            case 1:
              if ($token != substr($this->_year, 0, 4)) $err = true;
              break;
            case 2:
              if ($token != "EXAM")
              {
                if (substr($token, 0, 5) == "EXAM(") {
                  // name could have the following syntax: AER205S_2009_EXAM(2).pdf
                  $count = strtok($token, '(');
                  $count = strtok('(');
                  $count = strtok($count, ')');
                  if ($count===false || !is_numeric($count)) $err = true;
                } else $err = true;
              }
              break;
          }
          $token = strtok("_");
          $counter++;
        }

        if ($counter != 3 || $err) $err = true;
        else {
          // assume course code is 7 chars in length with the last char being either S, F or Y
          $part1 = substr($rawCourseCode, 0, 6);  //e.g. AER205
          $part2 = substr($rawCourseCode, 6, 1);  //e.g. F

          switch ($part2){
            case "F":
            case "S":
              $courseCode = $part1."H1";
              $descr = $part1." ".$this->_year." Official Exam".(isset($count)?' ('.$count.')':'');
              break;
            case "Y":
              $courseCode = $part1."Y1";
              $descr = $part1." ".$this->_year." Official Exam".(isset($count)?' ('.$count.')':'');
              break;
            default:
              $err = true;
              break;
          }

          if (!$err)
          {
            $conn = Propel::getConnection();

            // check if we have exam of this descr already
            $examArr = ExamPeer::getExamsForYearAndCourseId($courseCode, $this->_year, $conn);
            foreach ($examArr as $ex){
              if ($ex->getType() == EnumItemPeer::EXAM && $ex->getDescr() == $descr) {
                $err = true;
                break;
              }
            }

            if (!$err)
            {
	            // first check if course exists
	            $course = CoursePeer::retrieveByPK($courseCode, $conn);
	            if (!isset($course)) {
	              $course = new Course();
	              //$course->setDeptId(substr($courseCode, 0, 3));
	              $course->setDescr($courseCode);
	              $course->setIsEng(1);
	              $course->setId($courseCode);

	              $dept = DepartmentPeer::retrieveByPK(substr($courseCode, 0, 3), $conn);
	              if (!isset($dept)) {
	                $dept = new Department();
	                $dept->setId(substr($courseCode, 0, 3));
	                $dept->setDescr(substr($courseCode, 0, 3));
	                $dept->save($conn);
	              }
	              $course->setDepartment($dept);

	              $course->save($conn);
	            }

	            // register exam
	            $exam = new Exam();
	            $exam->setType(EnumItemPeer::EXAM);
	            $exam->setDescr($descr);
	            $exam->setCourseId($courseCode);
	            $exam->setFilePath($this->_dir.$file);
	            $exam->setYear($this->_year);
	            $exam->save();
            }
          }
        }

        if ($err) $errArr[] = $file;
      }
    }

    closedir($handler);
    return $errArr;

  }
}