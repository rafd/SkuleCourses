<?php

class exportLogic
{
  private $_dataArr;
  
  /**
   * The param $dataArr must have the following structure:
   * $dataArr = (1=>array(columnName=>value, columnName=>value...), 2=>array(...))
   *
   * @param       array $dataArr data array to be converted to csv
   */
  public function __construct($dataArr)
  {
    $this->_dataArr = $dataArr;
  }
  
  public function addGraphics()
  {
    
  }
  
  /**
   * Exports $dataArr into csv as specified by the $fileName
   *
   * @param       string $fileName name, extension and path of the file to be exported
   * @return      a javascript hook used for generating popup to get the csv file
   */
  public function exportToCsv($fileName)
  {
    // parse dataArr to csv
    $csvOut = "";
    foreach ($dataArr as $arr)
    {
      $firstInList = true;
      foreach ($arr as $colName => $value)
      {
        if (!$firstInList) $csvOut.=',';
        $firstInList = false;
        
        $csvOut .= '"'.$value.'"';
      }
      $csvOut .= "\n";
    }
    
    // write to file
    if (file_exists($fileName)) unlink($fileName);
    $file = fopen($fileName, "w");
    fwrite($file, $csvOut);
    fclose($file);
    
    return "<script type='text/javascript'>window.open('".$fileName."', 'CSV Export')</script>";
  }
  
  public function exportToPdf()
  {
    
  }
}