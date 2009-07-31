<?php

class importLogic
{
  // _ratingArr[rowNumber][ratingField][rating] = number of people
  private $_ratingArr;
  // _infoArr[rowNumber]["courseCode", etc] = datum
  private $_infoArr;
  // _mappingArr[columnNumber] = ImportMapping obj
  private $_mappingArr;
  
  public function readCsv($filePath)
  {
    unset($this->_ratingArr);
    unset($this->_infoArr);
    
    $this->_mappingArr = $this->getMappingData();
    
    $rowNum = 0;
    $fh = fopen($filePath, "r");
    while (($data = fgetcsv($fh, 0, ",")) !== FALSE)
    {
      $this->interpretData($data, $rowNum);
      $rowNum++;
    }
  }
  
  public function saveToDatabase()
  {
    if (isset($this->_infoArr) && isset($this->_mappingArr))
    {
      
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
        case EnumItemPeer::MAPPING_INSTRUCTOR_NAME:
          $strArr = split(",", $rawData[$i]);
          $this->_infoArr[$rowNum]["instrLastName"] = trim($strArr[0]);
          $this->_infoArr[$rowNum]["instrFirstName"] = trim($strArr[1]);
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
