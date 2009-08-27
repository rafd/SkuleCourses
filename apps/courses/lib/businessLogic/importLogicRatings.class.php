<?php

class importLogicRatings
{
  // _ratingArr[rowNumber][ratingField][rating] = number of people
  private $_ratingArr;
  // _infoArr[rowNumber]["courseCode", etc] = datum
  private $_infoArr;
  // _mappingArr[columnNumber] = ImportMapping obj
  private $_mappingArr;
  private $_year;
  
  public function __construct($year)
  {
    $this->_year = $year;
  }
  
  public function readCsv($filePath)
  {
    unset($this->_ratingArr);
    unset($this->_infoArr);
    
    $this->_mappingArr = $this->getMappingData();
    
    $rowNum = 0;
    $fh = fopen($filePath, "r");
    while (($data = fgetcsv($fh, 0, ",")) !== false)
    {
      $this->interpretData($data, $rowNum);
      $rowNum++;
    }
  }
  
  public function saveToDatabase()
  {
    if (isset($this->_infoArr) && isset($this->_mappingArr))
    {
      $err = "";
      $conn = Propel::getConnection();
      $dt = date("Y-m-d, H:i:s");
      
      $len = count($this->_infoArr);
      for ($i=0; $i<$len; $i++)
      {
        $course = CoursePeer::retrieveByPK($this->_infoArr[$i]["courseCode"]);
        if (!isset($course)){
          // new course found, save to db
          $course = new Course();
          $course->setDescr($this->_infoArr[$i]["courseName"]);
          $course->setIsEng(1);
          $course->setDeptId(substr($this->_infoArr[$i]["courseCode"], 0, 3));
          $course->setId($this->_infoArr[$i]["courseCode"]);
          $course->save($conn);
        }
        
        try {
          $instr = InstructorPeer::findInstructorByName($this->_infoArr[$i]["instrFirstName"], $this->_infoArr[$i]["instrLastName"], $conn);
        } catch (Exception $e){
          if ($e->getCode() == 1){
            // no instructor found
            $instr = new Instructor();
            $instr->setFirstName($this->_infoArr[$i]["instrFirstName"]);
            $instr->setLastName($this->_infoArr[$i]["instrLastName"]);
            $instr->setDeptId($course->getDeptId());
            $instr->save($conn);
          } else {
            // TODO: big problem, duplicate instructors found
            // log error and move on
            continue;
          }
        }
        
        // create CourseInstructorAssociation if it doesn't exist
        try {
          $assoc = CourseInstructorAssociationPeer::findForYearAndInstructorIdAndCourseId($this->_year, $course->getId(), $instr->getId(), $conn);
        } catch (Exception $e){
          if ($e->getCode() == 1){
            // create new object
            $assoc = new CourseInstructorAssociation();
            $assoc->setYear($this->_year);
            $assoc->setCourseId($course->getId());
            $assoc->setInstructorId($instr->getId());
            $assoc->save($conn);
          } else {
            // TODO: big problem, duplicate assocs found
            // log error and move on
            continue;
          }
        }
        
        // we can now save the real rating data
        $ratingArr = $this->_ratingArr[$i];
        foreach ($ratingArr as $fieldId => $data){
          foreach ($data as $rating => $number){
            $ratingObj = new AutoCourseRating();
            $ratingObj->setFieldId($fieldId);
            $ratingObj->setRating($rating);
            $ratingObj->setNumber($number);
            $ratingObj->setImportDt($dt);
            $ratingObj->setCourseInsId($assoc->getId());
            $ratingObj->save();
          }
        }
        
      }
    }
    else
    {
      throw new Exception("readCsv method has not been called.");
    }
  }
  
  private function interpretData($rawData, $rowNum)
  {
    $totCol = count($rawData);
    for ($i=0; $i<$totCol; $i++)
    {
      $importMapping = $this->_mappingArr[$i];
      switch ($importMapping->getMapping())
      {
        case EnumItemPeer::MAPPING_COURSE_CODE:
          $this->_infoArr[$rowNum]["courseCode"] = $rawData[$i];
          break;
        case EnumItemPeer::MAPPING_COURSE_NAME:
          $this->_infoArr[$rowNum]["courseName"] = $rawData[$i];
          break;
        case EnumItemPeer::MAPPING_INSTRUCTOR_NAME:
          $strArr = split(",", $rawData[$i]);
          $this->_infoArr[$rowNum]["instrLastName"] = trim($strArr[0]);
          $this->_infoArr[$rowNum]["instrFirstName"] = trim($strArr[1]);
          break;
        case EnumItemPeer::MAPPING_NUMBER_ENROLLED:
          $this->_infoArr[$rowNum]["enrolled"] = $rawData[$i];
          break;
        case EnumItemPeer::MAPPING_NUMBER_RESPONSE:
          $this->_infoArr[$rowNum]["response"] = $rawData[$i];
          break;
        case EnumItemPeer::MAPPING_QUESTION:
          $ratingField = $importMapping->getRatingField();
          $this->_ratingArr[$rowNum][$ratingField->getId()][$importMapping->getQuestionRating()] = $rawData[$i];
          break;
        default:
          continue;
      }
    }
  }
  
  private function getMappingData()
  {    
    $conn = Propel::getConnection();
    $c = new Criteria();
    $c->add(ImportMappingPeer::IMPORT_FILE_TYPE, EnumItemPeer::CSV_TYPE);
    $c->addAscendingOrderByColumn(ImportMappingPeer::COLUMN);
    
    return ImportMappingPeer::doselect($c, $conn);
  }
}
