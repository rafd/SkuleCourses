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
        $token=="DELETE" or $token=="UPDATE" or $token=="TABLE" or $token=="SELECT"
        or $token=="EXEC")
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
      case 0:
        return "All";
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

  public static function isLoggedIn(sfWebRequest $request)
  {
    return ($request->getCookie("username") && $request->getCookie("sid"));
  }

  public static function translateTerm($term)
  {
    switch ($term)
    {
      case 1:
        return "Winter";
      case 5:
        return "Summer";
      case 9:
        return "Fall";
      default:
        throw new Exception("unknown term");
    }
  }


  /**
   * Finds the mean value from an array, with indices being values and
   * associated values being weights
   * e.g. {1=>31, 2=>53, 3=>15}
   *
   * @param       int $minIndex start index (min value)
   *              int $maxIndex end index (max value)
   *              array $array the array being used
   * @return      the weighted mean
   */
  public static function findMean($minIndex, $maxIndex, $array)
  {
    $total = 0;
    $weight = 0;
    for ($i=$minIndex; $i<$maxIndex; $i++){
      $total += $array[$i] * $i;
      $weight += $array[$i];
    }
    return $total / $weight;
  }

  /**
   * Finds the median value from an array with indices being values and
   * associated values being weights
   * e.g. {1=>31, 2=>53, 3=>15}
   *
   * @param       int $minIndex start index (min value)
   *              int $maxIndex end index (max value)
   *              array $array the array being used
   * @return      the median value
   */
  public static function findMedian($minIndex, $maxIndex, $array)
  {
    $total = 0;
    for ($i=$minIndex; $i<$maxIndex; $i++){
      $total += $array[$i];
    }
    $med = ($total+1)/2;

    $total = 0;
    for ($i=$minIndex; $i<=$maxIndex; $i++){
      $total += $array[$i];
      if (($total+0.5) == $med) {
        return ($i*2+1)/2;
      } else if ($total >= $med) {
        return $i;
      }
    }
  }

  /**
   * This function is called from event handler in the front controller to realize
   * custom php error handling (not sf app exception)
   */
  public static function errorHandler($errno, $errstr, $errfile, $errline)
  {
    $dt = date("Y-m-d, H:i:s");
    $msg = $dt." - [error ".$errno." at line ".$errline." in ".$errfile."] ".$errstr;

    switch ($errno) {
      case E_WARNING:
        self::sendEmailNotice($msg);
        break;
      case E_USER_ERROR:
        // cascade down to E_ERROR
      case E_ERROR:
        self::sendEmailNotice($msg);
        sfcontext::getInstance()->getActionStack()->getFirstEntry()->getActionInstance()->forward("error", "error500");
        break;
    }
  }

  public static function sendEmailNotice($msg)
  {
    // register email notification parameters
    include(sfContext::getInstance()->getConfigCache()->checkConfig('config/skuleGlobal.yml'));

    $connection = new Swift_Connection_SMTP($mailNotificationParams['sender_smtp'], 465,
      ($mailNotificationParams['sender_ssl']?Swift_Connection_SMTP::ENC_SSL:Swift_Connection_SMTP::ENC_OFF));
    $connection->setUsername($mailNotificationParams['sender_username']);
    $connection->setPassword($mailNotificationParams['sender_password']);

    $mailer = new Swift($connection);
    $message = new Swift_Message("SkuleCourses PHP Error", $msg);

    $recipients = new Swift_RecipientList();
    foreach ($mailNotificationParams['receiver'] as $address){
      $recipients->addTo($address);
    }

    $mailer->send($message, $recipients, $mailNotificationParams['sender_address']);
    $mailer->disconnect();
  }
}