<?PHP

/**
 * Global class containing static helper functions
 * @author Jimmy
 *
 */
class helperFunctions
{
  /**
   * Searches a string for potentially malicious keywords that could cripple a database
   *
   * @param       string $in String to be searched
   * @return      True if keywords found, False otherwise
   */
  //TODO: create a white list instead of a limited black list. this logic can easily be broken
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
    // FIXME may also need to check what type of user it is
    return $request->getCookie("username");
  }

  
  const WINTER = 1;
  const SUMMER = 5;
  const FALL = 9;
  
  /**
   * Translates the raw database year into something more conventional
   *
   * @param       raw year e.g. 20095
   * @return      the translated year string e.g. 2009 Summer
   */
  public static function translateTerm($year)
  {
    $actYear = substr($year, 0, 4);
    $term = substr($year, 4);
    switch ($term)
    {
      case self::WINTER:
        return $actYear." Winter";
      case self::SUMMER:
        return $actYear." Summer";
      case self::FALL:
        return $actYear." Fall";
      default:
        throw new Exception("unknown term");
    }
  }
  
  
  const MONDAY = 1;
  const TUESDAY = 2;
  const WEDNESDAY = 3;
  const THURSDAY = 4;
  const FRIDAY = 5;
  const SATURDAY = 6;
  const SUNDAY = 7;

  public static function translateWeekDayAbbrv($abbrv){
    switch ($abbrv){
      case "M":
        return self::MONDAY;
      case "T":
        return self::TUESDAY;
      case "W":
        return self::WEDNESDAY;
      case "R":
        return self::THURSDAY;
      case "F":
        return self::FRIDAY;
      case "S":
        return self::SATURDAY;
      case "U":
        return self::SUNDAY;
      default:
        throw new Exception("unknown weekday");
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
   * Find the sum from start to end. If no array is passed in, the
   * indices are summed
   * @param $start Starting index (an integer)
   * @param $end Ending index (an integer)
   * @param $array Array to be summed
   * @return unknown_type
   */
  public static function sum($start, $end, $array=null){
    if (!is_int($start) || !is_int($end)) throw new Exception("Start or end not integers");
    if ($end<$start) throw new Exception("The ending index is smaller than the starting index $end");
    
    $sum = 0;
    if (isset($array)){
      for ($i=$start; $i<=$end; $i++){
        $sum += $array($i);
      }
    } else {
      for ($i=$start; $i<=$end; $i++){
        $sum += $i;
      }
    }
    
    return $sum;
  }

  /**
   * This function is called from event handler in the front controller to realize
   * custom php error handling (not sf app exception)
   */
  //TODO: move this method to an app specific class
  public static function errorHandler($errno, $errstr, $errfile, $errline)
  {
    $dt = date(skuleadminConst::TIMESTAMP_FORMAT);
    $msg = $dt." - [error ".$errno." at line ".$errline." in ".$errfile."] ".$errstr;

    switch ($errno) {
      case E_WARNING:
        self::sendEmailNotice("SkuleCourses PHP Error", $msg);
        break;
      case E_USER_ERROR:
        // cascade down to E_ERROR
      case E_ERROR:
        self::sendEmailNotice("SkuleCourses PHP Error", $msg);
        sfcontext::getInstance()->getActionStack()->getFirstEntry()->getActionInstance()->forward("error", "error500");
        break;
    }
  }
  
  public static function getExamTypeAbbr($type)
  {
    switch ($type) {
      case EnumItemPeer::TEST:
        return "ts";
      case EnumItemPeer::EXAM:
        return "exam";
      case EnumItemPeer::QUIZ:
        return "qs";
    }
  }
  
  public static function getUserType($type)
  {
    switch ($type){
      case EnumItemPeer::USER_ADMIN:
        return "Admin";
      case EnumItemPeer::USER_GUEST:
        return "Guest";
      case EnumItemPeer::USER_MODERATOR:
        return "Moderator";
      case EnumItemPeer::USER_NORMAL:
        return "Normal";
    }
  }
  
  /**
   * Send email to destinations as specified using the system default 
   * email address
   * @param $toEmailArr An array of destination emails
   * @param $subject
   * @param $msg
   * @return unknown_type
   */
  public static function sendEmail($toEmailArr, $subject, $msg)
  {
    // register email notification parameters
    include(sfContext::getInstance()->getConfigCache()->checkConfig('config/skuleGlobal.yml'));

    $connection = new Swift_Connection_SMTP($mailNotificationParams['sender_smtp'], 465,
      ($mailNotificationParams['sender_ssl']?Swift_Connection_SMTP::ENC_SSL:Swift_Connection_SMTP::ENC_OFF));
    $connection->setUsername($mailNotificationParams['sender_username']);
    $connection->setPassword($mailNotificationParams['sender_password']);

    $mailer = new Swift($connection);
    $message = new Swift_Message($subject, $msg);

    $recipients = new Swift_RecipientList();
    foreach ($toEmailArr as $address){
      $recipients->addTo($address);
    }

    $mailer->send($message, $recipients, $mailNotificationParams['sender_address']);
    $mailer->disconnect();
  }

  /**
   * Used for sending errors/notices/warnings to a list of prescribed destinations
   * @param $subject
   * @param $msg
   * @return unknown_type
   */
  public static function sendEmailNotice($subject, $msg)
  {
    // register email notification parameters
    include(sfContext::getInstance()->getConfigCache()->checkConfig('config/skuleGlobal.yml'));

    $connection = new Swift_Connection_SMTP($mailNotificationParams['sender_smtp'], 465,
      ($mailNotificationParams['sender_ssl']?Swift_Connection_SMTP::ENC_SSL:Swift_Connection_SMTP::ENC_OFF));
    $connection->setUsername($mailNotificationParams['sender_username']);
    $connection->setPassword($mailNotificationParams['sender_password']);

    $mailer = new Swift($connection);
    $message = new Swift_Message($subject, $msg);

    $recipients = new Swift_RecipientList();
    foreach ($mailNotificationParams['receiver'] as $address){
      $recipients->addTo($address);
    }

    $mailer->send($message, $recipients, $mailNotificationParams['sender_address']);
    $mailer->disconnect();
  }
}