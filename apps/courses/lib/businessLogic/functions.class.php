<?PHP

class helperFunctions
{
  /**
   * Searches a string for potentially malicious keywords that could cripple a database
   *
   * @param       string $in String to be searched
   * @return      True if keywords found, False otherwise
   */
  public static function isMaliciousString($in){
    $string = strtoupper($in);
    $token = strtok($string, " ");
    while ($token !== false) 
    {
      if ($token=="DROP" or $token=="ALTER" or $token=="CREATE" or $token=="INSERT" or 
        $token=="DELETE" or $token=="UPDATE" or $token=="TABLE" or $token=="SELECT")
      {
        return true;
      }
      $token = strtok(" ");
    }
      return false;
  }
  
  public static function getYearOfStudy($numerical)
  {
    switch ($numerical)
    {
      case 1:
        return "First Year";
      case 2:
        return "Second Year";
      case 3:
        return "Third Year";
      case 4:
        return "Fourth Year";
    }
  }
  
  public static function isLoggedIn()
  {
    return true;
  }
}