<?php

class Exam extends BaseExam
{
  /**
   * Checks if file path associated with this object actually exists
   * 
   * @return      True if file and path is valid
   */
  public function fileExist()
  {
    $filePath = $this->getFilePath();
    return file_exists($filePath);
  }
  
  /**
   * Returns the file size of the file associated with this object
   *
   */
  public function fileSize()
  {
    return filesize($this->getFilePath());
  }
}
